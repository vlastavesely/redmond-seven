PREFIX=/usr
THEMENAME=Redmond-Seven

.PHONY: install uninstall

install:
	cp -rf src $(PREFIX)/share/themes/$(THEMENAME)

uninstall:
	rm -rf $(PREFIX)/share/themes/$(THEMENAME)
