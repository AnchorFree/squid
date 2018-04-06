FROM alpine:3.7
LABEL maintainer="v.zorin@anchorfree.com"

RUN apk add --no-cache squid 
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
