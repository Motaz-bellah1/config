#!/usr/bin/bash
while [[ true ]]; do
	ISYOUTUBE=$(xclip -selection clipboard -o | rg -o youtube)
	if [[ $ISYOUTUBE == "youtube" ]]; then
        echo -e "البرمجة\nالإلكترونيات\nعام" | dmenu | (xargs -I {}  yt-dlp --verbose -ci --download-archive "/tmp/archive.txt" --sub-lang "ar,en" --write-auto-sub --embed-subs --embed-metadata --format="bestvideo[height<=?480]+bestaudio/best" -o "/mnt/data/Videos/{}/%(title)s.%(ext)s" "$(xclip -o)") &
		sleep 1m
		echo " " | xclip -selection clipboard
	fi
	sleep 5s
done
