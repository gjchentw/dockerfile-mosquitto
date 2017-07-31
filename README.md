# gjchen/mosquitto@Dockerhub
Alpine Linux with Mosquitto configured for MQTT services.
* Base docker image: https://hub.docker.com/r/gjchen/alpine/

Basic Usage:
```
docker run -d --name mosquitto gjchen/mosquitto
```

Run as a another UID for 1000:
```
docker run -d --name mosquitto \
	-e MOSQUITTO_OWNER=1000 \
	gjchen/mosquitto	
```

Default location for mosquitto.conf:
```
/etc/mosquitto/mosquitto.conf
```
