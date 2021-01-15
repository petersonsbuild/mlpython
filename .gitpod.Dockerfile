FROM gitpod/workspace-full

# add anaconda prerequisites
RUN sudo apt-get update -y \
&& sudo apt-get install -y \
libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6

# copy install Anaconda script
RUN wget https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh \
&& bash Anaconda3-2020.11-Linux-x86_64.sh -b
