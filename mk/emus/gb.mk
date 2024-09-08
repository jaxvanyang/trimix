# N. GB & N. GBA & N. GBC

GB_EMUS = $(addprefix Emus/,GB GBA GBC)
CROSSMIX_GB_EMUS = $(addprefix ${CROSSMIX}/,${GB_EMUS})
PREFIX_GB_EMUS = $(addprefix ${prefix}/,${GB_EMUS})
GB_CORES = $(addprefix ${CORES}/gambatte_libretro.,info so)
GB_CORES += $(addprefix ${CORES}/gearboy_libretro.,info so)
GB_CORES += $(addprefix ${CORES}/mgba_libretro.,info so)
GB_CORES += $(addprefix ${CORES}/tgbdual_libretro.,info so)
GB_CORES += $(addprefix ${CORES}/gpsp_libretro.,info so)
GB_CORES += $(addprefix ${CORES}/vbam_libretro.,info so)
GB_CORES += $(addprefix ${CORES}/vba_next_libretro.,info so)
CROSSMIX_GB_CORES = $(addprefix ${CROSSMIX}/,${GB_CORES})
PREFIX_GB_CORES = $(addprefix ${prefix}/,${GB_CORES})

.PHONY: install-gb uninstall-gb

install-gb: ${CROSSMIX_GB_EMUS} ${CROSSMIX_GB_CORES} ${prefix}
	rm -rf ${PREFIX_GB_EMUS}
	mkdir -p ${prefix}/Emus && cp -r ${CROSSMIX_GB_EMUS} ${prefix}/Emus
	install -Dm644 -t ${prefix}/${CORES} ${CROSSMIX_GB_CORES}

uninstall-gb: ${PREFIX_GB_EMUS} ${PREFIX_GB_CORES}
	rm -rf $^
