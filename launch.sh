#! /bin/bash
IMAGE="gpt-neox"
CONTAINER="gpt-neox3"
sudo docker run -tid \
     --privileged \
     --gpus all \
     -v /data:/data \
     -v /var/data:/var/data \
     --shm-size=128gb \
     --network=host \
     --name ${CONTAINER} \
     ${IMAGE} /bin/bash

# -p 8888:8888 \
# --shm-size=64gb \
