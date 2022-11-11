.POSIX:

OS = $(shell uname -s)
ifndef PREFIX
  PREFIX = /usr/local
endif
ifndef MANPREFIX
  MANPREFIX = $(PREFIX)/share/man
endif

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f zathura-tabbed $(DESTDIR)$(PREFIX)/bin/zathura-tabbed
	chmod 755 $(DESTDIR)$(PREFIX)/bin/zathura-tabbed
	mkdir -p $(DESTDIR)$(MANPREFIX)/man1
	cp -f zathura-tabbed.1 $(DESTDIR)$(MANPREFIX)/man1/zathura-tabbed.1
	chmod 644 $(DESTDIR)$(MANPREFIX)/man1/zathura-tabbed.1

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/zathura-tabbed
	rm -f $(DESTDIR)$(MANPREFIX)/man1/zathura-tabbed.1

.PHONY: install uninstall
