vendor=`glxinfo | grep vendor | grep OpenGL | awk '{ print $4 }'`

if [ $vendor == "NVIDIA" ]; then
    (cd ./Aa_nvidia_opengl_cuda; ./01_build_image.sh)
else
    (cd ./Ab_opengel_direct_rendering; ./01_build_image.sh)
fi
