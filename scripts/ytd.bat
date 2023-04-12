yt-dlp -o "E:\%%(playlist_title)s/%%(autonumber)s-%%(title)s-%%(id)s.%%(ext)s" -f mp4  --download-archive archive.txt %* 
yt-dlp --write-auto-sub --sub-lang en --skip-download -o "E:\%%(playlist_title)s/%%(autonumber)s-%%(title)s-%%(id)s.%%(ext)s" %*
