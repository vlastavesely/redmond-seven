PREFIX=/usr
THEMENAME=Redmond-Seven

.PHONY: install uninstall watch

install:
	cp -rf src $(PREFIX)/share/themes/$(THEMENAME)

uninstall:
	rm -rf $(PREFIX)/share/themes/$(THEMENAME)

# run `apt install inotify-tools` to get `inotifywatch`
watch:
	while true; do								\
		gsettings set org.mate.interface "gtk-theme" "Adwaita";		\
		gsettings set org.mate.interface "gtk-theme" $(THEMENAME);	\
		inotifywait -qr -e modify -e create -e delete src;		\
	done

