#!/bin/bash

pwndbg(){
	git clone https://github.com/pwndbg/pwndbg /opt/pwndbg && cd /opt/pwndbg && ./setup.sh
	cp /root/sources/.gdbinit /root/.gdbinit
}

sharpcollection(){
	git clone https://github.com/Flangvik/SharpCollection.git /opt/SharpCollection
}


gitinstall(){
	pwndbg
	sharpcollection
}
