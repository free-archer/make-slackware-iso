#inittab set runlavel 4
#RUNLEVEL=4
#sed -i /etc/inittab -e "s/\(id:\).\(:initdefault:\)/\1${RUNLEVEL}\2/"

#gxkb
#cp /usr/share/applications/gxkb.desktop /etc/xdg/autostart/
#cp /usr/share/applications/gxkb.desktop $XDG_CONFIG_HOME/autostart/

#chmod +x /etc/xdg/autostart/gxkb.desktop
#chmod +x $XDG_CONFIG_HOME/autostart/gxkb.desktop


