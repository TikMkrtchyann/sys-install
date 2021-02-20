#time in chroot
ln -sf /usr/share/zoneinfo/Asia/Yerevan /etc/localtime
hwclock --systohc

#locale-gen
echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
locale-gen
echo "LANG=ru_RU.UTF-8" > /etc/locale.conf

#host/hostname
echo stalker > /etc/hostname
echo "127.0.0.1 localhost
::1 localhost
127.0.1.1 stalker.localdomain stalker"

#create sudo user
passwd

#internet
pacman -Sy dhcpcd networkmanager
systemctl enable dhcpcd.service
systemctl enable NetworkManager.service


#grub
pacman -Sy grub os-prober
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg

#add user and password
useradd -m -g users -G wheel -s /bin/bash stalker
passwd stalker
echo "%wheel ALL=(ALL)ALL" > /etc/sudoers

#apps
pacman -S sudo nano lxdm cinnamon gnome-extra xfce4-terminal arc-gtk-theme papirus-icon-theme nvidia-lts make flatpak snapd flameshot libreoffice qbittorrent gparted htop psensor

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

#wallpaper
git clone https://github.com/Respirat0r/sys-wallpaper.git
cd sys-wallpaper
./sys-wallpaper.sh

#aur apps
pamac install visual-studio-code-bin
pamac install viber
pamac install tela-icon-theme

#entering
systemctl enable lxdm

#exit and reboot
exit
reboot