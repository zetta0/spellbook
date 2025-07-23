# Spellbook

Making a personalized CTF/Professional pentesting Docker image for portability and ease of use.

To build the image locally simple run:

```bash
./build.sh
```

Running the following command allows for X11 display from the docker environment but first you must allow connections to your X server with:

```bash
xhost +local:docker
```

Then running the following the command allows us to pass our display env
```bash
docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix spellbook
```
List of tools so far:

- amass 
- curl 
- dirsearch 
- ffuf 
- firefox
- gdb 
- git 
- gobuster 
- httpx
- impacket
- iputils-ping 
- metasploit-framework 
- neovim 
- net-tools 
- netexec
- nmap 
- nuclei
- peass 
- pipx 
- pwndbg
- python3 
- python3-pip 
- seclists 
- sliver 
- sqlmap 
- subfinder
- tmux 
- wget 
- zsh 
