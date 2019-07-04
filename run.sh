xhost +local:root
docker run -it \
    --env="DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    -v $(pwd)/catkin_ws:/root/catkin_ws \
    --name $2 \
    --privileged \
    --network host \
    --net host \
    $1
