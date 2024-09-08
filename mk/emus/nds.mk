# N. NDS

NDS_EMU = Emus/NDS

.PHONY: install-nds uninstall-nds

install-nds: ${CROSSMIX}/${NDS_EMU} ${prefix}
	rm -rf ${prefix}/${NDS_EMU}
	mkdir -p ${prefix}/${NDS_EMU} && cp -rT $< ${prefix}/${NDS_EMU}

uninstall-nds: ${prefix}/${NDS_EMU}
	rm -rf $^
