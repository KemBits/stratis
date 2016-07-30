
Debian
====================
This directory contains files used to package stratisd/stratis-qt
for Debian-based Linux systems. If you compile stratisd/stratis-qt yourself, there are some useful files here.

## stratis: URI support ##


stratis-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install stratis-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your stratis-qt binary to `/usr/bin`
and the `../../share/pixmaps/stratis128.png` to `/usr/share/pixmaps`

stratis-qt.protocol (KDE)

