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
