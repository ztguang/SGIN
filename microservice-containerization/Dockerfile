FROM python:3.11-slim

RUN rm -f /etc/apt/sources.list.d/* && \
    echo "deb https://mirrors.tuna.tsinghua.edu.cn/debian/ bookworm main contrib non-free non-free-firmware" > /etc/apt/sources.list.d/debian.list && \
    echo "deb https://mirrors.tuna.tsinghua.edu.cn/debian/ bookworm-updates main contrib non-free non-free-firmware" >> /etc/apt/sources.list.d/debian.list && \
    echo "deb https://mirrors.tuna.tsinghua.edu.cn/debian/ bookworm-backports main contrib non-free non-free-firmware" >> /etc/apt/sources.list.d/debian.list && \
    echo "deb https://security.debian.org/debian-security bookworm-security main contrib non-free non-free-firmware" >> /etc/apt/sources.list.d/debian.list

RUN apt-get update && apt-get install -y --no-install-recommends \
    libopencv-dev \
    iproute2 net-tools iperf3 iputils-ping vim bash lsof mptcpize \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY yolo11_detect_service.py /app/

RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple && \
    pip install --no-cache-dir \
    ultralytics \
    opencv-python \
    fastapi \
    uvicorn \
    python-multipart \
    torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cpu

EXPOSE 8000
CMD ["mptcpize", "run", "uvicorn", "yolo11_detect_service:app", "--host", "0.0.0.0", "--port", "8000"]
