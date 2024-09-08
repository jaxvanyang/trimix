# Tools and system apps.

SYSTEMTOOLS = Apps/SystemTools

.PHONY: install-systemtools uninstall-systemtools

install-systemtools: ${CROSSMIX}/${SYSTEMTOOLS} ${prefix}
	rm -rf ${prefix}/${SYSTEMTOOLS}
	mkdir -p ${prefix}/${SYSTEMTOOLS}
	cp -rT $< ${prefix}/${SYSTEMTOOLS}

uninstall-systemtools: ${prefix}/${SYSTEMTOOLS}
	rm -rf $^
