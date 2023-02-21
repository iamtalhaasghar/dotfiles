xinput float $(xinput list | grep 'bcm5974' | awk '{split($4,a,"="); print a[2]}')
