# All RetroArch cores

.PHONY: install-all-cores uninstall-all-cores

uninstall-all-cores:
	rm -rf ${prefix}/${CORES}
