xbacklight $1
notify-send.sh "brtctrl" --icon=/usr/share/icons/Papirus/48x48/apps/preferences-system-brightness-lock.svg  --replace-file=/tmp/brtctrlnotification "$(xbacklight -get | cut -d. -f1)%"
