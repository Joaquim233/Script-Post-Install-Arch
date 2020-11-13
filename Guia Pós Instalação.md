# Guia Pós Instalação do Arch
Bem, quem quiser seguir um guia da pós instalação, aqui está:
- Conectar ao Wifi:
`wifi-menu`
- Testar a conexão: 
`ping google.com`
- Carregar teclado BR: 
`loadkeys br-abnt2`
- Adicionar seu usuário: 
`useradd -m seuusuário`
- Senha do usuário: 
`passwd seuusuário`
- Adicionar ao sudoers (para que possa usar o sudo)
`nano /etc/sudoers`
Em `user privilege specification`, embaixo de root
coloque: `seuusuário ALL=(ALL) ALL`
- Pacotes opcionais: 
Esses pacotes são opcionais, ou seja você instalá
se quiser, mas eu sempre recomendo instalar:
`pacman -S xdg-user-dirs bash-completion`
- Instalar o Xorg:
`pacman -S xorg-server xorg-xinit xterm`
(O xterm talvez não precise)
- Instalar Driver de Vídeo: 
Intel: `pacman -S xf86-video-intel`
Se for 1 geração de i3, i5, i7:
`pacman -S xf86-video-nouveau`
Nvidia:
Driver open source: `pacman -S xf86-video-nouveau`
Placas antigas(Série 300 ou menos): `pacman -S nvidia-390xx`
Virtualbox e VMware: `pacman -S xf86-video-vmware`
AMD (3 geração): `pacman -S amdgpu`
O AMDGPU é experimental então você pode usar o ati: `pacman -S ati` 
Placas mais antigas também usam ati.
- Testar o Driver: 
`startx` se aparecer umas janelas de terminal brancas significa que deu certo, se não 
deu, talvez seja erro com o driver.

- Interface Gráfica: 
Budgie: `pacman -S budgie-desktop`
Cinnamon: `pacman -S cinnamon` 
Deepin: `pacman -S deepin`
Gnome: `pacman -S gnome`
Kde: `pacman -S plasma`
Lxde: `pacman -S lxde-gtk3`
Xfce: `pacman -S xfce4`
Mate: `pacman -S mate`

- Gerenciador de Login:
Gdm(para gnome): `pacman -S gdm`
Sddm(para kde): `pacman -S sddm`
O resto pode ser o LightDm: `pacman -S lighdm`
Mas se der problemas, pode usar o lxdm: `pacman -S lxdm`
- NetworkManager e Pulseaudio (pra garantir):
`pacman -S networkmanager network-manager-applet pulseaudio`
- Ativar serviços no boot
`systemctl enable NetworkManager lxdm (ou gdm, sddm, etc.)` (assim a internet e o gerenciador de Login vão ser ativados no boot)
- Reiniciar: 
Enfim, pra terminar: `reboot` 




