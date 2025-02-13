#!/bin/bash
x=$(touch $HOME/.config)
a=$(pwd | grep home | cut -d / -f 2)



create(){
source ./teste.sh
echo $cpus

verificar_ova=$(ls -b *.ova)
echo $verificar_ova
VBoxManage import ./$verificar_ova --vsys 0 --vmname $name --memory $memory --cpus $cpus  --eula=accept
VBoxManage modifyvm $name --nat-pf1 "guestssh,tcp,,$port,,22"
 
}
init(){

if [ ! -e  teste.sh ];
then
echo "entre com o nome do virtualbox"
read nometeclar
echo "entre com o numero de porta para o ssh"
read port_ssh
echo "

cpus="1"
memory="2001"
vram="12"
name=$nometeclar
port=$port_ssh
" >> teste.sh
else
echo "existe o arquivo de config"
fi
}


start(){
source ./teste.sh
VBoxHeadless --startvm "$name" &
}

stop(){
source ./teste.sh
vboxmanage controlvm "$name" poweroff 
}

ssp(){
source ./teste.sh
sshpass -p teste ssh teste@127.0.0.1 -p $port
}


case $1 in
init) init;;
start)start;;
stop)stop;;
ssp)ssp;;
esac


while getopts ":ctid" flag;
do
 case "$flag" in
c) create;;
t) curl -s teste.local/list.txt | grep $2 | awk '{print $0}';;
i) init;;
d) wget teste.local/$2;;
esac
done
