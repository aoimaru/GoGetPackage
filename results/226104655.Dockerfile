[app/sources/226104655.Dockerfile]
digraph {
  "sha256:9a04bfdadd0930feb03a97c8e419e2675d6c3430375a2ea743c9c079ec1d0df4" [label="docker-image://docker.io/library/php:7.2-fpm" shape="ellipse"];
  "sha256:b781d8ee0931ce0ff09ba5d2cf5911358023126cefb500aff67de61c4042f014" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:b24dc3add5a372635494c08b3357928a26ca6046f26cfdcccf9ee1bb06ffb806" [label="/bin/sh -c apt-get update && apt-get install -y         libfreetype6-dev         libjpeg62-turbo-dev         libmcrypt-dev         libpng-dev     && docker-php-ext-install -j$(nproc) iconv     && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/     && docker-php-ext-install -j$(nproc) gd     && pecl install mcrypt-1.0.1     && docker-php-ext-enable mcrypt" shape="box"];
  "sha256:994e095bdffe45aae732126d89ea56f737c021ed1c5780f27f391d3745977d79" [label="/bin/sh -c apt-get install -y     libmemcached-dev     git   && git clone https://github.com/php-memcached-dev/php-memcached /usr/src/php/ext/memcached   && cd /usr/src/php/ext/memcached && git checkout -b php7 origin/php7   && docker-php-ext-configure memcached   && docker-php-ext-install memcached" shape="box"];
  "sha256:08fa9b961321e60715af3a7613aacf175842b0d12ed16923f8bcb5bbb9be220b" [label="/bin/sh -c apt-get install -y         libicu-dev         zlib1g-dev         g++     && docker-php-ext-configure intl     && docker-php-ext-install intl" shape="box"];
  "sha256:1f31c41bd1060e136111cfb2962d6ecd02fba64fffb1664843ddd501b3fd3613" [label="/bin/sh -c docker-php-ext-install mbstring" shape="box"];
  "sha256:dbcd79d878221933f0a26782ec0dbc5f6ac25b35aaedcc143b2b41f6f8e718dc" [label="/bin/sh -c apt-get install -y libcurl4-openssl-dev     && docker-php-ext-install curl" shape="box"];
  "sha256:1cec8985ee885b30afe948b3ee552e386eae861c387605962506ccc5bb9de1b4" [label="/bin/sh -c docker-php-ext-install zip" shape="box"];
  "sha256:0d131c98ec302848d8e4e9fc3cfbed8a43743326ad9b4729d6951c51c7898cb3" [label="/bin/sh -c docker-php-ext-install json" shape="box"];
  "sha256:1c6ec2d31f6062a4efa90c2f9317b1a0e168e60c227a273d0bd660729fe05c87" [label="/bin/sh -c docker-php-ext-install pdo pdo_mysql opcache" shape="box"];
  "sha256:31fac59925add53277531337063313034df0913d10bf873024369026da7c3dae" [label="/bin/sh -c docker-php-ext-install mysqli" shape="box"];
  "sha256:2189ab4fb5a91413e9bee86c02e2de9694e97c0ff99cdfb1793b4dc5998a7604" [label="/bin/sh -c docker-php-ext-enable mysqli" shape="box"];
  "sha256:6d3fdd1a5274af3fcf1ef3eedbb6f46657c31b35ce2b657cd1aa3b45cc124795" [label="/bin/sh -c pecl install xdebug" shape="box"];
  "sha256:29973c2beaaa2e8220425bb438ab7674fc8793082c080ad1598fe10b049aed25" [label="/bin/sh -c docker-php-ext-enable xdebug     && echo \"xdebug.idekey = \\\"docker\\\"\" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini     && echo \"error_reporting = E_ALL\" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini     && echo \"display_startup_errors = On\" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini     && echo \"display_errors = On\" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini     && echo \"xdebug.remote_enable = on\" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini     && echo \"xdebug.remote_handler=dbgp\" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini     && echo \"xdebug.remote_connect_back = 0\" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini     && echo \"xdebug.var_display_max_depth=10\" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini     && echo \"xdebug.var_display_max_children=256\" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini     && echo \"xdebug.var_display_max_data=1024\" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini     && echo \"xdebug.remote_autostart=on\" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini     && echo \"xdebug.remote_port = 9000\" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini" shape="box"];
  "sha256:5dd95572ac846ac26907aa7a1ea0c93ad50759301d523a536752504a29780051" [label="/bin/sh -c usermod -u 1000 www-data" shape="box"];
  "sha256:8e24c4da5b4bd0dd131365b162b73ea32acf832809cf86f2e8e5866b213c8099" [label="/bin/sh -c echo 'date.timezone=\"America/Sao_Paulo\"' >> /usr/local/etc/php/conf.d/date.ini" shape="box"];
  "sha256:dec8e81fd7e43673a775f34a6a86c85f2379e79f16b04dbeb92867b5183e322a" [label="/bin/sh -c echo 'opcache.enable=1' >> /usr/local/etc/php/conf.d/opcache.conf" shape="box"];
  "sha256:10b3539ad2dd528e15cdbf538898aad2e2928056a4c4b9c6a963ded375481dd9" [label="/bin/sh -c echo 'opcache.validate_timestamps=1' >> /usr/local/etc/php/conf.d/opcache.conf" shape="box"];
  "sha256:cbd76ab56534b7047788c484b29766b7f9511564198aae55683feab83502e8f6" [label="/bin/sh -c echo 'opcache.fast_shutdown=1' >> /usr/local/etc/php/conf.d/opcache.conf" shape="box"];
  "sha256:b8af2777f89130112011f545d6b83cf45a382e049090f6df993fb9a25b4ce1f6" [label="sha256:b8af2777f89130112011f545d6b83cf45a382e049090f6df993fb9a25b4ce1f6" shape="plaintext"];
  "sha256:9a04bfdadd0930feb03a97c8e419e2675d6c3430375a2ea743c9c079ec1d0df4" -> "sha256:b781d8ee0931ce0ff09ba5d2cf5911358023126cefb500aff67de61c4042f014" [label=""];
  "sha256:b781d8ee0931ce0ff09ba5d2cf5911358023126cefb500aff67de61c4042f014" -> "sha256:b24dc3add5a372635494c08b3357928a26ca6046f26cfdcccf9ee1bb06ffb806" [label=""];
  "sha256:b24dc3add5a372635494c08b3357928a26ca6046f26cfdcccf9ee1bb06ffb806" -> "sha256:994e095bdffe45aae732126d89ea56f737c021ed1c5780f27f391d3745977d79" [label=""];
  "sha256:994e095bdffe45aae732126d89ea56f737c021ed1c5780f27f391d3745977d79" -> "sha256:08fa9b961321e60715af3a7613aacf175842b0d12ed16923f8bcb5bbb9be220b" [label=""];
  "sha256:08fa9b961321e60715af3a7613aacf175842b0d12ed16923f8bcb5bbb9be220b" -> "sha256:1f31c41bd1060e136111cfb2962d6ecd02fba64fffb1664843ddd501b3fd3613" [label=""];
  "sha256:1f31c41bd1060e136111cfb2962d6ecd02fba64fffb1664843ddd501b3fd3613" -> "sha256:dbcd79d878221933f0a26782ec0dbc5f6ac25b35aaedcc143b2b41f6f8e718dc" [label=""];
  "sha256:dbcd79d878221933f0a26782ec0dbc5f6ac25b35aaedcc143b2b41f6f8e718dc" -> "sha256:1cec8985ee885b30afe948b3ee552e386eae861c387605962506ccc5bb9de1b4" [label=""];
  "sha256:1cec8985ee885b30afe948b3ee552e386eae861c387605962506ccc5bb9de1b4" -> "sha256:0d131c98ec302848d8e4e9fc3cfbed8a43743326ad9b4729d6951c51c7898cb3" [label=""];
  "sha256:0d131c98ec302848d8e4e9fc3cfbed8a43743326ad9b4729d6951c51c7898cb3" -> "sha256:1c6ec2d31f6062a4efa90c2f9317b1a0e168e60c227a273d0bd660729fe05c87" [label=""];
  "sha256:1c6ec2d31f6062a4efa90c2f9317b1a0e168e60c227a273d0bd660729fe05c87" -> "sha256:31fac59925add53277531337063313034df0913d10bf873024369026da7c3dae" [label=""];
  "sha256:31fac59925add53277531337063313034df0913d10bf873024369026da7c3dae" -> "sha256:2189ab4fb5a91413e9bee86c02e2de9694e97c0ff99cdfb1793b4dc5998a7604" [label=""];
  "sha256:2189ab4fb5a91413e9bee86c02e2de9694e97c0ff99cdfb1793b4dc5998a7604" -> "sha256:6d3fdd1a5274af3fcf1ef3eedbb6f46657c31b35ce2b657cd1aa3b45cc124795" [label=""];
  "sha256:6d3fdd1a5274af3fcf1ef3eedbb6f46657c31b35ce2b657cd1aa3b45cc124795" -> "sha256:29973c2beaaa2e8220425bb438ab7674fc8793082c080ad1598fe10b049aed25" [label=""];
  "sha256:29973c2beaaa2e8220425bb438ab7674fc8793082c080ad1598fe10b049aed25" -> "sha256:5dd95572ac846ac26907aa7a1ea0c93ad50759301d523a536752504a29780051" [label=""];
  "sha256:5dd95572ac846ac26907aa7a1ea0c93ad50759301d523a536752504a29780051" -> "sha256:8e24c4da5b4bd0dd131365b162b73ea32acf832809cf86f2e8e5866b213c8099" [label=""];
  "sha256:8e24c4da5b4bd0dd131365b162b73ea32acf832809cf86f2e8e5866b213c8099" -> "sha256:dec8e81fd7e43673a775f34a6a86c85f2379e79f16b04dbeb92867b5183e322a" [label=""];
  "sha256:dec8e81fd7e43673a775f34a6a86c85f2379e79f16b04dbeb92867b5183e322a" -> "sha256:10b3539ad2dd528e15cdbf538898aad2e2928056a4c4b9c6a963ded375481dd9" [label=""];
  "sha256:10b3539ad2dd528e15cdbf538898aad2e2928056a4c4b9c6a963ded375481dd9" -> "sha256:cbd76ab56534b7047788c484b29766b7f9511564198aae55683feab83502e8f6" [label=""];
  "sha256:cbd76ab56534b7047788c484b29766b7f9511564198aae55683feab83502e8f6" -> "sha256:b8af2777f89130112011f545d6b83cf45a382e049090f6df993fb9a25b4ce1f6" [label=""];
}

