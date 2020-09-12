From centos:latest
MAINTAINER amit
RUN yum install -y httpd\
zip\
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page258/induko.zip /var/www/html
WORKDIR /var/www/html
RUN unzip induko.zip
RUN cp -rvf induko/* .
RUN rm -rf induko induko.zip 
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
