# vpn-reverse-squid
Generic squid container


Docker-compose example
```
---
version: '2'
services:
  squid:
    container_name: squid
    image: "anchorfree/squid"
    volumes:
      - /etc/squid/:/etc/squid/
      - /var/log/squid:/var/log:rw
```
