FROM fedora
MAINTAINER ajthakur "ajthakur"
RUN yum install httpd -y
# this is apache httpd web server
WORKDIR /var/www/html/
ADD . .
EXPOSE 80
ENTRYPOINT httpd -DFOREGROUND
# cant write systemctl start httpd
