[app/sources/252668653.Dockerfile]
digraph {
  "sha256:d1fb2f18c3b6200da1518df6d0e10ecd815b9caa61805eee3eed591e7c3993e5" [label="local://context" shape="ellipse"];
  "sha256:6aff48ddc4e2e809eb605a422c68f78843ea9f316eedcde2dac9f586638f9881" [label="docker-image://docker.io/library/php:7.0-fpm" shape="ellipse"];
  "sha256:7dbc8e6cf19656b315fc392d34d7f1ca1812e58ecbb7506a04f7afebc0c55122" [label="/bin/sh -c mkdir /opt/laravel-pubsub" shape="box"];
  "sha256:6665a120b178501a72e86ff487aaa0b8f134bee95f196301ef119aae7e12625a" [label="mkdir{path=/opt/laravel-pubsub}" shape="note"];
  "sha256:635d2885399865657ea356e4fa079148bc9d8d61078e66b2f7d3b927d17e0548" [label="/bin/sh -c apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y         git         zlib1g-dev         unzip         python         && (             cd /tmp             && mkdir librdkafka             && cd librdkafka             && git clone https://github.com/edenhill/librdkafka.git .             && ./configure             && make             && make install         )     && rm -r /var/lib/apt/lists/*" shape="box"];
  "sha256:ac48070ed5d258443222925ff5f7b06566da8e68d99d124588dfd8809b4542fa" [label="/bin/sh -c docker-php-ext-install -j$(nproc) zip     && (         cd /tmp         && mkdir php-rdkafka         && cd php-rdkafka         && git clone https://github.com/arnaud-lb/php-rdkafka.git .         && git checkout php7         && phpize         && ./configure         && make -j$(nproc)         && make install     )     && rm -rf /tmp/php-rdkafka     && docker-php-ext-enable rdkafka" shape="box"];
  "sha256:7f32997efa587f66cfa99957b10a61b89496e6c91562ee9b67198d02d8231cc9" [label="/bin/sh -c curl -o /tmp/composer-setup.php https://getcomposer.org/installer     && curl -o /tmp/composer-setup.sig https://composer.github.io/installer.sig     && php -r \"if (hash('SHA384', file_get_contents('/tmp/composer-setup.php')) !== trim(file_get_contents('/tmp/composer-setup.sig'))) { unlink('/tmp/composer-setup.php'); echo 'Invalid installer' . PHP_EOL; exit(1); }\"     && php /tmp/composer-setup.php --no-ansi --install-dir=/usr/local/bin --filename=composer --version=1.1.0 && rm -rf /tmp/composer-setup.php" shape="box"];
  "sha256:961e23e7120fe14f2e0440512578d423582b05b864cf9d3d42e37addf6f0b1c2" [label="copy{src=/composer.json, dest=/opt/laravel-pubsub/}" shape="note"];
  "sha256:87a337240c684fce36e6657fce74548d7ec28eefc53b05c1f7967894e236c481" [label="/bin/sh -c composer install --no-autoloader --no-scripts --no-interaction" shape="box"];
  "sha256:0e2cf3c9569545bfb6b3622e3423789a13b2847cafa519cb80c657d576d6bc72" [label="/bin/sh -c composer require superbalist/php-pubsub-kafka" shape="box"];
  "sha256:a9f3308319418660ad496f7dae4cf6cc5cdeba40df424122be8c8d9514ccd134" [label="copy{src=/config, dest=/opt/laravel-pubsub/config}" shape="note"];
  "sha256:b125814f733e7e0ccdb2e47e82f98e82918d4dfbb9367a996a30ec329bfaba6a" [label="copy{src=/src, dest=/opt/laravel-pubsub/src}" shape="note"];
  "sha256:7f108fe8687c6266c5e35f29fcdaee8880d97fb901c490808cf33143ed896c08" [label="copy{src=/tests, dest=/opt/laravel-pubsub/tests}" shape="note"];
  "sha256:b7cc105823b1a44fbf22921ddf8c4f1c15592db3acba9650d3a38ef2714a1764" [label="copy{src=/phpunit.php, dest=/opt/laravel-pubsub/}" shape="note"];
  "sha256:5611a1b1ebff69eddadcfabc57b3fbfe9aae06a503b069a4a2f40583f52a1b42" [label="copy{src=/phpunit.xml, dest=/opt/laravel-pubsub/}" shape="note"];
  "sha256:87090518e7512443536a616672003992cac926ef3e8c43c44c5482a1b6daf95d" [label="/bin/sh -c composer dump-autoload --no-interaction" shape="box"];
  "sha256:359acea2277ef6729f76699247a72dff02c3f964406bbd8720f23d568bd5bbd2" [label="sha256:359acea2277ef6729f76699247a72dff02c3f964406bbd8720f23d568bd5bbd2" shape="plaintext"];
  "sha256:6aff48ddc4e2e809eb605a422c68f78843ea9f316eedcde2dac9f586638f9881" -> "sha256:7dbc8e6cf19656b315fc392d34d7f1ca1812e58ecbb7506a04f7afebc0c55122" [label=""];
  "sha256:7dbc8e6cf19656b315fc392d34d7f1ca1812e58ecbb7506a04f7afebc0c55122" -> "sha256:6665a120b178501a72e86ff487aaa0b8f134bee95f196301ef119aae7e12625a" [label=""];
  "sha256:6665a120b178501a72e86ff487aaa0b8f134bee95f196301ef119aae7e12625a" -> "sha256:635d2885399865657ea356e4fa079148bc9d8d61078e66b2f7d3b927d17e0548" [label=""];
  "sha256:635d2885399865657ea356e4fa079148bc9d8d61078e66b2f7d3b927d17e0548" -> "sha256:ac48070ed5d258443222925ff5f7b06566da8e68d99d124588dfd8809b4542fa" [label=""];
  "sha256:ac48070ed5d258443222925ff5f7b06566da8e68d99d124588dfd8809b4542fa" -> "sha256:7f32997efa587f66cfa99957b10a61b89496e6c91562ee9b67198d02d8231cc9" [label=""];
  "sha256:7f32997efa587f66cfa99957b10a61b89496e6c91562ee9b67198d02d8231cc9" -> "sha256:961e23e7120fe14f2e0440512578d423582b05b864cf9d3d42e37addf6f0b1c2" [label=""];
  "sha256:d1fb2f18c3b6200da1518df6d0e10ecd815b9caa61805eee3eed591e7c3993e5" -> "sha256:961e23e7120fe14f2e0440512578d423582b05b864cf9d3d42e37addf6f0b1c2" [label=""];
  "sha256:961e23e7120fe14f2e0440512578d423582b05b864cf9d3d42e37addf6f0b1c2" -> "sha256:87a337240c684fce36e6657fce74548d7ec28eefc53b05c1f7967894e236c481" [label=""];
  "sha256:87a337240c684fce36e6657fce74548d7ec28eefc53b05c1f7967894e236c481" -> "sha256:0e2cf3c9569545bfb6b3622e3423789a13b2847cafa519cb80c657d576d6bc72" [label=""];
  "sha256:0e2cf3c9569545bfb6b3622e3423789a13b2847cafa519cb80c657d576d6bc72" -> "sha256:a9f3308319418660ad496f7dae4cf6cc5cdeba40df424122be8c8d9514ccd134" [label=""];
  "sha256:d1fb2f18c3b6200da1518df6d0e10ecd815b9caa61805eee3eed591e7c3993e5" -> "sha256:a9f3308319418660ad496f7dae4cf6cc5cdeba40df424122be8c8d9514ccd134" [label=""];
  "sha256:a9f3308319418660ad496f7dae4cf6cc5cdeba40df424122be8c8d9514ccd134" -> "sha256:b125814f733e7e0ccdb2e47e82f98e82918d4dfbb9367a996a30ec329bfaba6a" [label=""];
  "sha256:d1fb2f18c3b6200da1518df6d0e10ecd815b9caa61805eee3eed591e7c3993e5" -> "sha256:b125814f733e7e0ccdb2e47e82f98e82918d4dfbb9367a996a30ec329bfaba6a" [label=""];
  "sha256:b125814f733e7e0ccdb2e47e82f98e82918d4dfbb9367a996a30ec329bfaba6a" -> "sha256:7f108fe8687c6266c5e35f29fcdaee8880d97fb901c490808cf33143ed896c08" [label=""];
  "sha256:d1fb2f18c3b6200da1518df6d0e10ecd815b9caa61805eee3eed591e7c3993e5" -> "sha256:7f108fe8687c6266c5e35f29fcdaee8880d97fb901c490808cf33143ed896c08" [label=""];
  "sha256:7f108fe8687c6266c5e35f29fcdaee8880d97fb901c490808cf33143ed896c08" -> "sha256:b7cc105823b1a44fbf22921ddf8c4f1c15592db3acba9650d3a38ef2714a1764" [label=""];
  "sha256:d1fb2f18c3b6200da1518df6d0e10ecd815b9caa61805eee3eed591e7c3993e5" -> "sha256:b7cc105823b1a44fbf22921ddf8c4f1c15592db3acba9650d3a38ef2714a1764" [label=""];
  "sha256:b7cc105823b1a44fbf22921ddf8c4f1c15592db3acba9650d3a38ef2714a1764" -> "sha256:5611a1b1ebff69eddadcfabc57b3fbfe9aae06a503b069a4a2f40583f52a1b42" [label=""];
  "sha256:d1fb2f18c3b6200da1518df6d0e10ecd815b9caa61805eee3eed591e7c3993e5" -> "sha256:5611a1b1ebff69eddadcfabc57b3fbfe9aae06a503b069a4a2f40583f52a1b42" [label=""];
  "sha256:5611a1b1ebff69eddadcfabc57b3fbfe9aae06a503b069a4a2f40583f52a1b42" -> "sha256:87090518e7512443536a616672003992cac926ef3e8c43c44c5482a1b6daf95d" [label=""];
  "sha256:87090518e7512443536a616672003992cac926ef3e8c43c44c5482a1b6daf95d" -> "sha256:359acea2277ef6729f76699247a72dff02c3f964406bbd8720f23d568bd5bbd2" [label=""];
}

