#Timezone
timedatectl set-timezone Asia/Yerevan

#Disk partitioning/mounting
fdisk /dev/sda
mkfs.ext2 /dev/sda1
mkfs.ext4 /dev/sda2
mount /dev/sda1 /boot
mount /dev/sda2 /mnt

#Installing packages with pacstrap and pacman
pacstrap /mnt base linux-lts linux-firmware
pacman -Sy

#fstab
genfstab -L /mnt >> /mnt/etc/fstab

#chroot
arch-chroot /mnt









