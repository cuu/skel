#!/bin/bash

cp /usr/local/bin/skel/.xinitrc /home/cpi/ -rf

cp /usr/local/bin/skel/.config /home/cpi/ -rf

cp -rf /usr/local/bin/skel/.dosbox /home/cpi

cp -rf /usr/local/bin/skel/.opentyrian  /home/cpi

cp -rf /usr/local/bin/skel/.local /home/cpi


sudo chown -R cpi:cpi /home/cpi

