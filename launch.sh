#! /bin/bash
IMAGE="gpt-neox"
CONTAINER="gpt-neox"
sudo docker run -tid \
     --privileged \
     --gpus all \
     --shm-size=64gb \
     -v /data:/data \
     -p 8888:8888 \
     --name ${CONTAINER} \
     ${IMAGE} /bin/bash
