#!/bin/bash
HELP_MSG="Use -b for background color, -f for foreground color, or -c for cursor color.";

# Loads colors from wal into shell
source ~/.cache/wal/colors.sh;

# Closes any open color references
echo -e "\${color}";

# Loops through flags
# b for background, f for foreground, c for cursor, and h for help message.
while getopts 'bfch0123456789' FLAGS; do
    case "${FLAGS}" in
        0) echo -e "\${color "$color0"}" | tr -d '#' ;;
        1) echo -e "\${color "$color1"}" | tr -d '#' ;;
        2) echo -e "\${color "$color2"}" | tr -d '#' ;;
        3) echo -e "\${color "$color3"}" | tr -d '#' ;;
        4) echo -e "\${color "$color4"}" | tr -d '#' ;;
        5) echo -e "\${color "$color5"}" | tr -d '#' ;;
        6) echo -e "\${color "$color6"}" | tr -d '#' ;;
        7) echo -e "\${color "$color7"}" | tr -d '#' ;;
        8) echo -e "\${color "$color8"}" | tr -d '#' ;;
        9) echo -e "\${color "$color9"}" | tr -d '#' ;;
        b) echo -e "\${color "$background"}" | tr -d '#' ;;
        f) echo -e "\${color "$foreground"}" | tr -d '#' ;;
        c) echo -e "\${color "$cursor"}" | tr -d '#' ;; 
        h) echo $HELP_MSG ;;
 
       *) echo -e "\n"$HELP_MSG ;;
    esac
done
