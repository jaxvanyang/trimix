# DinguxCmder

FILEMANAGER = Apps/FileManager

.PHONY: install-filemanager uninstall-filemanager

install-filemanager: ${CROSSMIX}/${FILEMANAGER} ${prefix}
	rm -rf ${prefix}/${FILEMANAGER}
	mkdir -p ${prefix}/${FILEMANAGER}
	cp -rT $< ${prefix}/${FILEMANAGER}

uninstall-filemanager: ${prefix}/${FILEMANAGER}
	rm -rf $^
