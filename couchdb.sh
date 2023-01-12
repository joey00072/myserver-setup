docker run -d \
-it -e COUCHDB_USER=joey \
-e COUCHDB_PASSWORD=!Joey@9822 \
-v /home/joey/.config/couchdb/local.ini:/opt/couchdb/etc/local.ini \
-p 5984:5984 \
couchdb