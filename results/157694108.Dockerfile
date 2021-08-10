[app/sources/157694108.Dockerfile]
digraph {
  "sha256:9a04bfdadd0930feb03a97c8e419e2675d6c3430375a2ea743c9c079ec1d0df4" [label="docker-image://docker.io/library/php:7.2-fpm" shape="ellipse"];
  "sha256:3c6f3bd4457af582b949e454bb62022d74e33d29c82f46989e13b8f00ece52b9" [label="mkdir{path=/var/www}" shape="note"];
  "sha256:c5127fcd9d9d22719b391f9d8d983f4b6336ef540e1155a87c4e893d2f58d5f1" [label="/bin/sh -c apt-get update && apt-get install -y         git         libzip-dev         zip     && docker-php-ext-configure zip --with-libzip     && docker-php-ext-install         zip     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:3fe5cfdc8ca558b89e16f99a4c66ff6d2d1c35e2fe8b36e95b3a57951b0cfb4c" [label="/bin/sh -c curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer     && composer global require hirak/prestissimo --no-progress --no-suggest --no-interaction" shape="box"];
  "sha256:890ac812fff276e73ca8fbda0c48bc409f629becfaa824b1dd2abc2bda683ac9" [label="sha256:890ac812fff276e73ca8fbda0c48bc409f629becfaa824b1dd2abc2bda683ac9" shape="plaintext"];
  "sha256:9a04bfdadd0930feb03a97c8e419e2675d6c3430375a2ea743c9c079ec1d0df4" -> "sha256:3c6f3bd4457af582b949e454bb62022d74e33d29c82f46989e13b8f00ece52b9" [label=""];
  "sha256:3c6f3bd4457af582b949e454bb62022d74e33d29c82f46989e13b8f00ece52b9" -> "sha256:c5127fcd9d9d22719b391f9d8d983f4b6336ef540e1155a87c4e893d2f58d5f1" [label=""];
  "sha256:c5127fcd9d9d22719b391f9d8d983f4b6336ef540e1155a87c4e893d2f58d5f1" -> "sha256:3fe5cfdc8ca558b89e16f99a4c66ff6d2d1c35e2fe8b36e95b3a57951b0cfb4c" [label=""];
  "sha256:3fe5cfdc8ca558b89e16f99a4c66ff6d2d1c35e2fe8b36e95b3a57951b0cfb4c" -> "sha256:890ac812fff276e73ca8fbda0c48bc409f629becfaa824b1dd2abc2bda683ac9" [label=""];
}

