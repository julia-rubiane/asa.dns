FROM ubuntu:latest

RUN apt update -y

RUN apt install bind9 dnsutils -y 

CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]

COPY named.conf.local /etc/bind

EXPOSE 53/TCP
EXPOSE 53/UDP


