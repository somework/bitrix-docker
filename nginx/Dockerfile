FROM nginx:latest

MAINTAINER Igor Pinchuk <i.pinchuk.work@gmail.com>

RUN apt-get update \
  && apt-get install -y \
      curl \
      net-tools \
      jq \
      libgd-tools \
      libgd-dev \
  && rm -rf /var/lib/apt/lists/*

ADD nginx.conf /etc/nginx/
ADD imagefilter.conf bx.conf /etc/nginx/sites-available/
ADD upstream.conf /etc/nginx/conf.d/upstream.conf
ADD init.sh /init.sh

RUN usermod -u 1000 www-data

RUN mkdir -p /var/cache/nginx/resized \
  && chown -R www-data. /var/cache/nginx/resized \
  && rm -rf /etc/nginx/conf.d/default.conf

EXPOSE 80 443 9001

CMD ["/init.sh"]
