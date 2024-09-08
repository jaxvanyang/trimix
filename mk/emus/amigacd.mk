# AMIGA CD32 & AMIGA CDTV

AMIGACD_EMUS = $(addprefix Emus/,AMIGACD AMIGACDTV)
CROSSMIX_AMIGACD_EMUS = $(addprefix ${CROSSMIX}/,${AMIGACD_EMUS})
PREFIX_AMIGACD_EMUS = $(addprefix ${prefix}/,${AMIGACD_EMUS})
AMIGACD_CORES = $(addprefix ${CORES}/puae_libretro.,info so)
CROSSMIX_AMIGACD_CORES = $(addprefix ${CROSSMIX}/,${AMIGACD_CORES})
PREFIX_AMIGACD_CORES = $(addprefix ${prefix}/,${AMIGACD_CORES})

.PHONY: install-amigacd uninstall-amigacd

install-amigacd: ${CROSSMIX_AMIGACD_EMUS} ${CROSSMIX_AMIGACD_CORES} ${prefix}
	rm -rf ${PREFIX_AMIGACD_EMUS}
	mkdir -p ${prefix}/Emus && cp -r ${CROSSMIX_AMIGACD_EMUS} ${prefix}/Emus
	install -Dm644 -t ${prefix}/${CORES} ${CROSSMIX_AMIGACD_CORES}

uninstall-amigacd: ${PREFIX_AMIGACD_EMUS} ${PREFIX_AMIGACD_CORES}
	rm -rf $^
