#!/bin/bash

pwndbg(){
	git clone https://github.com/pwndbg/pwndbg && cd pwndbg && ./setup.sh
}

gitinstall(){
	pwndbg
}
