SHELL = /bin/sh

CROSSMIX_VERSION ?= 1.2.1
CROSSMIX_RELEASE ?= https://github.com/cizia64/CrossMix-OS/releases/download/v${CROSSMIX_VERSION}/CrossMix-OS_v${CROSSMIX_VERSION}.zip

DIST ?= dist
CROSSMIX_ZIP := ${DIST}/CrossMix-OS_v${CROSSMIX_VERSION}.zip
CROSSMIX := ${DIST}/crossmix
# installation prefix, i.e., the SDCARD directory
prefix ?= ${DIST}/trimix
ZIP := ${DIST}/trimix.zip
# source and target directories
DIRS := ${CROSSMIX} ${prefix}

# RetroArch cores directory
CORES = RetroArch/.retroarch/cores

.PHONY: trimix zip init

# make trimix to be the default rule
include mk/trimix.mk mk/apps/*.mk mk/cores/*.mk mk/emus/*.mk

zip: ${ZIP}

${ZIP}: ${prefix}
	(cd $< && zip -qr - .) > $@

init: clean ${DIRS}
	rm -f ${prefix}/*.inf ${prefix}/.*.icns

${CROSSMIX}: ${CROSSMIX_ZIP}
	mkdir -p $@
	unzip -qd $@ $<

${CROSSMIX_ZIP}:
	curl -C - -o $@ -L ${CROSSMIX_RELEASE} --create-dirs

# create base directory for further modification
${prefix}: ${CROSSMIX}
	cp -r $< $@

.PHONY: clean distclean

clean:
	rm -rf ${DIRS} ${ZIP}

distclean:
	rm -rf ${DIST}
