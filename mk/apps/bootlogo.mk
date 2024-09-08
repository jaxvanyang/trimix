# Flash your own bootlogo

BOOTLOGO = Apps/BootLogo

.PHONY: install-bootlogo uninstall-bootlogo

install-bootlogo: ${CROSSMIX}/${BOOTLOGO} ${prefix}
	rm -rf ${prefix}/${BOOTLOGO}
	mkdir -p ${prefix}/${BOOTLOGO}
	cp -rT $< ${prefix}/${BOOTLOGO}

uninstall-bootlogo: ${prefix}/${BOOTLOGO}
	rm -rf $^
