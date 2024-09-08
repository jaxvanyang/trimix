# AMIGA

AMIGA_EMU = Emus/AMIGA
AMIGA_CORES = $(addprefix ${CORES}/puae2021_libretro.,info so)
CROSSMIX_AMIGA_CORES = $(addprefix ${CROSSMIX}/,${AMIGA_CORES})
PREFIX_AMIGA_CORES = ${addprefix ${prefix}/,${AMIGA_CORES}}

.PHONY: install-amiga uninstall-amiga

install-amiga: ${CROSSMIX}/${AMIGA_EMU} ${CROSSMIX_AMIGA_CORES} ${prefix}
	rm -rf ${prefix}/${AMIGA_EMU}
	mkdir -p ${prefix}/${AMIGA_EMU} && cp -rT $< ${prefix}/${AMIGA_EMU}
	install -Dm644 -t ${prefix}/${CORES} ${CROSSMIX_AMIGA_CORES}

uninstall-amiga: ${prefix}/${AMIGA_EMU} ${PREFIX_AMIGA_CORES}
	rm -rf $^
