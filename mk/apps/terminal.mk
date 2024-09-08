# SimpleTerminal

TERMINAL = Apps/Terminal

.PHONY: install-terminal uninstall-terminal

install-terminal: ${CROSSMIX}/${TERMINAL} ${prefix}
	rm -rf ${prefix}/${TERMINAL}
	mkdir -p ${prefix}/${TERMINAL}
	cp -rT $< ${prefix}/${TERMINAL}

uninstall-terminal: ${prefix}/${TERMINAL}
	rm -rf $^
