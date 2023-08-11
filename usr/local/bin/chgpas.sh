#!/bin/bash

FILE=$HOME/.first_start

if [ ! -f "$FILE" ]; then
exit 
fi


chg_pas=$(zenity --info  \
--title="Welcome to ClockworkPi DevTerm CM4" \
--text "\n<big>Welcome to ClockworkPi DevTerm CM4!\n\nThe system default username and password are:\"cpi\" and \"cpi\".\nPlease change your password before connecting to the public network.\n\nNote: The SSH server is disabled by default.\nTo enable the SSH server,please execute the commands:\n\"sudo systemctl enable ssh\"\n\"sudo systemctl start ssh\"\n\nJoin our community at forum.clockworkpi.com\nHave fun!</big>" \
--ok-label="OK" --width=640)

ret=$?

if ((ret==0)); then
    echo "Done"
    rm $FILE
else
    echo "Keep"
fi
