PREFIX ?= /usr/local
XDG_CONFIG_DIR ?= ${HOME}/.config

install:
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f yesterday ${DESTDIR}${PREFIX}/bin

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/yesterday

configure:
	mkdir -p ${XDG_CONFIG_DIR}/yesterday
	cp user.conf ${XDG_CONFIG_DIR}/yesterday/
