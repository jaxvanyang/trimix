# User Manual

USER_GUIDE = Apps/user_guide

.PHONY: install-user-guide uninstall-user-guide

install-user-guide: ${CROSSMIX}/${USER_GUIDE} ${prefix}
	rm -rf ${prefix}/${USER_GUIDE}
	mkdir -p ${prefix}/${USER_GUIDE}
	cp -rT $< ${prefix}/${USER_GUIDE}

uninstall-user-guide: ${prefix}/${USER_GUIDE}
	rm -rf $^
