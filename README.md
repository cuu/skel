For devterm cm4 with 2023-05-03-raspios-bullseye-arm64-lite.img

only xfce4

`git clone -b  devterm-cm4-xfce4 https://github.com/cuu/skel.git`  


sudo apt remove raspberrypi-kernel -y  
sudo apt-mark hold raspberrypi-kernel  

/etc/default/keyboard  

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

```
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
```

ln -s /etc/systemd/system/x11-autologin.service /etc/systemd/system/multi-user.target.wants/

sudo apt install -y git

sudo apt install -y xfce4-terminal 

sudo apt install -y greybird-gtk-theme  xfce4-power-manager-plugins


sudo apt install -y devterm-thermal-printer-cm4 devterm-thermal-printer-cups devterm-wiringpi-cm4-cpi devterm-fan-temp-daemon-cm4  devterm-audio-patch   devterm-backlight-rpi-cm4  


sudo apt install -y devterm-tic80-cpi uconsole-love2d retroarch dosbox  devterm-cavestory-cpi-cm4 mame uconsole-liko12 uconsole-lowresnx opentyrian openttd minetest uconsole-dosbox-staging pppoe  

```
sudo bash -c 'cat << EOF > /etc/modprobe.d/blacklist-qmi.conf
blacklist qmi_wwan
blacklist cdc_wdm
EOF'
```

sudo sed -i 's/StrategyGame;//g'  /usr/share/applications/openttd.desktop  
sudo sed -i 's/Exec=openttd/Exec=\/usr\/games\/openttd/' /usr/share/applications/openttd.desktop  

sudo sed -i 's/Exec=opentyrian/Exec=\/usr\/games\/opentyrian/' /usr/share/applications/opentyrian.desktop  
sudo sed -i 's/ArcadeGame;//g' /usr/share/applications/opentyrian.desktop  

sudo sed -i 's/Simulation;//g'  /usr/share/applications/net.minetest.minetest.desktop  
sudo sed -i 's/Exec=minetest/Exec=\/usr\/games\/minetest/' /usr/share/applications/net.minetest.minetest.desktop  

```
sudo bash -c 'cat <<EOF > /etc/apt/preferences.d/cpi
Package: raspberrypi-kernel raspberrypi-kernel:armhf
Pin: release *
Pin-Priority: -1
EOF'
```
