yt-dlp -o "E:\%%(channel)s\%%(playlist_title)s\%%(playlist_index)05d-%%(title)s-%%(id)s.%%(ext)s" -f mp4  --download-archive archive.txt %* 
yt-dlp --write-auto-sub --sub-lang en --skip-download -o "E:\%%(channel)s\%%(playlist_title)s\%%(playlist_index)05d-%%(title)s-%%(id)s.%%(ext)s" %*
