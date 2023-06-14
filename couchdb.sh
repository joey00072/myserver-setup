docker run -d \
--name dbtest \
-it -e COUCHDB_USER=joey \
-e COUCHDB_PASSWORD=$PASSWD \
-v /home/joey/.config/couchdb/local.ini:/opt/couchdb/etc/local.ini \
-p 5984:5984 \
couchdb
