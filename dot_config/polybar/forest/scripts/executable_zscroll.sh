# see man zscroll for documentation of the following parameters

zscroll --length 35 --before-text "Online " --delay 0.8 \
		--match-command "playerctl -s status" \
		--match-text "Playing" "--before-text '♪ '" \
    --match-text "" "--before-text ''" \
		--match-text "Paused" "--before-text '[P] ' --scroll 0" \
    --match-text "Stopped" "--before-text '[S] ' --scroll 0" \
		--update-check true "playerctl -s metadata title" &

wait
