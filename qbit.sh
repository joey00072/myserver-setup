docker run -d \
  --name=qbittorrent \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Europe/London \
  -e WEBUI_PORT=8180 \
  -p 8180:8180 \
  -p 6881:6881 \
  -p 6881:6881/udp \
  -v /home/joey/.config/qbit:/config \
  -v /home/joey/downloads:/downloads \
  --restart unless-stopped \
  lscr.io/linuxserver/qbittorrent:latest
