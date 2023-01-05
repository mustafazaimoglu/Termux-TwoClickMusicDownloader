echo '** Installer Started! **'

termux-setup-storage

echo 'Please, approve the request!'

sleep 4

yes | apt update

yes | apt upgrade

yes | pkg install python

yes | pkg install ffmpeg

pip install yt-dlp

mkdir -p /data/data/com.termux/files/home/storage/shared/Music

mkdir -p ~/.config/yt-dlp

echo '--no-mtime
-o /data/data/com.termux/files/home/storage/shared/Music/%(title)s.%(ext)s
-x --audio-format mp3 --audio-quality 320K' > ~/.config/yt-dlp/config

mkdir -p ~/bin

echo 'yt-dlp $1' > ~/bin/termux-url-opener

echo ''
echo 'Youtube Two Click MP3 Dowloader Installed Succesfully!'
echo 'Download directory : Music'
echo '..:: Coded By MKZ ::..'