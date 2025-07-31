#!/bin/bash

pwndbg(){
	git clone https://github.com/pwndbg/pwndbg /opt/pwndbg && cd /opt/pwndbg && ./setup.sh
	cp /root/sources/.gdbinit /root/.gdbinit
}

sharpcollection(){
	git clone https://github.com/Flangvik/SharpCollection.git /opt/SharpCollection
}

gef(){
	mkdir -p /opt/gef
 	wget https://gef.blah.cat/py -O /opt/gef/gef.py
}

gitinstall(){
	pwndbg
 	gef
	sharpcollection
}
