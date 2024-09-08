# Update CrossMix from internet

OTA_UPDATE = Apps/OTA-update

.PHONY: install-ota-update uninstall-ota-update

install-ota-update: ${CROSSMIX}/${OTA_UPDATE} ${CROSSMIX}/${TERMINAL} ${prefix}
	rm -rf ${prefix}/${OTA_UPDATE}
	mkdir -p ${prefix}/${OTA_UPDATE}
	cp -rT $< ${prefix}/${OTA_UPDATE}
	@# make it self-contained
	sed -i 's#/Terminal/#/OTA-update/#' ${prefix}/${OTA_UPDATE}/launch.sh
	cp ${CROSSMIX}/${TERMINAL}/SimpleTerminal ${prefix}/${OTA_UPDATE}

uninstall-ota-update: ${prefix}/${OTA_UPDATE}
	rm -rf $^
