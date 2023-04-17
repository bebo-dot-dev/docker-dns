FROM ubuntu/bind9:9.16-20.04_edge

RUN apt update \
  && apt install -y \
  iputils-ping

# Copy configuration files
COPY config/named.conf.options /etc/bind/
COPY config/named.conf.local /etc/bind/
COPY config/db.amazonaws.com /etc/bind/zones/

# Expose Ports
EXPOSE 53/tcp
EXPOSE 53/udp
EXPOSE 953/tcp

# Start the Name Service
CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf"]