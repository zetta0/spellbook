FROM kalilinux/kali-rolling
LABEL maintainer="zetta@waifu.club"
ENV DEBIAN_FRONTEND=noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN=true

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
metasploit-framework


#Set Zsh as Default
RUN chsh -s $(which zsh)

WORKDIR /root

CMD [ "zsh" ]
