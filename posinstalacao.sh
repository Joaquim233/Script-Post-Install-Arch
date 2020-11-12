#!/bin/bash

echo "Bem Vindo a pós-instalação, este script foi feito pelo Joaquim233!"
echo "Primeiro vamos conectar ao wifi!"
wifi-menu
echo "Testando rede, aperte Ctrl+C para sair!"
ping archlinux.org
echo "Carregando teclado PT-BR"
loadkeys br-abnt2
echo "Agora vamos adicionar o usuário!"
echo "Qual o nome que quer usar?"
read usuario
echo "Ok, bem-vindo $usuario!"
useradd -m $usuario
echo "Agora coloque sua senha"
passwd $usuario
echo "Agora, vamos editar o arquivo sudoers, para que seu usuário possa usar o comando sudo!"
nano /etc/sudoers
echo "Instalando pacotes básicos..."
pacman -S xdg-user-dirs bash-completion
echo "Instalando xorg..."
pacman -S xorg-server xorg-xinit xterm
echo "Agora vamos instalar a placa de vídeo:"
pacman -S xf86-video-intel
echo "Agora vamos testar o vídeo, aperte Ctrl+D para sair"
startx
echo "Agora vamos instalar a interace gráfica, escolha uma:
echo "1-Gnome 2-Kde 3-Xfce 4-Lxde 5-I3Wm 6-Openbox 7-Fluxbox 8-Blackbox"
1=gnome
2=plasma
3=xfce4
4=lxde
5=i3
6=openbox
7=fluxbox
8=blackbox
read interface
if [ $interface == $1 ]
then
echo "Instalando Gnome..."
pacman -S gnome
fi

if [ $interface == $2 ]
then
echo "Instalando Kde..."
pacman -S plasma
fi

if [ $interface == $3 ]
then
echo "Instalando Xfce..."
pacman -S xfce4
fi

if [ $interface == $4 ]
then
echo "Instalando Lxde..."
pacman -S lxde
fi

if [ $interface == $5 ]
then
echo "Instalando i3wm..."
pacman -S i3
fi

if [ $interface == $6 ]
then
echo "Instalando Openbox..."
pacman -S openbox
fi

if [ $interface == $7 ]
then
echo "Instalando Fluxbox..."
pacman -S fluxbox
fi

if [ $interface == $8 ]
then
echo "Instalando Blackbox..."
pacman -S blackbox
fi

echo "Agora, o gerenciador de login..."

if [ $interface == $1 ]
echo "Instalando GDM"
pacman -S gdm
fi

if [ $interface == $2 ]
echo "Instalando SDDM"
pacman -S sddm
fi

else 
pacman -S lxdm

echo "Instalando pacotes necessários..."
pacman -S network-manager network-manager-applet pulseaudio alsa-utils

echo "Ativando serviços no boot..."
if [ $interface == $1 ]
systemctl enable NetworkManager gdm

if [ $interface == $2 ]
systemctl enable NetworkManager sddm

else
systemctl enable NetworkManager lxdm

echo "Reiniciando..."
reboot




