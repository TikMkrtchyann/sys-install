#include <stdio.h>
#include <stdlib.h>

/*
void timezoneFunc()
{
    char timezone;

    printf("Which is your timezone: Armenia/Yerevan[1], another[2]?\n");
    if(timezone == '1')
        system("timedatectl set-timezone Asia/Yerevan");
    else
        printf("no)))\n");
}
*/

void partitionFunc()
{
   system("chmod +x diskPartition.sh");
   system("./diskPartition.sh");

}

int main()
{
    timezoneFunc();
    partitionFunc();
}