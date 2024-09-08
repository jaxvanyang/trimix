# Starts screen recording

SCREENRECORDER = Apps/ScreenRecorder
SCREENCAPTK = Apps/ScreencapTK

.PHONY: install-screenrecorder uninstall-screenrecorder

install-screenrecorder: ${CROSSMIX}/${SCREENRECORDER} ${CROSSMIX}/${SCREENCAPTK} ${prefix}
	rm -rf ${prefix}/${SCREENRECORDER} ${prefix}/${SCREENCAPTK}
	mkdir -p ${prefix}/${SCREENRECORDER}
	cp -rT $< ${prefix}/${SCREENRECORDER}
	cp -rT ${CROSSMIX}/${SCREENCAPTK} ${prefix}/${SCREENCAPTK}

uninstall-screenrecorder: ${prefix}/${SCREENRECORDER}
	rm -rf $^
