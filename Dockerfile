FROM kalilinux/kali-rolling
LABEL maintainer="zetta@waifu.club"
ENV DEBIAN_FRONTEND=noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN=true
ENV DISPLAY=:0
ENV PATH="/root/go/bin:/root/.local/bin:${PATH}"
RUN echo "nameserver 8.8.8.8" >> /etc/resolve.conf && echo "nameserver 1.1.1.1" >> /etc/resolve.conf
WORKDIR /root/sources
COPY sources /root/sources
RUN chmod +x installer.sh
RUN ./installer.sh aptinstall
RUN ./installer.sh goinstall
RUN ./installer.sh geminstall
RUN ./installer.sh gitinstall
RUN ./installer.sh pipxinstall
RUN pipx ensurepath
#Set Zsh as Default
RUN chsh -s $(which zsh)
WORKDIR /root

CMD ["zsh"]
