FROM ubuntu
MAINTAINER henrypoms (henrypoms@gmail.com)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
#ADD static-website-example/ /var/www/html/
EXPOSE 80
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/eazytrainingfr/static-website-example.git /var/www/html/
CMD [“nginx”, “-g”, “daemon off;”]


