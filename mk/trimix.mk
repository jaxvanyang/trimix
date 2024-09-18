TRIMIX ?= init \
	uninstall-filemanager \
	install-ota-update \
	uninstall-portmaster \
	uninstall-scraper \
	uninstall-terminal \
	uninstall-user-guide \
	uninstall-all-cores \
	uninstall-all-emus \
	install-fc \
	install-gb \
	install-n64 \
	install-nds \

trimix: ${TRIMIX}
