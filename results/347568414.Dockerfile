[app/sources/347568414.Dockerfile]
digraph {
  "sha256:469de9dcd442ea5b60fda4bc05f7e9661858bf288796fb9783724187ded32870" [label="docker-image://docker.io/library/php:7.1-fpm" shape="ellipse"];
  "sha256:e369570e8a4bdf6b77e063c9a83b03b57ef6c239bf86368c2ff52d43f1f5a159" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends         sudo         libicu-dev &&     docker-php-ext-install         mbstring         intl         opcache &&     pecl install apcu-$APCU_VERSION &&     docker-php-ext-enable apcu &&     apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* &&     echo \"short_open_tag = off\" >> /usr/local/etc/php/php.ini &&     echo \"date.timezone = Europe/Paris\" >> /usr/local/etc/php/conf.d/symfony.ini &&     echo \"opcache.max_accelerated_files = 20000\" >> /usr/local/etc/php/conf.d/symfony.ini &&     echo \"realpath_cache_size=4096K\" >> /usr/local/etc/php/conf.d/symfony.ini &&     echo \"realpath_cache_ttl=600\" >> /usr/local/etc/php/conf.d/symfony.ini" shape="box"];
  "sha256:85a08d96cc0e6b60cbf4a9f5d969b838ee2828b32bcaa8c60b8f07674011a5bd" [label="local://context" shape="ellipse"];
  "sha256:d7df1e69a456513c94d5bbf7b59d86b11d906ca33b35e3686d0fbe26fd0832e6" [label="copy{src=/bin/*, dest=/usr/local/bin/}" shape="note"];
  "sha256:acd3bc396a3e1b88b95d6707617b234951f26acf1d9c4c17c0097544c0fae8b0" [label="/bin/sh -c install-gosu.sh" shape="box"];
  "sha256:09a7e666b7c381696480ee97bf955e87b2ef30aae8a6393169c0a227be91139f" [label="sha256:09a7e666b7c381696480ee97bf955e87b2ef30aae8a6393169c0a227be91139f" shape="plaintext"];
  "sha256:469de9dcd442ea5b60fda4bc05f7e9661858bf288796fb9783724187ded32870" -> "sha256:e369570e8a4bdf6b77e063c9a83b03b57ef6c239bf86368c2ff52d43f1f5a159" [label=""];
  "sha256:e369570e8a4bdf6b77e063c9a83b03b57ef6c239bf86368c2ff52d43f1f5a159" -> "sha256:d7df1e69a456513c94d5bbf7b59d86b11d906ca33b35e3686d0fbe26fd0832e6" [label=""];
  "sha256:85a08d96cc0e6b60cbf4a9f5d969b838ee2828b32bcaa8c60b8f07674011a5bd" -> "sha256:d7df1e69a456513c94d5bbf7b59d86b11d906ca33b35e3686d0fbe26fd0832e6" [label=""];
  "sha256:d7df1e69a456513c94d5bbf7b59d86b11d906ca33b35e3686d0fbe26fd0832e6" -> "sha256:acd3bc396a3e1b88b95d6707617b234951f26acf1d9c4c17c0097544c0fae8b0" [label=""];
  "sha256:acd3bc396a3e1b88b95d6707617b234951f26acf1d9c4c17c0097544c0fae8b0" -> "sha256:09a7e666b7c381696480ee97bf955e87b2ef30aae8a6393169c0a227be91139f" [label=""];
}

