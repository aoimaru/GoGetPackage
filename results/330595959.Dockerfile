[app/sources/330595959.Dockerfile]
digraph {
  "sha256:d595efb2a6345f30c6c7a6f1d997f21b0dd85f01edea2964735cd45aa9a21575" [label="local://context" shape="ellipse"];
  "sha256:c4a734815159ec4c8f4a009a45c1f1a28116c3d6a8dc0a1cea2e0a74ca7c9acf" [label="docker-image://docker.io/library/php:7.3-cli-alpine" shape="ellipse"];
  "sha256:b46a577c1baf034467a480254b3eedd269808c388aa2544ba82d38c65b83b2e3" [label="/bin/sh -c set -xe     && apk update     && apk add  libpq postgresql-dev libevent-dev autoconf zlib-dev g++ libtool make libzip-dev     && apk add --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ gnu-libiconv     && docker-php-ext-install         bcmath         pcntl         mbstring         sysvsem         zip         pgsql     && apk add gnu-libiconv --update-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ --allow-untrusted     && docker-php-ext-install sockets     && pecl install event     && docker-php-ext-enable event     && mv /usr/local/etc/php/conf.d/docker-php-ext-event.ini /usr/local/etc/php/conf.d/docker-php-ext-zz-event.ini     && pecl install raphf     && docker-php-ext-enable raphf     && pecl install pq     && echo \"extension=pq.so\" > /usr/local/etc/php/conf.d/pq.ini \t&& rm -rf /tmp/* /var/cache/apk/*" shape="box"];
  "sha256:ff0ff6ebf2db0d75c6486a5b373713f0963f83aa7399216704a8f425ad5e3da2" [label="/bin/sh -c curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer    && chmod +x /usr/local/bin/composer    && composer global require hirak/prestissimo    && composer clear-cache" shape="box"];
  "sha256:0467c84557d77322672b28606322d9822e3442785c7f2197d21342f5484c1fd1" [label="copy{src=/tools/*, dest=/tools/}" shape="note"];
  "sha256:bf69b000cb1302aa77cf40a2854fd2119a6a528b5b67e0f0ee1045ebf574df46" [label="sha256:bf69b000cb1302aa77cf40a2854fd2119a6a528b5b67e0f0ee1045ebf574df46" shape="plaintext"];
  "sha256:c4a734815159ec4c8f4a009a45c1f1a28116c3d6a8dc0a1cea2e0a74ca7c9acf" -> "sha256:b46a577c1baf034467a480254b3eedd269808c388aa2544ba82d38c65b83b2e3" [label=""];
  "sha256:b46a577c1baf034467a480254b3eedd269808c388aa2544ba82d38c65b83b2e3" -> "sha256:ff0ff6ebf2db0d75c6486a5b373713f0963f83aa7399216704a8f425ad5e3da2" [label=""];
  "sha256:ff0ff6ebf2db0d75c6486a5b373713f0963f83aa7399216704a8f425ad5e3da2" -> "sha256:0467c84557d77322672b28606322d9822e3442785c7f2197d21342f5484c1fd1" [label=""];
  "sha256:d595efb2a6345f30c6c7a6f1d997f21b0dd85f01edea2964735cd45aa9a21575" -> "sha256:0467c84557d77322672b28606322d9822e3442785c7f2197d21342f5484c1fd1" [label=""];
  "sha256:0467c84557d77322672b28606322d9822e3442785c7f2197d21342f5484c1fd1" -> "sha256:bf69b000cb1302aa77cf40a2854fd2119a6a528b5b67e0f0ee1045ebf574df46" [label=""];
}

