[app/sources/395202968.Dockerfile]
digraph {
  "sha256:0fc7be609058b20ce3c3db3478e50e9f6182543ddb64ea14618ad4a034003e69" [label="local://context" shape="ellipse"];
  "sha256:5e3ffce172abe029e14398c960f76178160392adccdc24ec33a7ba0bde79cc90" [label="docker-image://docker.io/library/php:5.6-apache" shape="ellipse"];
  "sha256:2053699cb65e50078f692a4b03f46e279b83df13f5bfa7757f0fd833a7e43236" [label="/bin/sh -c apt-get update && apt-get install -y     libfreetype6-dev     libjpeg62-turbo-dev     libmcrypt-dev     libpng12-dev     librecode-dev     libxml2-dev   && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/   && docker-php-ext-install -j$(nproc) gd mcrypt mysqli recode xmlrpc" shape="box"];
  "sha256:1ab9197dd4af2dce6a7142256f8a02848efe053b2285f9f4c66a402c079c0ab4" [label="copy{src=/, dest=/var/www/html}" shape="note"];
  "sha256:8f64d78e05e0e9209ca645bfc625b435658294a3eac7cf301971d0f1f94fffb1" [label="/bin/sh -c mv /var/www/html/htaccess /var/www/html/.htaccess   && chown -R www-data:www-data /var/www/html   && a2enmod rewrite" shape="box"];
  "sha256:38d4e1134b816a1ab286920249bd2d3ce4d3a1c31711761c8964baf087df9089" [label="sha256:38d4e1134b816a1ab286920249bd2d3ce4d3a1c31711761c8964baf087df9089" shape="plaintext"];
  "sha256:5e3ffce172abe029e14398c960f76178160392adccdc24ec33a7ba0bde79cc90" -> "sha256:2053699cb65e50078f692a4b03f46e279b83df13f5bfa7757f0fd833a7e43236" [label=""];
  "sha256:2053699cb65e50078f692a4b03f46e279b83df13f5bfa7757f0fd833a7e43236" -> "sha256:1ab9197dd4af2dce6a7142256f8a02848efe053b2285f9f4c66a402c079c0ab4" [label=""];
  "sha256:0fc7be609058b20ce3c3db3478e50e9f6182543ddb64ea14618ad4a034003e69" -> "sha256:1ab9197dd4af2dce6a7142256f8a02848efe053b2285f9f4c66a402c079c0ab4" [label=""];
  "sha256:1ab9197dd4af2dce6a7142256f8a02848efe053b2285f9f4c66a402c079c0ab4" -> "sha256:8f64d78e05e0e9209ca645bfc625b435658294a3eac7cf301971d0f1f94fffb1" [label=""];
  "sha256:8f64d78e05e0e9209ca645bfc625b435658294a3eac7cf301971d0f1f94fffb1" -> "sha256:38d4e1134b816a1ab286920249bd2d3ce4d3a1c31711761c8964baf087df9089" [label=""];
}

