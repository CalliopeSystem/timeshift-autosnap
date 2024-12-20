PKGNAME ?= timeshift-autosnap

.PHONY: install

install:
	@install -Dm644 -t "$(DESTDIR)/usr/share/libalpm/hooks/" 00-timeshift-autosnap.hook
	@install -Dm755 -t "$(DESTDIR)/usr/bin/" timeshift-autosnap
	@install -Dm644 -t "$(LIB_DIR)/etc/" timeshift-autosnap.conf

uninstall:
	rm -f "$(DESTDIR)/usr/share/libalpm/hooks/00-timeshift-autosnap.hook"
	rm -f "$(DESTDIR)/usr/bin/timeshift-autosnap"
	rm -f "$(LIB_DIR)/etc/timeshift-autosnap.conf"
