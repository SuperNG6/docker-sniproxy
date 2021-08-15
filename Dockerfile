FROM alpine

RUN set -x \
	&& apk add --no-cache sniproxy \
	&& rm -rf /var/cache/apk/*

WORKDIR /etc/sniproxy

EXPOSE 443

CMD ["/usr/sbin/sniproxy","-c","/etc/sniproxy/sniproxy.conf","-f"]