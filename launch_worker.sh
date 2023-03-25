#! /bin/bash
IMAGE="gpt-neox"
CONTAINER="gpt-neox"
sudo docker run -tid \
     --privileged \
     --gpus all \
     -v /data:/data \
     -v /mnt/localdisk:/mnt/localdisk \
     --shm-size=2000gb \
     --network=host \
     --name ${CONTAINER} \
     ${IMAGE} bash -c "/usr/sbin/sshd -p 2222; bash"

# -p 8888:8888 \
# --shm-size=64gb \
