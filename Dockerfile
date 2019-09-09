FROM nvidia/opengl:1.0-glvnd-devel

# We love UTF!
ENV LANG C.UTF-8

RUN set -x \
        && apt-get update \
        && apt-get upgrade -y \
        && apt-get install -y apt-transport-https ca-certificates \
        && apt-get install -y git vim htop sudo curl wget \
        && rm -rf /var/lib/apt/lists/*

ENV CUDA_VERSION 8.0.61
ENV CUDA_PKG_VERSION 8-0

# Addeding CUDA 8.0
RUN apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub

RUN echo "deb http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64 /" > /etc/apt/sources.list.d/cuda.list

RUN apt-get update && apt-get install -y --no-install-recommends \
        mesa-utils \
        cuda-nvrtc-$CUDA_PKG_VERSION \
        cuda-nvgraph-$CUDA_PKG_VERSION \
        cuda-cusolver-$CUDA_PKG_VERSION \
        cuda-cublas-8-0=8.0.61.2-1 \
        cuda-cufft-$CUDA_PKG_VERSION \
        cuda-curand-$CUDA_PKG_VERSION \
        cuda-cusparse-$CUDA_PKG_VERSION \
        cuda-npp-$CUDA_PKG_VERSION \
        cuda-cudart-$CUDA_PKG_VERSION && \
    ln -s cuda-8.0 /usr/local/cuda && \
    rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y --no-install-recommends \
        cuda-core-$CUDA_PKG_VERSION \
        cuda-misc-headers-$CUDA_PKG_VERSION \
        cuda-command-line-tools-$CUDA_PKG_VERSION \
        cuda-nvrtc-dev-$CUDA_PKG_VERSION \
        cuda-nvml-dev-$CUDA_PKG_VERSION \
        cuda-nvgraph-dev-$CUDA_PKG_VERSION \
        cuda-cusolver-dev-$CUDA_PKG_VERSION \
        cuda-cublas-dev-8-0=8.0.61.2-1 \
        cuda-cufft-dev-$CUDA_PKG_VERSION \
        cuda-curand-dev-$CUDA_PKG_VERSION \
        cuda-cusparse-dev-$CUDA_PKG_VERSION \
        cuda-npp-dev-$CUDA_PKG_VERSION \
        cuda-cudart-dev-$CUDA_PKG_VERSION \
        cuda-driver-dev-$CUDA_PKG_VERSION && \
    rm -rf /var/lib/apt/lists/*

ENV PATH /usr/local/nvidia/bin:/usr/local/cuda/bin:${PATH}
ENV LD_LIBRARY_PATH /usr/local/nvidia/lib:/usr/local/nvidia/lib64

RUN set -x \
        && apt-get update \
        && apt-get upgrade -y \
        && apt-get install -y libprotobuf-dev protobuf-compiler \
        && apt-get install -y python2.7 python-pip \
        && apt-get install -y ffmpeg \
        && apt-get install -y python-tk \
        && apt-get install -y python-opencv \
        && rm -rf /var/lib/apt/lists/*

RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
RUN apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654 

RUN apt-get update \
        && apt-get install -y ros-kinetic-desktop-full \
        && apt-get install -y python-rosinstall python-rosinstall-generator python-wstool build-essential \
        && rm -rf /var/lib/apt/lists/* \
        && rosdep init

RUN useradd -ms /bin/bash user \
    && echo "user:user" | chpasswd && adduser user sudo \
    && usermod -aG audio user
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

RUN apt-get update \
        && apt-get install -y tmux \
        && rm -rf /var/lib/apt/lists/*

USER user
RUN rosdep update \
        && echo "source /opt/ros/kinetic/setup.bash" >> /home/user/.bashrc



COPY ./scripts/init_commands.sh /scripts/init_commands.sh
RUN ["chmod", "+x", "/scripts/init_commands.sh"]

RUN git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack  \
        && git clone https://github.com/tmux-plugins/tmux-resurrect ~/.tmux-resurrect
COPY ./.tmux.conf /home/user/.tmux.conf

