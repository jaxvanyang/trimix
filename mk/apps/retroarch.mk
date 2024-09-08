# RetroArch

RETROARCH = Apps/RetroArch

.PHONY: install-retroarch uninstall-retroarch

install-retroarch: ${CROSSMIX}/${RETROARCH} ${prefix}
	rm -rf ${prefix}/${RETROARCH}
	mkdir -p ${prefix}/${RETROARCH}
	cp -rT $< ${prefix}/${RETROARCH}

uninstall-retroarch: ${prefix}/${RETROARCH}
	rm -rf $^
