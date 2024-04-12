# Robotutor Tech IOT Plateform

## Steps to start
- start `sudo sh init.sh`
- create user in backend-mqtt
- `sudo docker exec -it backend-mqtt sh`
- `mosquitto_passwd -c /mosquitto/config/pwfile username`
- exit and restart the container
- create users in node-mqtt
- `sudo docker exec -it node-mqtt sh`
- `mosquitto_passwd -c /mosquitto/config/pwfile username` create 2 users board and node-bff
define the entries in acl_file.conf
```
user user-name
topic read/topic-name-with-wild-card  
topic write/topic-name-with-wild-card  
```