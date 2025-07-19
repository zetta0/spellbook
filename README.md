# Spellbook

Making a personalized CTF/Professional pentesting Docker image for portability and ease of use.


Running it with the following command allows for X11 display from the docker environment but first you must allow connections to your X server with:

```bash
xhost +local:docker
```

Then running the following the command allows us to pass our display env

```bash
docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix spellbook
```
List of tools so far:

- nmap 
- ffuf 
- amass 
- dirsearch 
- sqlmap 
- gobuster 
- seclists 
- git 
- python3 
- python3-pip 
- curl 
- wget 
- zsh 
- net-tools 
- iputils-ping 
- tmux 
- neovim 
- peass 
- sliver 
- metasploit-framework 
- gdb 
- pipx 
- firefox
- pwndbg
- netexec
- impacket
