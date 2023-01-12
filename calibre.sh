docker run -d \
  --name=calibre-web \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Kolkata \
  -e DOCKER_MODS=linuxserver/mods:universal-calibre `#optional` \
  -e OAUTHLIB_RELAX_TOKEN_SCOPE=1 `#optional` \
  -p 8680:8083 \
  -v /home/joey/.config/calibre:/config \
  -v /home/joey/media/Books/Books:/books \
  --restart unless-stopped \
  lscr.io/linuxserver/calibre-web:latest