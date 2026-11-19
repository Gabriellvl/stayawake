PREFIX ?= $(HOME)/.local
BINDIR ?= $(PREFIX)/bin

.PHONY: install uninstall

install:
	install -d "$(DESTDIR)$(BINDIR)"
	install -m 755 stayawake "$(DESTDIR)$(BINDIR)/stayawake"

uninstall:
	rm -f "$(DESTDIR)$(BINDIR)/stayawake"
