docker run  \
  --rm -it \
  -p 6080:6080 \
  -v fgc:/fgc/data \
  --pull=always ghcr.io/vogler/free-games-claimer \
  bash -c "node epic-games.js; node gog.js"
