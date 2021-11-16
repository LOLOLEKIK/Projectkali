# Kali Linux (Rolling) Docker Image
# 11/2021

##
# Buld the image with:
#   $ docker build -t lololekali .
#
# Start a container for the first time from a built image with:
#   $ docker run -ti --name lololekali -h kali lololekali
#
# After the first run, start the image with:
#   $ docker start -ai lololekali

FROM kalilinux/kali-rolling
MAINTAINER Loris THIEBAUT  <loris.thiebautgmail.com>


# From the upstream docker image
#RUN echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" > /etc/apt/sources.list && \
#    echo "deb-src http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list


# Let the container know there will be no TTY
ENV DEBIAN_FRONTEND=noninteractive


# Get the latest everything
RUN apt update && apt -yqq install kali-linux-headless

# Install large tools
RUN apt update && apt -y install kali-tools-vulnerability kali-tools-web kali-tools-database kali-tools-passwords \
    kali-tools-exploitation kali-tools-social-engineering kali-tools-post-exploitation kali-tools-forensics kali-tools-reporting kali-tools-information-gathering metasploit-framework

# Install Other tools
RUN apt-get install -y \
    gdb

# Install utils
RUN apt-get install -y \
    vim \
    git nano inetutils-*

# Setup gdb-peda
RUN git clone https://github.com/longld/peda.git ~/peda && \
    echo "source ~/peda/peda.py" >> ~/.gdbinit

#setup impacket
RUN apt install python3-pip
RUN git clone https://github.com/SecureAuthCorp/impacket.git /opt/impacket
RUN pip3 install -r /opt/impacket/requirements.txt
RUN cd /opt/impacket/
RUN python3 ./setup.py install
COPY /usr/share/kaliproject/ ~/.bashrc.update
RUN mv ~/.bashrc ~/.bashrc.old
RUN ~/.bashrc.update ~/.bashrc
CMD ["/bin/bash"]
