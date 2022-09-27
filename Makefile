V=20220927

PREFIX = /usr/local

install:
		install -vdm755 $(DESTDIR)$(PREFIX)/share/pacman/keyrings/
		install -vm644 ardentlinux{.gpg,-trusted,-revoked} -t $(DESTDIR)$(PREFIX)/share/pacman/keyrings/

uninstall:
		rm -f $(DESTDIR)$(PREFIX)/share/pacman/keyrings/ardentlinux{.gpg,-trusted,-revoked}
		rmdir -p --ignore-fail-on-non-empty $(DESTDIR)$(PREFIX)/share/pacman/keyrings/
