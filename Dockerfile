FROM kalilinux/kali-rolling
LABEL maintainer="zetta@waifu.club"
ENV DEBIAN_FRONTEND=noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN=true

RUN echo "nameserver 8.8.8.8" >> /etc/resolve.conf && echo "nameserver 1.1.1.1" >> /etc/resolve.conf

RUN apt update && apt upgrade -y && \
apt install -y \
nmap \
ffuf \
amass \
dirsearch \
sqlmap \
gobuster \
sqlmap \
seclists \
git \
python3 \
python3-pip \
curl \
wget \
zsh \
net-tools \
iputils-ping \
tmux \
neovim \
peass \
sliver \
metasploit-framework \
gdb \
pipx

#PwnDBG set up
RUN git clone https://github.com/pwndbg/pwndbg && cd pwndbg && ./setup.sh

#NetExec setup
RUN pipx install git+https://github.com/Pennyw0rth/NetExec

#Impacket
RUN pipx install impacket

#Set Zsh as Default
RUN chsh -s $(which zsh)
WORKDIR /root

CMD ["zsh"]
