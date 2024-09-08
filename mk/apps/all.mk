# All apps

.PHONY: install-all-apps uninstall-all-apps

install-all-apps: \
	install-bootlogo \
	install-emucleaner \
	install-filemanager \
	install-ota-update \
	install-portmaster \
	install-random \
	install-reboot \
	install-retroarch \
	install-scraper \
	install-scraper \
	install-screenrecorder \
	install-systemtools \
	install-terminal \
	install-user-guide

uninstall-all-apps:
	rm -rf ${prefix}/Apps
