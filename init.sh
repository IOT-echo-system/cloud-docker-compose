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
password_file /mosquitto/config/pwfile' > ./backend-mqtt/config/mosquitto.conf

mkdir -p ./node-mqtt/data ./node-mqtt/config ./node-mqtt/log
touch ./node-mqtt/config/mosquitto.conf
touch ./node-mqtt/config/acl_file.conf
sudo echo 'persistence true
persistence_location /mosquitto/data
user mosquitto
listener 1883
allow_anonymous false
per_listener_settings false
plugin /usr/lib/mosquitto_dynamic_security.so
plugin_opt_config_file /mosquitto/config/dynamic-security.json
log_dest stdout
log_dest file /mosquitto/log/mosquitto.log
connection_messages true
acl_file /mosquitto/config/acl_file.conf' > ./node-mqtt/config/mosquitto.conf

mkdir -p mongo-data
sudo chown -R $USER mongo-data
