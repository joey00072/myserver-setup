docker run -d \
  -e AUDIOBOOKSHELF_UID=99 \
  -e AUDIOBOOKSHELF_GID=100 \
  -p 8480:80 \
  -v /home/joey/media/Books/AudioBooks:/audiobooks \
  -v /home/joey/.config/audiobookshelf/config \
  -v /home/joey/.config/audiobookshelf/metadata:/metadata \
  --name audiobookshelf \
  ghcr.io/advplyr/audiobookshelf:latest