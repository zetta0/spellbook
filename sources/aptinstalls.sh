#!/bin/bash

aptinstall(){
	apt update && apt upgrade -y && \
	apt install -y \
	nmap \
	ffuf \
	amass \
	dirsearch \
	sqlmap \
	gobuster \
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
	pipx \
	firefox-esr \
	burpsuite \
	ruby \
	feroxbuster \
	windows-binaries \
 	file
}
