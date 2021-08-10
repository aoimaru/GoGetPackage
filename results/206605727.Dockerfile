[app/sources/206605727.Dockerfile]
digraph {
  "sha256:6aff48ddc4e2e809eb605a422c68f78843ea9f316eedcde2dac9f586638f9881" [label="docker-image://docker.io/library/php:7.0-fpm" shape="ellipse"];
  "sha256:7c225c77f9fd65358224152d2b552bec0a9b98e0f9b9885693daef28e3739e42" [label="local://context" shape="ellipse"];
  "sha256:a7866fcf5a887835b349d2f1ed6597cb7083bf4a613a0060136b87c233f9517a" [label="copy{src=/php.ini, dest=/usr/local/etc/php/}" shape="note"];
  "sha256:24d4671a3ba8177847538a346a6dfd612c607a36f36d0091bc0f6fe2f86b0fb5" [label="/bin/sh -c docker-php-ext-install mysqli" shape="box"];
  "sha256:b74b1d642a829c75fa57463660d64cb3cfe18c90f76545fdbcd1cf4bd844c8a2" [label="/bin/sh -c docker-php-ext-install mbstring" shape="box"];
  "sha256:5a176dc4c70352ad50e482d75f45658a121d311008da6f5838fa156bb2292405" [label="/bin/sh -c apt-get update     && apt-get install -y libpcre3 libpcre3-dev     && pecl install oauth     && touch /usr/local/etc/php/conf.d/oauth.ini     && echo 'extension=oauth.so' >> /usr/local/etc/php/conf.d/oauth.ini" shape="box"];
  "sha256:c04e613a33efc38bf30208c05efb9ef6b3c2c1d5c966cd1a04487f10dc499f86" [label="sha256:c04e613a33efc38bf30208c05efb9ef6b3c2c1d5c966cd1a04487f10dc499f86" shape="plaintext"];
  "sha256:6aff48ddc4e2e809eb605a422c68f78843ea9f316eedcde2dac9f586638f9881" -> "sha256:a7866fcf5a887835b349d2f1ed6597cb7083bf4a613a0060136b87c233f9517a" [label=""];
  "sha256:7c225c77f9fd65358224152d2b552bec0a9b98e0f9b9885693daef28e3739e42" -> "sha256:a7866fcf5a887835b349d2f1ed6597cb7083bf4a613a0060136b87c233f9517a" [label=""];
  "sha256:a7866fcf5a887835b349d2f1ed6597cb7083bf4a613a0060136b87c233f9517a" -> "sha256:24d4671a3ba8177847538a346a6dfd612c607a36f36d0091bc0f6fe2f86b0fb5" [label=""];
  "sha256:24d4671a3ba8177847538a346a6dfd612c607a36f36d0091bc0f6fe2f86b0fb5" -> "sha256:b74b1d642a829c75fa57463660d64cb3cfe18c90f76545fdbcd1cf4bd844c8a2" [label=""];
  "sha256:b74b1d642a829c75fa57463660d64cb3cfe18c90f76545fdbcd1cf4bd844c8a2" -> "sha256:5a176dc4c70352ad50e482d75f45658a121d311008da6f5838fa156bb2292405" [label=""];
  "sha256:5a176dc4c70352ad50e482d75f45658a121d311008da6f5838fa156bb2292405" -> "sha256:c04e613a33efc38bf30208c05efb9ef6b3c2c1d5c966cd1a04487f10dc499f86" [label=""];
}

