#time in chroot
echo Enter your timezone: example: Asia/Yerevan, Europe/Paris
read timezone
ln -sf /usr/share/zoneinfo/$timezone /etc/localtime
hwclock --systohc

#locale-gen
echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" > /etc/locale.conf

#host/hostname
echo Enter your hostname: 
read hostName
echo $hostName > /etc/hostname

#create sudo user
echo Enter your root-user password: 
passwd

#internet
systemctl enable dhcpcd.service
systemctl enable NetworkManager.service


#grub
echo In what disk you want to install GRUB? example: /dev/sda, /dev/sdc
read diskName
grub-install $diskName
grub-mkconfig -o /boot/grub/grub.cfg

#add user and password
echo Enter your username: 
read userName
useradd -m -g users -G wheel -s /bin/bash $userName
passwd $userName
echo "%wheel ALL=(ALL)ALL" > /etc/sudoers

#apps
echo What DE-Desktop Environment Do you want to install? Cinnamon[1], XFCE[2], KDE Plasma[3]
read DE
if [[ $DE == 1 ]]; then
	pacman -S cinnamon 

elif [[ $DE == 2 ]]; then
	pacman -S xfce4 

elif [[ $DE == 3 ]]; then
	pacman -S plasma plasma-meta

echo What Display Manager Do you want to install? LXDM[1], SDDM[2], GDM[3], LightDM[4]
read DM 
if [[ $DM == 1 ]]; then
	pacman -S lxdm
	systemctl enable lxdm

elif [[ $DM == 2 ]]; then
	pacman -S sddm
	systemctl enable sddm

elif [[ $DM == 3 ]]; then
	pacman -S gdm
	systemctl enable gdm

elif [[ $DM == 4 ]]; then
	pacman -S lightdm
	systemctl enable lightdm

echo What terminal Do you want to install? Gnome-terminal[1], xfce4-terminal[2], konsole[3]
read TERM
if [[ $TERM == 1 ]]; then
	pacman -S gnome-terminal

elif [[ $TERM == 2 ]]; then
	pacman -S xfce4-terminal

elif [[ $TERM == 3 ]]; then
	pacman -S konsole

echo Now, I say you goodbye my friend. I helped you to install this Linux and maybe, I will help you then. See you soon
read $a

