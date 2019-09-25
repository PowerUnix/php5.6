FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y curl
RUN apt update
RUN apt-get install -y apache2
RUN apt update
RUN apt-get install -y software-properties-common
RUN apt update
RUN apt-get install -y zip unzip
RUN apt-get update
RUN LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php
RUN apt-get update
RUN apt-get install -y php5.6 php5.6-mcrypt php5.6-mbstring php5.6-curl php5.6-cli php5.6-mysql php5.6-gd php5.6-intl php5.6-xsl php5.6-zip libapache2-mod-php5.6
RUN chown -R unix:root /var/www/html
WORKDIR /var/www/html
EXPOSE 80
