#! /bin/bash

mkdir -p ./backend-mqtt/data ./backend-mqtt/config ./backend-mqtt/log
touch ./backend-mqtt/config/mosquitto.conf
touch ./backend-mqtt/config/pwfile
sudo echo 'persistence true
persistence_location /mosquitto/data
user mosquitto
listener 1883
allow_anonymous false
log_dest stdout
log_dest file /mosquitto/log/mosquitto.log
connection_messages true
password_file /mosquitto/config/pwfile' >> ./backend-mqtt/config/mosquitto.conf

mkdir -p ./node-mqtt/data ./node-mqtt/config ./node-mqtt/log
touch ./node-mqtt/config/mosquitto.conf
touch ./node-mqtt/config/pwfile
sudo echo 'persistence true
persistence_location /mosquitto/data
user mosquitto
listener 1883
allow_anonymous true
log_dest stdout
log_dest file /mosquitto/log/mosquitto.log
connection_messages true
password_file /mosquitto/config/pwfile' >> ./node-mqtt/config/mosquitto.conf

mkdir -p mongo-data
sudo chown -R $USER mongo-data
