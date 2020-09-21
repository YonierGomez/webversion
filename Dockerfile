FROM centos

LABEL maintainer "Yonier Gomez"

RUN yum -y update && yum -y install httpd

RUN echo "Web V2" > /var/www/html/index.html

EXPOSE 80

ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
