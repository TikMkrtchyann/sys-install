#octopi
git clone https://aur.archlinux.org/octopi.git
cd octopi
makepkg -si
cd

#pamac-all
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

#aur apps
pamac install visual-studio-code-bin
pamac install viber
pamac install tela-icon-theme
