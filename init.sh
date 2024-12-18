#! /bin/bash

mkdir -p ./node-mqtt/data ./node-mqtt/config ./node-mqtt/log
touch ./node-mqtt/config/mosquitto.conf
touch ./node-mqtt/config/acl_file.conf
touch ./node-mqtt/config/pwfile
sudo echo 'persistence true
persistence_location /mosquitto/data
user mosquitto
listener 1883
allow_anonymous false
log_dest stdout
log_dest file /mosquitto/log/mosquitto.log
connection_messages true
acl_file /mosquitto/config/acl_file.conf
password_file /mosquitto/config/pwfile' > ./node-mqtt/config/mosquitto.conf

mkdir -p mongo-data
sudo chown -R $USER mongo-data
