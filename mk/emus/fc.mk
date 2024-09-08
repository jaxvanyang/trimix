# N. NES

FC_EMU = Emus/FC
FC_CORES = $(addprefix ${CORES}/fceumm_libretro.,info so)
FC_CORES += $(addprefix ${CORES}/mesen_libretro.,info so)
FC_CORES += $(addprefix ${CORES}/nestopia_libretro.,info so)
FC_CORES += $(addprefix ${CORES}/quicknes_libretro.,info so)
CROSSMIX_FC_CORES = $(addprefix ${CROSSMIX}/,${FC_CORES})
PREFIX_FC_CORES = ${addprefix ${prefix}/,${FC_CORES}}

.PHONY: install-fc uninstall-fc

install-fc: ${CROSSMIX}/${FC_EMU} ${CROSSMIX_FC_CORES} ${prefix}
	rm -rf ${prefix}/${FC_EMU}
	mkdir -p ${prefix}/${FC_EMU} && cp -rT $< ${prefix}/${FC_EMU}
	install -Dm644 -t ${prefix}/${CORES} ${CROSSMIX_FC_CORES}

uninstall-fc: ${prefix}/${FC_EMU} ${PREFIX_FC_CORES}
	rm -rf $^
