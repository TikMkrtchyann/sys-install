#octopi
git clone https://aur.archlinux.org/alpm_octopi_utils.git
cd alpm_octopi_utils
makepkg -si
cd

sudo pacman -Sy qt5-webkit pkgfile qtermwidget
git clone https://aur.archlinux.org/octopi.git
cd octopi
makepkg -si
cd

#pamac-all
git clone https://aur.archlinux.org/snapd-glib.git
cd snapd-glib
makepkg -si
cd

git clone https://aur.archlinux.org/pamac-all.git
cd pamac-all
makepkg -si
cd

#snapd
git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si
cd


#wallpaper
git clone https://github.com/Respirat0r/sys-wallpaper.git
cd sys-wallpaper
./sys-wallpaper.sh
cd

#aur apps
pamac install visual-studio-code-bin
pamac install viber
pamac install tela-icon-theme
