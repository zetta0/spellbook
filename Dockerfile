FROM kalilinux/kali-rolling
LABEL maintainer="zetta@waifu.club"
ENV DEBIAN_FRONTEND=noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN=true
ENV DISPLAY=:0
ENV PATH="/root/go/bin:${PATH}"
RUN echo "nameserver 8.8.8.8" >> /etc/resolve.conf && echo "nameserver 1.1.1.1" >> /etc/resolve.conf
WORKDIR /root/sources
COPY sources /root/sources
RUN chmod +x installer.sh
RUN ./installer.sh aptinstall
RUN ./installer.sh goinstall
#PwnDBG set up
RUN git clone https://github.com/pwndbg/pwndbg && cd pwndbg && ./setup.sh
#NetExec setup
RUN pipx install git+https://github.com/Pennyw0rth/NetExec
#Impacket
RUN pipx install impacket
#Set Zsh as Default
RUN chsh -s $(which zsh)

CMD ["zsh"]
