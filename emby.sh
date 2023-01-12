docker run -d \
  --name=emby \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Kolkata \
  -p 8097:8096 \
  -v /home/joey/.config/emby:/config \
  -v /home/joey/media/series:/data/tvshows \
  -v /home/joey/media/movies:/data/movies \
  -v /home/joey/media/Books:/data/Books \
  --restart unless-stopped \
  lscr.io/linuxserver/emby:latest