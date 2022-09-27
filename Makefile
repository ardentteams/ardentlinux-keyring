V=20220927

PREFIX = /usr/local

install:
#		install -dm755 $(DESTDIR)$(PREFIX)/share/pacman/keyrings/
		install -vmD644 ardentlinux{.gpg,-trusted,-revoked} -t $(DESTDIR)$(PREFIX)/share/pacman/keyrings/

uninstall:
		rm -f $(DESTDIR)$(PREFIX)/share/pacman/keyrings/ardentlinux{.gpg,-trusted,-revoked}
		rmdir -p --ignore-fail-on-non-empty $(DESTDIR)$(PREFIX)/share/pacman/keyrings/
