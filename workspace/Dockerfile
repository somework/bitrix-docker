FROM bx-php-fpm:latest

MAINTAINER Igor Pinchuk <i.pinchuk.work@gmail.com>

RUN apt-get update && apt-get install -y \
    software-properties-common \
    libpq-dev \
    libmemcached-dev \
    git \
    curl \
    vim \
    nano \
    wget \
    libjpeg-dev \
    libpng12-dev \
    libfreetype6-dev \
    libssl-dev \
    libmcrypt-dev \
    mysql-client \
    openssh-server \
    --no-install-recommends \
    && rm -r /var/lib/apt/lists/*


# Add bin folder of composer to PATH.
#RUN echo "export PATH=${PATH}:/var/www/site/vendor/bin" >> ~/.bashrc
#RUN pecl install xdebug && docker-php-ext-enable xdebug
# Load xdebug Zend extension with phpunit command
#RUN echo "alias phpunit='php -dzend_extension=xdebug.so /var/www/site/vendor/bin/phpunit'" >> ~/.bashrc \


COPY .my.cnf .bashrc .inputrc /root/

#RUN usermod -u 1000 www-data
#RUN usermod -u 1000 docker-www-data

#RUN useradd --shell /bin/bash -u 1000 -o -c "" -m docker-www-data
RUN usermod -u 1000 docker-www-data


WORKDIR /var/www/site

RUN mkdir /var/run/sshd
RUN echo 'root:bitrix' | chpasswd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

RUN echo "root:SuperSecretPass214321d9821" | chpasswd

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
