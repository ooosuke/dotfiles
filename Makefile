all: init link defaults install

init:
	bin/init.sh

link:
	bin/link.sh

defaults:
	bin/defaults.sh

install:
	bin/install.sh