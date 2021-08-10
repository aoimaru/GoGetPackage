[app/sources/471892899.Dockerfile]
digraph {
  "sha256:9cc03229062931d60cca2366e0cc306c4499a5130898125de538006e2a77bbfc" [label="docker-image://docker.io/library/php:7.2-fpm-stretch" shape="ellipse"];
  "sha256:d19f56547c3618746b7cc60913422b0ddad9aa61fc4c184437d5b7fa3784e7b2" [label="/bin/sh -c apt-get update     && apt-get install -y        git unzip libxml2-dev libpng-dev libjpeg-dev libssl-dev libicu-dev        libcurl4-openssl-dev libmcrypt-dev postgresql-server-dev-all nginx supervisor     && apt-get autoremove -y     && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*     && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer" shape="box"];
  "sha256:a69abcd0552700f7641fc774ab9c5895c2333494f4366b5d21b8b3201b29b660" [label="/bin/sh -c docker-php-ext-install     opcache     bcmath     ctype     curl     dom     iconv     gd     gettext     intl     json     mysqli     pgsql     pcntl     pdo     ftp     pdo_mysql     pdo_pgsql     phar     simplexml     xmlrpc     zip" shape="box"];
  "sha256:943bbda893c25671cac0a632b71e29946a3ed3d798d7bf0c4a9d75f68417814f" [label="mkdir{path=/app}" shape="note"];
  "sha256:778cb47724f7677027322b354eb82f7d1a80d69cbedfe4991015b6dc332b9823" [label="local://context" shape="ellipse"];
  "sha256:49ab8afa355f19f3a341192bf7b887931655a35dbd8077d47596966d15bcd76c" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:b03378192aee732a8e43bf5d6469f444c81dcca347ab0301a0eff14c7f3f5ce6" [label="/bin/sh -c composer install --prefer-dist --optimize-autoloader" shape="box"];
  "sha256:191814bc5a5d2eaace9d5ec6fd0d75af6e15f659d3c97ddf8c2ebb1c7c9a1bc7" [label="copy{src=/config/supervisord.conf, dest=/etc/supervisor/conf.d/supervisord.conf}" shape="note"];
  "sha256:99e8ec55a3a772bd079204e1818e46370e9fde27ed6b777308c80f19a3cba20c" [label="copy{src=/config/default.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:f1785a237b9b87520dd3753fe28201e1a5d08a5355b71bed2dd16a864a09ab0c" [label="/bin/sh -c rm /etc/nginx/sites-available/default &&     mkdir -p /app &&     touch /run/nginx.pid &&     chmod -R a+w /run/nginx.pid /app /var/lib/nginx /var/log/nginx" shape="box"];
  "sha256:ae03fdf23affd79fcfa286881deb6232a3a0a768f12e2748c3090b9b73c08fc7" [label="copy{src=/proxy, dest=/}" shape="note"];
  "sha256:18a00fbde9d5b35ca653e0a4cd7ad551041326757fca6c20879dc39c724ebb56" [label="sha256:18a00fbde9d5b35ca653e0a4cd7ad551041326757fca6c20879dc39c724ebb56" shape="plaintext"];
  "sha256:9cc03229062931d60cca2366e0cc306c4499a5130898125de538006e2a77bbfc" -> "sha256:d19f56547c3618746b7cc60913422b0ddad9aa61fc4c184437d5b7fa3784e7b2" [label=""];
  "sha256:d19f56547c3618746b7cc60913422b0ddad9aa61fc4c184437d5b7fa3784e7b2" -> "sha256:a69abcd0552700f7641fc774ab9c5895c2333494f4366b5d21b8b3201b29b660" [label=""];
  "sha256:a69abcd0552700f7641fc774ab9c5895c2333494f4366b5d21b8b3201b29b660" -> "sha256:943bbda893c25671cac0a632b71e29946a3ed3d798d7bf0c4a9d75f68417814f" [label=""];
  "sha256:943bbda893c25671cac0a632b71e29946a3ed3d798d7bf0c4a9d75f68417814f" -> "sha256:49ab8afa355f19f3a341192bf7b887931655a35dbd8077d47596966d15bcd76c" [label=""];
  "sha256:778cb47724f7677027322b354eb82f7d1a80d69cbedfe4991015b6dc332b9823" -> "sha256:49ab8afa355f19f3a341192bf7b887931655a35dbd8077d47596966d15bcd76c" [label=""];
  "sha256:49ab8afa355f19f3a341192bf7b887931655a35dbd8077d47596966d15bcd76c" -> "sha256:b03378192aee732a8e43bf5d6469f444c81dcca347ab0301a0eff14c7f3f5ce6" [label=""];
  "sha256:b03378192aee732a8e43bf5d6469f444c81dcca347ab0301a0eff14c7f3f5ce6" -> "sha256:191814bc5a5d2eaace9d5ec6fd0d75af6e15f659d3c97ddf8c2ebb1c7c9a1bc7" [label=""];
  "sha256:778cb47724f7677027322b354eb82f7d1a80d69cbedfe4991015b6dc332b9823" -> "sha256:191814bc5a5d2eaace9d5ec6fd0d75af6e15f659d3c97ddf8c2ebb1c7c9a1bc7" [label=""];
  "sha256:191814bc5a5d2eaace9d5ec6fd0d75af6e15f659d3c97ddf8c2ebb1c7c9a1bc7" -> "sha256:99e8ec55a3a772bd079204e1818e46370e9fde27ed6b777308c80f19a3cba20c" [label=""];
  "sha256:778cb47724f7677027322b354eb82f7d1a80d69cbedfe4991015b6dc332b9823" -> "sha256:99e8ec55a3a772bd079204e1818e46370e9fde27ed6b777308c80f19a3cba20c" [label=""];
  "sha256:99e8ec55a3a772bd079204e1818e46370e9fde27ed6b777308c80f19a3cba20c" -> "sha256:f1785a237b9b87520dd3753fe28201e1a5d08a5355b71bed2dd16a864a09ab0c" [label=""];
  "sha256:f1785a237b9b87520dd3753fe28201e1a5d08a5355b71bed2dd16a864a09ab0c" -> "sha256:ae03fdf23affd79fcfa286881deb6232a3a0a768f12e2748c3090b9b73c08fc7" [label=""];
  "sha256:778cb47724f7677027322b354eb82f7d1a80d69cbedfe4991015b6dc332b9823" -> "sha256:ae03fdf23affd79fcfa286881deb6232a3a0a768f12e2748c3090b9b73c08fc7" [label=""];
  "sha256:ae03fdf23affd79fcfa286881deb6232a3a0a768f12e2748c3090b9b73c08fc7" -> "sha256:18a00fbde9d5b35ca653e0a4cd7ad551041326757fca6c20879dc39c724ebb56" [label=""];
}

