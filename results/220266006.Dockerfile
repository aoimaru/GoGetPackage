[app/sources/220266006.Dockerfile]
digraph {
  "sha256:75d535055c52dcd46ce9e37c1d6f080164326dad7769e90bd46e3a5b30b20930" [label="docker-image://docker.io/jdel/alpine:3.8" shape="ellipse"];
  "sha256:7990cc6a8012591de401c59d9c69b1ea58f5cec7271a0682f148aa50370422e6" [label="local://context" shape="ellipse"];
  "sha256:df0067e7048ec1110082990c3c4a003e9d971eb5f3b5aa2052b3f8e9b63c5fff" [label="copy{src=/, dest=/var/www/localhost/htdocs/}" shape="note"];
  "sha256:08e6224bcc19f71acb31aa878db4da8cf74c1155e48bbe7c9d331a9a6993f0cd" [label="/bin/sh -c apk update && apk add --no-cache apache2 php7-apache2 php7-phar php7-ctype php7-json  && apk add --virtual=.build-dependencies curl openssl php7 php7-openssl git  && rm -f /var/www/localhost/htdocs/index.html  && curl -sSL https://getcomposer.org/download/1.6.5/composer.phar -o /usr/local/bin/composer  && chmod +x /usr/local/bin/composer  && cd /var/www/localhost/htdocs  && composer install --no-dev   ; rm -f /usr/local/bin/composer  && apk del .build-dependencies  && rm -rf /var/cache/apk/*  && mkdir /run/apache2  && sed -i 's/Listen 80/Listen 8080/' /etc/apache2/httpd.conf  && sed -i 's/^variables_order = \"GPCS\"/variables_order = \"EGPCS\"/' /etc/php7/php.ini  && ln -sf /dev/stdout /var/log/apache2/access.log  && ln -sf /dev/stderr /var/log/apache2/error.log  && ln -sf /var/www/localhost/htdocs/packages /packages  && ln -sf /var/www/localhost/htdocs/cache /cache" shape="box"];
  "sha256:707fa105cfc41c346946aaa021eebcdb6d3843556ad2d40183730b2224b572c0" [label="sha256:707fa105cfc41c346946aaa021eebcdb6d3843556ad2d40183730b2224b572c0" shape="plaintext"];
  "sha256:75d535055c52dcd46ce9e37c1d6f080164326dad7769e90bd46e3a5b30b20930" -> "sha256:df0067e7048ec1110082990c3c4a003e9d971eb5f3b5aa2052b3f8e9b63c5fff" [label=""];
  "sha256:7990cc6a8012591de401c59d9c69b1ea58f5cec7271a0682f148aa50370422e6" -> "sha256:df0067e7048ec1110082990c3c4a003e9d971eb5f3b5aa2052b3f8e9b63c5fff" [label=""];
  "sha256:df0067e7048ec1110082990c3c4a003e9d971eb5f3b5aa2052b3f8e9b63c5fff" -> "sha256:08e6224bcc19f71acb31aa878db4da8cf74c1155e48bbe7c9d331a9a6993f0cd" [label=""];
  "sha256:08e6224bcc19f71acb31aa878db4da8cf74c1155e48bbe7c9d331a9a6993f0cd" -> "sha256:707fa105cfc41c346946aaa021eebcdb6d3843556ad2d40183730b2224b572c0" [label=""];
}

