PREFIX ?= /usr/local
DOCDIR ?= $(PREFIX)/share/doc/bashtop

all:
	@echo Run \'make install\' to install mccmonitor.

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@cp -p mccmonitor $(DESTDIR)$(PREFIX)/bin/mccmonitor
	@mkdir -p $(DESTDIR)$(DOCDIR)
	@cp -p README.md $(DESTDIR)$(DOCDIR)
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/mccmonitor
uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/mccmonitor
	@rm -rf $(DESTDIR)$(DOCDIR)
