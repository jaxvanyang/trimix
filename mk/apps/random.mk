# Chooses Random Emulator and Rom

RANDOM = Apps/random

.PHONY: install-random uninstall-random

install-random: ${CROSSMIX}/${RANDOM} ${prefix}
	rm -rf ${prefix}/${RANDOM}
	mkdir -p ${prefix}/${RANDOM}
	cp -rT $< ${prefix}/${RANDOM}

uninstall-random: ${prefix}/${RANDOM}
	rm -rf $^
