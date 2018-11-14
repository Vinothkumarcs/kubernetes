FROM ubuntu
MAINTAINER vinoth <vinoram555@gmail.com>
RUN apt-get update
RUN apt-get install -y nginx
RUN mkdir /var/lock/nginx
ENV NGINX_RUN_USER www-data
ENV NGINX_RUN_GROUP www-data
ENV NGINX_LOCK_DIR /var/lock/nginx
ENV NGINX_PID_FILE /var/run/nginx.pid
ENV NGINX_LOG_DIR /var/log/nginx
ENV LANG c
CMD ["/usr/sbin/nginx", "-D", "FOREGROUND"]
EXPOSE 80
