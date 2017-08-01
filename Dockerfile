FROM gjchen/alpine:3.6
MAINTAINER gjchen <gjchen.tw@gmail.com>

RUN	apk --no-cache --no-progress upgrade -f && \
	apk --no-cache --no-progress add mosquitto && \
	export
ADD	s6.d /etc/s6.d

ENV	MOSQUITTO_OWNER=root

EXPOSE	1883
VOLUME	["/etc/mosquitto/"]
