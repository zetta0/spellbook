#!/bin/bash

pwndbg(){
	git clone https://github.com/pwndbg/pwndbg && cd pwndbg && ./setup.sh
}

sharpcolleciton(){
	git clone https://github.com/Flangvik/SharpCollection.git /opt/SharpCollection

gitinstall(){
	pwndbg
	sharpcollection
}
