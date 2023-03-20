#! /bin/bash
IMAGE="gpt-neox"
CONTAINER="gpt-neox"
sudo docker run -tid \
     --privileged \
     --gpus all \
     -v /data:/data \
     --shm-size=64gb \
     --network=host \
     --name ${CONTAINER} \
     ${IMAGE} /bin/bash

# -p 8888:8888 \
# --shm-size=64gb \
