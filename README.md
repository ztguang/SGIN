# SGIN
Multi-Cluster System for Space-Ground Integration Network

Multi-cluster system simulation platform for SGIN includes: Debian-12 + Ubuntu-24.04 + Karmada-v1.10.3 + Kubernetes-v1.28.6 + KubeEdge-v1.17.0 + EdgeMesh-v1.17.0 + Calico-v3.28.0 + MPTCP-v1 + Quagga-v0.99

[1] The world's first to publicly offer a practically usable multi-cluster system simulation platform, where users can modify network topology and add or remove nodes based on their specific needs. This platform supports research in edge computing, service computing, network protocols, and AI edge computing (physical machines such as NVIDIA Jetson can be integrated into this platform).

[2] The world's first to research and successfully implement multipath data transmission technology among different node containers in K8S clusters.

[3] This platform (26 VDI files, totaling 520GB) can be downloaded from Baidu Netdisk:
https://pan.baidu.com/s/14OYD1oD8e9iLxjljxDkQjw?pwd=xu2c

# All original test data
All original test data can be obtained from:
https://pan.baidu.com/s/17qmAB5kGHQnWJSCrg1Ae-w?pwd=s73u

# How to run the multi-cluster system simulation platform for SGIN

cd SGIN-26vdi

chmod +x run-SGIN.sh

./run-SGIN.sh

NOTE: Before executing run-SGIN.sh, please replace the path /opt/k8s/vdi in the run-SGIN.sh file with the absolute path to your SGIN-26vdi folder.

# Microservice Containerization Design

To achieve efficient deployment and dynamic scheduling of the aerial small target detection module under a cloud-edge collaborative architecture, this paper designs and implements a dual-model object detection microservice based on YOLO11. This microservice supports two detection tasks: mango crop detection using best-mango.pt and remote sensing aerial small target detection using best-VisDrone.pt. Through containerized packaging, it enables seamless migration across edge nodes and the cloud, meeting the low-latency and high-reliability requirements for crop growth monitoring scenarios.

The microservice is built with the FastAPI framework to provide core web interfaces. It exposes the endpoints /upload/mango_image and /upload/remote_image for uploading single images or ZIP archives, and /download/mango_image/{filename} and /download/remote_image/{filename} for downloading results. Upon receiving a single JPG/JPEG/PNG/TIF image or a batch ZIP file, the server automatically identifies the appropriate model and invokes YOLO11 for inference. Detection results are drawn with green bounding boxes and annotated with category labels and confidence scores, while corresponding TXT result files are generated. For batch ZIP inputs, the server extracts the archive, processes all images, and repackages the detected images together with their TXT files into a file named detected_prefix_original.zip. For single images, a ZIP file with the same name is dynamically generated to maintain interface consistency. Temporary files are automatically cleaned up after detection to ensure efficient resource utilization.

The file yolo11_detect_service.py is the core implementation of the aerial small target detection microservice designed in this paper. Built with the FastAPI framework, it provides two upload interfaces (/upload/mango_image and /upload/remote_image) that accept single JPG/PNG/TIF images or batch ZIP archives. It automatically selects either the best-mango.pt model for mango crop detection or the best-VisDrone.pt model for remote sensing aerial small target detection, performs YOLO11 inference, draws green bounding boxes uniformly, and generates corresponding TXT result files. The service supports dynamic ZIP packaging for single images and direct return of processed batch ZIP files. Temporary files are cleaned up automatically after detection. Model paths, confidence thresholds, and output directories can be flexibly controlled through environment variables. The implementation also includes automatic CUDA/CPU device switching logic and integrates with mptcpize, allowing the microservice on edge nodes to directly utilize multipath transmission mechanisms. This significantly reduces end-to-end latency for uploading aerial data and downloading results, making it the key carrier code for containerized deployment of detection tasks in the cloud-edge collaborative platform.

To accommodate the resource constraints of edge nodes and multipath transmission requirements, the microservice adopts a lightweight containerized design. The Dockerfile uses python:3.11-slim as the base image (CPU-only version) to avoid the larger NVIDIA CUDA base image and reduce overall image size. Dependencies are accelerated via the Tsinghua mirror source, and only essential system packages (libopencv-dev, iproute2, mptcpize, etc.) and Python libraries (ultralytics, opencv-python, fastapi, uvicorn, and the CPU versions of torch, torchvision, and torchaudio) are included.
