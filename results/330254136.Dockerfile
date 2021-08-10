[app/sources/330254136.Dockerfile]
digraph {
  "sha256:6aff48ddc4e2e809eb605a422c68f78843ea9f316eedcde2dac9f586638f9881" [label="docker-image://docker.io/library/php:7.0-fpm" shape="ellipse"];
  "sha256:48138db5ccd2d17180eb08e00337283dfbe72da719a57991c5ce340864c74fa8" [label="/bin/sh -c docker-php-ext-install pdo_mysql" shape="box"];
  "sha256:8d207f62f92808c3c02bb6d3eae269d5e83f2635f1aa4eaf7ba992116ee76a17" [label="/bin/sh -c apt-get update && apt-get install -y         libmcrypt-dev     && docker-php-ext-install -j$(nproc) mcrypt     && docker-php-ext-install -j$(nproc) pdo" shape="box"];
  "sha256:cc308ddd69d34a07d454de9929980d7eb977207251005e1cad18f6c64a4e20ea" [label="/bin/sh -c apt-get install -y nginx  supervisor &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:76ecd0f31ee09b5335b55338f1bcf96345a2c5c57272e985578f21134b21e0ea" [label="local://context" shape="ellipse"];
  "sha256:89d8ac760711a24c36323331482c66633d019a9ea63025bfc7eeacbe351658b4" [label="copy{src=/, dest=/var/www/html}" shape="note"];
  "sha256:6514dbe7fee7db2f4b58e23219f28b66646173eb6f1f05ca732bfcc7c913de6c" [label="mkdir{path=/var/www/html}" shape="note"];
  "sha256:d856c3ea56e3176b21d421731c9bd4453af6030ed27a046eaa1bf73822e072e2" [label="/bin/sh -c rm /etc/nginx/sites-enabled/default" shape="box"];
  "sha256:3091a89658ce7efabecf902def858cfcf438c66c3144a59684e83a0fc83f9551" [label="copy{src=/docker/nginx/nginx.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:94cf901f34a24aa04c6cc0bafb4c2e79f8ee5aed212a981365bec2a4a9999fcc" [label="/bin/sh -c chmod +x ./entrypoint" shape="box"];
  "sha256:cdc33a0f9c92889f68178eb50de26f225f7427a32bb6d455c9b2cb7db38f8acb" [label="sha256:cdc33a0f9c92889f68178eb50de26f225f7427a32bb6d455c9b2cb7db38f8acb" shape="plaintext"];
  "sha256:6aff48ddc4e2e809eb605a422c68f78843ea9f316eedcde2dac9f586638f9881" -> "sha256:48138db5ccd2d17180eb08e00337283dfbe72da719a57991c5ce340864c74fa8" [label=""];
  "sha256:48138db5ccd2d17180eb08e00337283dfbe72da719a57991c5ce340864c74fa8" -> "sha256:8d207f62f92808c3c02bb6d3eae269d5e83f2635f1aa4eaf7ba992116ee76a17" [label=""];
  "sha256:8d207f62f92808c3c02bb6d3eae269d5e83f2635f1aa4eaf7ba992116ee76a17" -> "sha256:cc308ddd69d34a07d454de9929980d7eb977207251005e1cad18f6c64a4e20ea" [label=""];
  "sha256:cc308ddd69d34a07d454de9929980d7eb977207251005e1cad18f6c64a4e20ea" -> "sha256:89d8ac760711a24c36323331482c66633d019a9ea63025bfc7eeacbe351658b4" [label=""];
  "sha256:76ecd0f31ee09b5335b55338f1bcf96345a2c5c57272e985578f21134b21e0ea" -> "sha256:89d8ac760711a24c36323331482c66633d019a9ea63025bfc7eeacbe351658b4" [label=""];
  "sha256:89d8ac760711a24c36323331482c66633d019a9ea63025bfc7eeacbe351658b4" -> "sha256:6514dbe7fee7db2f4b58e23219f28b66646173eb6f1f05ca732bfcc7c913de6c" [label=""];
  "sha256:6514dbe7fee7db2f4b58e23219f28b66646173eb6f1f05ca732bfcc7c913de6c" -> "sha256:d856c3ea56e3176b21d421731c9bd4453af6030ed27a046eaa1bf73822e072e2" [label=""];
  "sha256:d856c3ea56e3176b21d421731c9bd4453af6030ed27a046eaa1bf73822e072e2" -> "sha256:3091a89658ce7efabecf902def858cfcf438c66c3144a59684e83a0fc83f9551" [label=""];
  "sha256:76ecd0f31ee09b5335b55338f1bcf96345a2c5c57272e985578f21134b21e0ea" -> "sha256:3091a89658ce7efabecf902def858cfcf438c66c3144a59684e83a0fc83f9551" [label=""];
  "sha256:3091a89658ce7efabecf902def858cfcf438c66c3144a59684e83a0fc83f9551" -> "sha256:94cf901f34a24aa04c6cc0bafb4c2e79f8ee5aed212a981365bec2a4a9999fcc" [label=""];
  "sha256:94cf901f34a24aa04c6cc0bafb4c2e79f8ee5aed212a981365bec2a4a9999fcc" -> "sha256:cdc33a0f9c92889f68178eb50de26f225f7427a32bb6d455c9b2cb7db38f8acb" [label=""];
}

