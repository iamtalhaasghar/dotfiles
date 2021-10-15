xinput float $(xinput list | grep 'AT Translated Set 2 keyboard' | awk '{split($7,a,"="); print a[2]}')
