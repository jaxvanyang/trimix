# Restart device

REBOOT = Apps/Reboot

.PHONY: install-reboot uninstall-reboot

install-reboot: ${CROSSMIX}/${REBOOT} ${prefix}
	rm -rf ${prefix}/${REBOOT}
	mkdir -p ${prefix}/${REBOOT}
	cp -rT $< ${prefix}/${REBOOT}

uninstall-reboot: ${prefix}/${REBOOT}
	rm -rf $^
