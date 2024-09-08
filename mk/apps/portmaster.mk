# PortMaster: the ultimate port manager.

PORTMASTER = Apps/PortMaster

.PHONY: install-portmaster uninstall-portmaster

install-portmaster: ${CROSSMIX}/${PORTMASTER} ${prefix}
	rm -rf ${prefix}/${PORTMASTER}
	mkdir -p ${prefix}/${PORTMASTER}
	cp -rT $< ${prefix}/${PORTMASTER}

uninstall-portmaster: ${prefix}/${PORTMASTER}
	rm -rf $^
