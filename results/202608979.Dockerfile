[app/sources/202608979.Dockerfile]
digraph {
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:55cc99727539701d39e8daeb038e320efbd0dcfc60b2ecbcfc35e73f813ce732" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends gnupg     && echo \"deb http://ppa.launchpad.net/ondrej/php/ubuntu bionic main\" > /etc/apt/sources.list.d/ondrej-php.list     && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 4F4EA0AAE5267A6C     && apt-get update     && apt-get -y --no-install-recommends install         ca-certificates         curl         unzip         php-apcu         php-apcu-bc         php7.3-cli         php7.3-curl         php7.3-json         php7.3-mbstring         php7.3-opcache         php7.3-readline         php7.3-xml         php7.3-zip     && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer     && composer global require hirak/prestissimo     && composer clear-cache     && apt-get clean     && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/* ~/.composer" shape="box"];
  "sha256:cb31e63150b2fc2ab1e9f558784482fba3977ca24f3d8541b822a3075ddcb3ba" [label="sha256:cb31e63150b2fc2ab1e9f558784482fba3977ca24f3d8541b822a3075ddcb3ba" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:55cc99727539701d39e8daeb038e320efbd0dcfc60b2ecbcfc35e73f813ce732" [label=""];
  "sha256:55cc99727539701d39e8daeb038e320efbd0dcfc60b2ecbcfc35e73f813ce732" -> "sha256:cb31e63150b2fc2ab1e9f558784482fba3977ca24f3d8541b822a3075ddcb3ba" [label=""];
}

