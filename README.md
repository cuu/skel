For uconsole cm4 with 2023-05-03-raspios-bullseye-arm64-lite.img

only xfce4

`git clone -b  uconsole-cm4-xfce4 https://github.com/cuu/skel.git`  


based on the modification of [devterm-cm4-xfce4](https://github.com/cuu/skel/blob/devterm-cm4-xfce4/README.md)

## Post modifications
```
sudo apt remove -y devterm-fan-temp-daemon-cm4 devterm-thermal-printer-cm4 devterm-thermal-printer-cups devterm-kernel-cm4-rpi  
sudo apt install -y uconsole-kernel-cm4-rpi  uconsole-4g-util-cm4  
```

###  replace DevTerm to uConsole
```
/usr/local/bin/chgpas.sh
/home/cpi/Document/Obsidian Valut/README.md
```

### mask devterm kernel
```
sudo bash -c 'cat <<EOF > /etc/apt/preferences.d/devterm-kernel-cm4-rpi
Package: devterm-kernel-cm4-rpi
Pin: release *
Pin-Priority: -1
EOF'
```


