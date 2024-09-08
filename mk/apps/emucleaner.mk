# Hide Emulators without roms in a subfolder

EMUCLEANER = Apps/EmuCleaner

.PHONY: install-emucleaner uninstall-emucleaner

install-emucleaner: ${CROSSMIX}/${EMUCLEANER} ${prefix}
	rm -rf ${prefix}/${EMUCLEANER}
	mkdir -p ${prefix}/${EMUCLEANER}
	cp -rT $< ${prefix}/${EMUCLEANER}

uninstall-emucleaner: ${prefix}/${EMUCLEANER}
	rm -rf $^
