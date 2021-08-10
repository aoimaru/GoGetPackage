[app/sources/434860435.Dockerfile]
digraph {
  "sha256:e476f5cfe19aaff7ee25cad220b8a9e53109beff80ff32fa9df745e68ddaf3f5" [label="docker-image://docker.io/library/php:apache" shape="ellipse"];
  "sha256:4cd865c8dd96e8a79409dece250ad3afb6ce35a5ac178d2003b9418bcc3526a9" [label="/bin/sh -c apt-get update     && apt-get install -y         libpq-dev         librabbitmq-dev     && rm -rf /var/lib/apt/lists/*     && docker-php-ext-install -j$(nproc) pdo pdo_pgsql     && pecl install amqp     && docker-php-ext-enable amqp     && mkdir -p /data/workflows /data/dbfiles     && chown www-data /data/workflows /data/dbfiles" shape="box"];
  "sha256:b6c17cd71434ef2c83717e6e4814f3ad5b6b1a0dd163a60d078ae1858eb5ddb2" [label="local://context" shape="ellipse"];
  "sha256:3475ad8187b8fa3f7a7905c6777d0ebd5f49340e56b23f266b65f6f12491ad59" [label="copy{src=/documentation/index_vm.html, dest=/var/www/html/index.html}" shape="note"];
  "sha256:db02caa5106aac0ec428b7226ba911b1e089298a4a197cc79dcf6b3f622ebed4" [label="copy{src=/web, dest=/var/www/html/pecan/}" shape="note"];
  "sha256:238810273265c76770ecd0059dd439fc26dc1fc1fbfa7a04e2e80d219e966353" [label="copy{src=/docker/web/config.docker.php, dest=/var/www/html/pecan/config.php}" shape="note"];
  "sha256:364084f712a1fe24344241996080327cd2d7965d74ae59ee16c0c498f8515880" [label="sha256:364084f712a1fe24344241996080327cd2d7965d74ae59ee16c0c498f8515880" shape="plaintext"];
  "sha256:e476f5cfe19aaff7ee25cad220b8a9e53109beff80ff32fa9df745e68ddaf3f5" -> "sha256:4cd865c8dd96e8a79409dece250ad3afb6ce35a5ac178d2003b9418bcc3526a9" [label=""];
  "sha256:4cd865c8dd96e8a79409dece250ad3afb6ce35a5ac178d2003b9418bcc3526a9" -> "sha256:3475ad8187b8fa3f7a7905c6777d0ebd5f49340e56b23f266b65f6f12491ad59" [label=""];
  "sha256:b6c17cd71434ef2c83717e6e4814f3ad5b6b1a0dd163a60d078ae1858eb5ddb2" -> "sha256:3475ad8187b8fa3f7a7905c6777d0ebd5f49340e56b23f266b65f6f12491ad59" [label=""];
  "sha256:3475ad8187b8fa3f7a7905c6777d0ebd5f49340e56b23f266b65f6f12491ad59" -> "sha256:db02caa5106aac0ec428b7226ba911b1e089298a4a197cc79dcf6b3f622ebed4" [label=""];
  "sha256:b6c17cd71434ef2c83717e6e4814f3ad5b6b1a0dd163a60d078ae1858eb5ddb2" -> "sha256:db02caa5106aac0ec428b7226ba911b1e089298a4a197cc79dcf6b3f622ebed4" [label=""];
  "sha256:db02caa5106aac0ec428b7226ba911b1e089298a4a197cc79dcf6b3f622ebed4" -> "sha256:238810273265c76770ecd0059dd439fc26dc1fc1fbfa7a04e2e80d219e966353" [label=""];
  "sha256:b6c17cd71434ef2c83717e6e4814f3ad5b6b1a0dd163a60d078ae1858eb5ddb2" -> "sha256:238810273265c76770ecd0059dd439fc26dc1fc1fbfa7a04e2e80d219e966353" [label=""];
  "sha256:238810273265c76770ecd0059dd439fc26dc1fc1fbfa7a04e2e80d219e966353" -> "sha256:364084f712a1fe24344241996080327cd2d7965d74ae59ee16c0c498f8515880" [label=""];
}

