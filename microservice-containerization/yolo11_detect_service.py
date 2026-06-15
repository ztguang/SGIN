from fastapi import FastAPI, UploadFile, File, BackgroundTasks
from starlette.responses import StreamingResponse
import os
import shutil
import glob
from pathlib import Path
from zipfile import ZipFile
from io import BytesIO
import cv2
import torch
from ultralytics import YOLO

app = FastAPI(title="YOLO11 Detection Microservice")

# ==================== 设备选择 ====================
device = 'cuda' if torch.cuda.is_available() else 'cpu'
print(f"使用设备: {device.upper()}")

# ==================== 配置 ====================
MANGO_MODEL_PATH = os.environ.get("MANGO_MODEL_PATH", "/app/best-mango.pt")
REMOTE_MODEL_PATH = os.environ.get("REMOTE_MODEL_PATH", "/app/best-VisDrone.pt")
SAVE_DIR = os.environ.get("SAVE_DIR", "/app/outputs")
CONF_THRESHOLD = float(os.environ.get("CONF_THRESHOLD", 0.25))

os.makedirs(SAVE_DIR, exist_ok=True)

# ==================== 辅助函数 ====================
def draw_boxes(img, results, model):
    for box in results.boxes:
        cls = int(box.cls)
        conf = float(box.conf)
        x1, y1, x2, y2 = map(int, box.xyxy[0])
        cv2.rectangle(img, (x1, y1), (x2, y2), (0, 255, 0), 1)
        cv2.putText(img, f"{model.names[cls]} {conf:.2f}", (x1, y1 - 10),
                    cv2.FONT_HERSHEY_SIMPLEX, 0.7, (0, 255, 0), 1)

async def detect_single_image(model, image_path: str, original_filename: str, conf: float, output_dir: str, prefix: str):
    """对单张图片进行检测，保存到指定 output_dir"""
    results = model.predict(source=image_path, save=False, device=device, conf=conf)
    detected = results[0]

    # 绘制
    img = cv2.imread(image_path)
    draw_boxes(img, detected, model)

    # 保存图片
    output_img_name = f"detected_{prefix}_{original_filename}"
    cv2.imwrite(os.path.join(output_dir, output_img_name), img)

    # 保存 txt
    txt_base = Path(original_filename).stem
    output_txt_name = f"detected_{prefix}_{txt_base}.txt"
    lines = ["检测结果："]
    for box in detected.boxes:
        cls = int(box.cls)
        conf = float(box.conf)
        xyxy = box.xyxy[0].tolist()
        lines.append(f"类别: {model.names[cls]}, 置信度: {conf:.2f}, 边界框: {xyxy}")

    with open(os.path.join(output_dir, output_txt_name), 'w', encoding='utf-8') as f:
        f.write('\n'.join(lines))

# ==================== 批量 ZIP 处理 ====================
async def process_batch_zip(model_path: str, zip_bytes: bytes, zip_filename: str, conf: float, prefix: str):
    stem = Path(zip_filename).stem
    temp_zip_path = f"/tmp/{zip_filename}"
    extract_dir = f"/tmp/{stem}_extracted"
    results_dir = os.path.join(SAVE_DIR, f"detected_{prefix}_{stem}")

    # 保存上传的zip
    with open(temp_zip_path, "wb") as f:
        f.write(zip_bytes)

    # 解压
    os.makedirs(extract_dir, exist_ok=True)
    with ZipFile(temp_zip_path, 'r') as zip_ref:
        zip_ref.extractall(extract_dir)

    # 加载模型（批量只需加载一次）
    model = YOLO(model_path)

    # 查找所有图片
    image_extensions = ["*.jpg", "*.jpeg", "*.png", "*.bmp", "*.tif", "*.tiff"]
    image_list = []
    for ext in image_extensions:
        image_list.extend(glob.glob(os.path.join(extract_dir, "**", ext), recursive=True))

    os.makedirs(results_dir, exist_ok=True)

    for img_path in image_list:
        original_name = os.path.basename(img_path)
        await detect_single_image(model, img_path, original_name, conf, results_dir, prefix)

    # 打包结果
    final_zip_name = f"detected_{prefix}_{Path(zip_filename).name}"
    final_zip_path = os.path.join(SAVE_DIR, final_zip_name)

    with ZipFile(final_zip_path, 'w') as zipf:
        for root, _, files in os.walk(results_dir):
            for file in files:
                zipf.write(os.path.join(root, file), arcname=file)

    # 清理临时文件
    shutil.rmtree(extract_dir, ignore_errors=True)
    shutil.rmtree(results_dir, ignore_errors=True)
    os.remove(temp_zip_path)

    return final_zip_path

# ==================== 上传接口 ====================
@app.post("/upload/mango_image")
async def upload_mango(file: UploadFile = File(...)):
    contents = await file.read()
    filename = file.filename.lower()

    if filename.endswith('.zip'):
        final_zip_path = await process_batch_zip(MANGO_MODEL_PATH, contents, file.filename, CONF_THRESHOLD, "mango")
        return {
            "message": "批量芒果检测完成。使用原ZIP文件名下载结果ZIP。",
            "type": "batch",
            "download_url": f"/download/mango_image/{file.filename}"
        }
    else:
        # 单个文件处理
        temp_path = f"/tmp/{file.filename}"
        with open(temp_path, "wb") as f:
            f.write(contents)

        model = YOLO(MANGO_MODEL_PATH)
        await detect_single_image(model, temp_path, file.filename, CONF_THRESHOLD, SAVE_DIR, "mango")

        os.remove(temp_path)
        return {
            "message": "单个芒果检测完成。使用原文件名下载结果ZIP。",
            "type": "single",
            "download_url": f"/download/mango_image/{file.filename}"
        }

@app.post("/upload/remote_image")
async def upload_remote(file: UploadFile = File(...)):
    contents = await file.read()
    filename = file.filename.lower()

    if filename.endswith('.zip'):
        final_zip_path = await process_batch_zip(REMOTE_MODEL_PATH, contents, file.filename, CONF_THRESHOLD, "remote")
        return {
            "message": "批量遥感检测完成。使用原ZIP文件名下载结果ZIP。",
            "type": "batch",
            "download_url": f"/download/remote_image/{file.filename}"
        }
    else:
        # 单个文件处理
        temp_path = f"/tmp/{file.filename}"
        with open(temp_path, "wb") as f:
            f.write(contents)

        model = YOLO(REMOTE_MODEL_PATH)
        await detect_single_image(model, temp_path, file.filename, CONF_THRESHOLD, SAVE_DIR, "remote")

        os.remove(temp_path)
        return {
            "message": "单个遥感检测完成。使用原文件名下载结果ZIP。",
            "type": "single",
            "download_url": f"/download/remote_image/{file.filename}"
        }

# ==================== 下载接口（统一处理 single + batch） ====================
@app.get("/download/mango_image/{filename}")
async def download_mango(filename: str, background_tasks: BackgroundTasks):
    prefix = "mango"
    if filename.endswith('.zip'):
        # 批量：直接发送预生成的ZIP
        zip_path = os.path.join(SAVE_DIR, f"detected_{prefix}_{filename}")
        if not os.path.exists(zip_path):
            return {"error": "文件不存在"}

        def iterfile():
            with open(zip_path, "rb") as f:
                yield from f

        zip_base = Path(filename).stem
        response = StreamingResponse(
            iterfile(),
            media_type="application/zip",
            headers={"Content-Disposition": f"attachment; filename=detected_{prefix}_{zip_base}.zip"}
        )
        background_tasks.add_task(os.remove, zip_path)
        response.background = background_tasks
        return response
    else:
        # 单个：动态创建ZIP（包含jpg + txt）
        img_path = os.path.join(SAVE_DIR, f"detected_{prefix}_{filename}")
        txt_base = Path(filename).stem
        txt_path = os.path.join(SAVE_DIR, f"detected_{prefix}_{txt_base}.txt")

        if not (os.path.exists(img_path) and os.path.exists(txt_path)):
            return {"error": "文件不存在"}

        # 创建内存ZIP
        zip_buffer = BytesIO()
        with ZipFile(zip_buffer, "w") as zip_file:
            zip_file.write(img_path, os.path.basename(img_path))
            zip_file.write(txt_path, os.path.basename(txt_path))
        zip_buffer.seek(0)

        response = StreamingResponse(
            zip_buffer,
            media_type="application/zip",
            headers={"Content-Disposition": f"attachment; filename=detected_{prefix}_{txt_base}.zip"}
        )
        # 删除原文件
        background_tasks.add_task(os.remove, img_path)
        background_tasks.add_task(os.remove, txt_path)
        response.background = background_tasks
        return response

@app.get("/download/remote_image/{filename}")
async def download_remote(filename: str, background_tasks: BackgroundTasks):
    prefix = "remote"
    if filename.endswith('.zip'):
        # 批量：直接发送预生成的ZIP
        zip_path = os.path.join(SAVE_DIR, f"detected_{prefix}_{filename}")
        if not os.path.exists(zip_path):
            return {"error": "文件不存在"}

        def iterfile():
            with open(zip_path, "rb") as f:
                yield from f

        zip_base = Path(filename).stem
        response = StreamingResponse(
            iterfile(),
            media_type="application/zip",
            headers={"Content-Disposition": f"attachment; filename=detected_{prefix}_{zip_base}.zip"}
        )
        background_tasks.add_task(os.remove, zip_path)
        response.background = background_tasks
        return response
    else:
        # 单个：动态创建ZIP（包含jpg + txt）
        img_path = os.path.join(SAVE_DIR, f"detected_{prefix}_{filename}")
        txt_base = Path(filename).stem
        txt_path = os.path.join(SAVE_DIR, f"detected_{prefix}_{txt_base}.txt")

        if not (os.path.exists(img_path) and os.path.exists(txt_path)):
            return {"error": "文件不存在"}

        # 创建内存ZIP
        zip_buffer = BytesIO()
        with ZipFile(zip_buffer, "w") as zip_file:
            zip_file.write(img_path, os.path.basename(img_path))
            zip_file.write(txt_path, os.path.basename(txt_path))
        zip_buffer.seek(0)

        response = StreamingResponse(
            zip_buffer,
            media_type="application/zip",
            headers={"Content-Disposition": f"attachment; filename=detected_{prefix}_{txt_base}.zip"}
        )
        # 删除原文件
        background_tasks.add_task(os.remove, img_path)
        background_tasks.add_task(os.remove, txt_path)
        response.background = background_tasks
        return response

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)
