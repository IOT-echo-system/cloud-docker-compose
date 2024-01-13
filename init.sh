#! /bin/bash

mkdir -p ./mqtt/data ./mqtt/config ./mqtt/log
touch ./mqtt/config/mosquitto.conf
touch ./mqtt/config/pwfile
sudo echo 'persistence true
persistence_location /mosquitto/data
user mosquitto
listener 1883
allow_anonymous false
log_dest stdout
log_dest file /mosquitto/log/mosquitto.log
connection_messages true
password_file /mosquitto/config/pwfile' >> ./mqtt/config/mosquitto.conf

mkdir -p mongo-data
sudo chown -R $USER mongo-data
