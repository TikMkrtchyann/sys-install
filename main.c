#include <stdio.h>
#include <stdlib.h>


void partitionFunc()
{
   system("chmod +x diskPartition.sh");
   system("./diskPartition.sh");

}

void pacstrapFunc()
{
	system("pacman -Sy");
	system("pacstrap /mnt base linux-lts linux-firmware sudo nano grub dhcpcd networkmanager");	
	system("genfstab -U /mnt >> /mnt/etc/fstab");
	system("cp -r sys-install /mnt/home");
	system("arch-chroot /mnt");
}


int main()
{
    system("timedatectl set-ntp true");
    partitionFunc();
    pacstrapFunc();
}
