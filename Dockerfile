FROM ubuntu:18.04
MAINTAINER vincent (padseeyew@gmail.com)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
EXPOSE 80

RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /varr/www/html/
ENTRYPOINT [“/usr/bin/nginx”, “-g”, “daemon off;”]
