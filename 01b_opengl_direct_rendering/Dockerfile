# Specify base image
FROM ubuntu:16.04

USER root

# We love UTF!
ENV LANG C.UTF-8

# Set the environment to noninteractive (no user input)
ENV DEBIAN_FRONTEND noninteractive

# Install OpenGL packages
RUN set -x \
        && apt-get update \
        && apt-get install -y xserver-xorg-video-all libgl1-mesa-glx libgl1-mesa-dri \
        && rm -rf /var/lib/apt/lists/*

# Setup timezone
#RUN echo 'Etc/UTC' > /etc/timezone && \
    #    ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime && \
    #apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*

# Upgrade all existing packages
RUN set -x \
        && apt-get update \
        && apt-get upgrade -y

# Add some packages we need later on
RUN set -x \
        && apt-get install -y apt-transport-https ca-certificates git vim sudo htop curl wget mesa-utils \
        && apt-get install -y software-properties-common libnss3 dirmngr gnupg2 lsb-release tmux apt-utils \
        && apt-get install -y bash-completion

RUN set -x \
        && apt-get install -y libprotobuf-dev protobuf-compiler \
        && apt-get install -y python2.7 python-pip \
        && apt-get install -y tmux \
        && apt-get install -y ffmpeg \
        && apt-get install -y python-tk \
        && apt-get install -y python-opencv 

RUN apt-get update \
        && apt-get upgrade -y 

RUN rm -rf /var/lib/apt/lists/* 

RUN useradd -ms /bin/bash user \
    && echo "user:user" | chpasswd && adduser user sudo \
    && usermod -aG audio user
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

COPY ./scripts/init_commands.sh /scripts/init_commands.sh
RUN ["chmod", "+x", "/scripts/init_commands.sh"]

USER user
WORKDIR /home/user

RUN git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack  \
        && git clone https://github.com/tmux-plugins/tmux-resurrect ~/.tmux-resurrect
COPY --chown=user:user ./.tmux.conf /home/user/.tmux.conf

# Set some decent colors if the container needs to be accessed via /bin/bash.
RUN echo LS_COLORS=$LS_COLORS:\'di=1\;33:ln=36\' >> ~/.bashrc \
&& echo export LS_COLORS >> ~/.bashrc \
&& touch ~/.sudo_as_admin_successful # To surpress the sudo message at run.

RUN echo "export QT_X11_NO_MITSHM=1" >> ~/.bashrc

STOPSIGNAL SIGTERM

ENTRYPOINT ["/scripts/init_commands.sh"]
CMD /bin/bash
