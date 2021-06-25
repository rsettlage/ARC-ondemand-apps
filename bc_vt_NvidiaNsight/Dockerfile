FROM accetto/ubuntu-vnc-xfce-firefox-g3:latest

#Update OS Env and add pkgs
RUN echo -e "headless\n" | sudo -S apt-get update \
  && echo -e "headless\n" | sudo -S apt install -y build-essential qtcreator qt5-default \
  && echo -e "headless\n" | sudo -S apt-get install -y firefox libcurl4-gnutls-dev libv8-dev libasound2 curl wget
  
# Create new Nsight directory and install
RUN echo -e "headless\n" | sudo -S mkdir -p /opt/Nsight 
RUN echo -e "headless\n" | sudo -S chmod -R 755 /opt 
RUN cd /opt/Nsight   
RUN wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-ubuntu2004.pin
RUN echo -e "headless\n" | sudo -S mv cuda-ubuntu2004.pin /etc/apt/preferences.d/cuda-repository-pin-600
RUN wget https://developer.download.nvidia.com/compute/cuda/11.3.1/local_installers/cuda-repo-ubuntu2004-11-3-local_11.3.1-465.19.01-1_amd64.deb
RUN echo -e "headless\n" | sudo -S  dpkg -i cuda-repo-ubuntu2004-11-3-local_11.3.1-465.19.01-1_amd64.deb
RUN echo -e "headless\n" | sudo -S apt-key add /var/cuda-repo-ubuntu2004-11-3-local/*.pub


# RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
RUN echo -e "headless\n" | sudo -S apt-get update \
  && echo -e "headless\n" | sudo -S DEBIAN_FRONTEND=noninteractive apt-get -y -q install cuda
