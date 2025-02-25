FROM centos: stream
MAINTAINER ramesh.moramesh@gmail.com
RUN dnf install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page272/evolve.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip evolve.zip
RUN cp -rvf evolve/* .
RUN rm -rf evolve evolve.zip
CMD ["/usr/sbin/httpd", "-d", "FOREGROUND"]
EXPOSE 80
