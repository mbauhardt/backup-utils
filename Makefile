PREFIX ?= /usr/local
XDG_CONFIG_DIR ?= ${HOME}/.config

install:
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f incremental-rsync ${DESTDIR}${PREFIX}/bin

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/incremental-rsync

configure:
	mkdir -p ${XDG_CONFIG_DIR}/rbackup
	cp daily.conf ${XDG_CONFIG_DIR}/rbackup/
