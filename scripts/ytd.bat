yt-dlp -o "%%(playlist_title)s/%%(autonumber)s%%(title)s-%%(id)s.%%(ext)s" "%%(autonumber)s-%%(title)s.%%(ext)s" -f mp4  --download-archive archive.txt %* 
