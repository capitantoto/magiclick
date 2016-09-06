# Como dice el nombre del archivo, este script modifica
# /usr/share/X11/xkb/symbols/pc
# para que la tecla fisica Caps Lock funciona como Escape (y viceversa)

sudo cp /usr/share/X11/xkb/symbols/pc /usr/share/X11/xkb/symbols/pc.backup
sudo cp dotfiles/pc /usr/share/X11/xkb/symbols/pc

# Reconfigurar los mapeos y reniciar el display manager. Yo uso Gnome, asi que gsm
sudo dpkg-reconfigure xkb-data
sudo restart gdm

# Mas detalles en 
# https://help.ubuntu.com/community/Custom%20keyboard%20layout%20definitions

# DISCLAIMER:
# Aunque este proceso funciona, gdm tira un error de Xorg cuando es restarteado. No se que sera, pero le di "ignorar" por el momento. No olvidar.
# https://askubuntu.com/questions/325272/permanent-xmodmap-in-ubuntu-13-04/347382#347382?newreg=4eb097870a15490ebbe39d78412f9797
