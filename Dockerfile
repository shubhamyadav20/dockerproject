FROM centos:latest
MAINTAINER shubhamyadav.sy544@gmail.com
RUN yum install -y httpd zip unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page273/bakery.zip /var/www/html
WORKDIR /var/www/html
RUN unzip bakery.zip
RUN cp -rvf bakery/* .
RUN rm -rf __MACOSX bakery bakery.zip
CMD ["/usr/sbin/httpd","-D", "FOREGROUND"]
EXPOSE 80
