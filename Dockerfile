FROM centos:latest
LABEL maintainer="Stiven Ramírez Arango"
RUN yum -y install httpd
WORKDIR /var/www/html
COPY app /var/www/html
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80