#!/bin/bash

ME=`whoami`

if [ "$ME" = "rpi-first-boot-wizard" ]; then
exit
fi

touch /tmp/firstboot

cp /usr/local/bin/skel/.config ~/ -rf

cp -rf /usr/local/bin/skel/.dosbox ~/

cp -rf /usr/local/bin/skel/.opentyrian ~/

cp -rf /usr/local/bin/skel/.local ~/

sudo chown -R $ME:$ME ~/ 

sudo rm /etc/xdg/autostart/first-touch.desktop
