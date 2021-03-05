#include <stdio.h>
#include <stdlib.h>


void partitionFunc()
{
   system("chmod +x diskPartition.sh");
   system("./diskPartition.sh");

}


int main()
{
    system("timedatectl set-timezone Asia/Yerevan");
    partitionFunc();
}