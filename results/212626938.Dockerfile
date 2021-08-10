[app/sources/212626938.Dockerfile]
digraph {
  "sha256:4bf229322b947d5d0863261d76231bd90752d4c586d0590da457278647c78fc6" [label="docker-image://docker.io/library/php:7.0-cli" shape="ellipse"];
  "sha256:e6c650caa28a58de15584bd08b9e544c434dd7739f4332051d68ec47bdd3449f" [label="/bin/sh -c apt-get update -yqq     && apt-get install git zlib1g-dev libsqlite3-dev -y     && docker-php-ext-install zip     && docker-php-ext-install pdo_mysql     && docker-php-ext-install pdo_sqlite" shape="box"];
  "sha256:d48e215a1e3075f89f61b5176deff3657e8fcdc243ee23a9c1867046df9ae566" [label="/bin/sh -c curl -fsSL https://getcomposer.org/installer | php     && mv composer.phar /usr/local/bin/composer     && composer global require phpunit/phpunit ^6.2 --no-progress --no-scripts --no-interaction" shape="box"];
  "sha256:27acea22326d156cb477a62bcf49d3e4e103f07cd8f3ab55137ad3ebc7a2768f" [label="/bin/sh -c pecl install xdebug     && echo 'zend_extension=/usr/local/lib/php/extensions/no-debug-non-zts-20151012/xdebug.so' >         /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini     && php -m | grep xdebug" shape="box"];
  "sha256:dacbb46573f946392971dc88935b92297fe230d4acbd1a74e5625f7da2363c5c" [label="sha256:dacbb46573f946392971dc88935b92297fe230d4acbd1a74e5625f7da2363c5c" shape="plaintext"];
  "sha256:4bf229322b947d5d0863261d76231bd90752d4c586d0590da457278647c78fc6" -> "sha256:e6c650caa28a58de15584bd08b9e544c434dd7739f4332051d68ec47bdd3449f" [label=""];
  "sha256:e6c650caa28a58de15584bd08b9e544c434dd7739f4332051d68ec47bdd3449f" -> "sha256:d48e215a1e3075f89f61b5176deff3657e8fcdc243ee23a9c1867046df9ae566" [label=""];
  "sha256:d48e215a1e3075f89f61b5176deff3657e8fcdc243ee23a9c1867046df9ae566" -> "sha256:27acea22326d156cb477a62bcf49d3e4e103f07cd8f3ab55137ad3ebc7a2768f" [label=""];
  "sha256:27acea22326d156cb477a62bcf49d3e4e103f07cd8f3ab55137ad3ebc7a2768f" -> "sha256:dacbb46573f946392971dc88935b92297fe230d4acbd1a74e5625f7da2363c5c" [label=""];
}

