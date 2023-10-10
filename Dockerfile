# Offical base image Source
FROM kalilinux/kali-rolling

# Default Working Directory
WORKDIR /root

# Run apt update to fetch the latest version of the packages available
RUN apt update && apt -y autoremove && apt clean

# set non interactive mode to avoid some package install prompts
ENV DEBIAN_FRONTEND=noninteractive 

# Install metapackage kali-linux-headless
RUN apt install kali-linux-headless -y

#Set Entry point
ENTRYPOINT ["/bin/bash"]
