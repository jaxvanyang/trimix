# Download your game covers

SCRAPER = Apps/Scraper

.PHONY: install-scraper uninstall-scraper

install-scraper: ${CROSSMIX}/${SCRAPER} ${prefix}
	rm -rf ${prefix}/${SCRAPER}
	mkdir -p ${prefix}/${SCRAPER}
	cp -rT $< ${prefix}/${SCRAPER}

uninstall-scraper: ${prefix}/${SCRAPER}
	rm -rf $^
