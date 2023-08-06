
For devterm cm4 with 2023-05-03-raspios-bullseye-arm64-lite.img

only xfce4

sudo apt remove raspberrypi-kernel -y
sudo apt-mark hold raspberrypi-kernel

/etc/default/keyboard.

```
XKBMODEL="pc105"
XKBLAYOUT="us"
XKBVARIANT=""
XKBOPTIONS=""
BACKSPACE="guess"
```

systemctl disable userconfig.service
systemctl enable NetworkManager

apt install -y xfce4 dbus-x11
sudo apt install network-manager-gnome
sudo apt install cups-client -y
sudo systemctl set-default multi-user.target
sudo apt remove lightdm

sudo usermod -a -G adm,dialout,cdrom,sudo,audio,video,plugdev,games,users,input,render,netdev,lpadmin,gpio,i2c,spi cpi

sudo rm /etc/ssh/sshd_config.d/rename_user.conf

sudo bash -c 'cat <<EOF > /etc/systemd/system/x11-autologin.service

[Unit]
Description=X11 session for cpi
After=graphical.target systemd-user-sessions.service

[Service]
User=cpi
WorkingDirectory=~

PAMName=login
Environment=XDG_SESSION_TYPE=x11
TTYPath=/dev/tty7
StandardInput=tty
UnsetEnvironment=TERM

UtmpIdentifier=tty7
UtmpMode=user

StandardOutput=journal
ExecStartPre=/usr/bin/chvt 7
ExecStart=/usr/bin/startx -- vt7 -keeptty -verbose 3
Restart=no

[Install]
WantedBy=graphical.target

EOF'

sudo apt install -y git

sudo apt install -y xfce4-terminal 

sudo apt install -y greybird-gtk-theme  xfce4-power-manager-plugins


