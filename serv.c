#include<stdio.h>
#include<stdlib.h>
#include<fcntl.h>
#include<unistd.h>
#include<arpa/inet.h>
#include<netinet/in.h>
#include<sys/socket.h>
#include<sys/types.h>
#include<sys/stat.h>

int main()
{
int cs,ns,bs=1024,cont,addrlen,fd;
char *buffer=malloc(bs);
char fname[256];

struct sockaddr_in address;

if((cs=socket(AF_INET,SOCK_STREAM,0))>0)
{
printf("Socket is created");
}
address.sin_family=AF_INET;
address.sin_addr.s_addr=INADDR_ANY;
address.sin_port=htons(15001);

if(bind(cs,(struct sockaddr*)&address,sizeof(address))==0)
{
printf("Binding socket");
}
listen(cs,3);
printf("Socket listening");

while(1){
addrlen=sizeof( struct sockaddr_in);
ns=accept(cs,(struct sockaddr*)&address,&addrlen);

cont=recv(ns,fname,255,0);

if((fd=open(fname,O_RDONLY))>0)
{
if((cont=read(fd,buffer,bs))>0)
{
send(ns,buffer,cont,0);
}
}
close(ns);
}
return close(cs);
}
