docker run -d\
  --name=jellyfin \
  -e PUID=1000 \
  -e PGID=1000 \
  -p 8096:8096 \
  -v /home/joey/.config/jellyfin:/config \
  -v /home/joey/media/series:/data/tvshows \
  -v /home/joey/media/movies:/data/movies \
  -v /home/joey/media/Books:/data/Books \
  --restart unless-stopped \
  lscr.io/linuxserver/jellyfin:latest
