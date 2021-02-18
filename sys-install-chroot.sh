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
