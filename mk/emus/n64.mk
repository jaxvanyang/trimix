# N. N64 & N. N64DD

N64_EMUS = $(addprefix Emus/,N64 N64DD)
CROSSMIX_N64_EMUS = $(addprefix ${CROSSMIX}/,${N64_EMUS})
PREFIX_N64_EMUS = $(addprefix ${prefix}/,${N64_EMUS})
N64_CORES = $(addprefix ${CORES}/parallel_n64_libretro.,info so)
N64_CORES += $(addprefix ${CORES}/mupen64plus_libretro.,so)
CROSSMIX_N64_CORES = $(addprefix ${CROSSMIX}/,${N64_CORES})
PREFIX_N64_CORES = $(addprefix ${prefix}/,${N64_CORES})

.PHONY: install-n64 uninstall-n64

install-n64: ${CROSSMIX_N64_EMUS} ${CROSSMIX_N64_CORES} ${prefix}
	rm -rf ${PREFIX_N64_EMUS}
	mkdir -p ${prefix}/Emus && cp -r ${CROSSMIX_N64_EMUS} ${prefix}/Emus
	install -Dm644 -t ${prefix}/${CORES} ${CROSSMIX_N64_CORES}

uninstall-n64: ${PREFIX_N64_EMUS} ${PREFIX_N64_CORES}
	rm -rf $^
