#create user and passwd for user
useradd -m -g users -G wheel -s /bin/bash stalker
passwd stalker
echo "%wheel ALL=(ALL)ALL" > /etc/sudoers

#apps
pacman -S sudo nano lightdm lightdm-gtk-greeter cinnamon xorg gnome-extra xfce4-terminal arc-gtk-theme papirus-icon-theme nvidia-lts

#entering
systemctl enable lightdm
systemctl start lightdm