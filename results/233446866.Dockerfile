[app/sources/233446866.Dockerfile]
digraph {
  "sha256:b5cb6cd69351505f142be9a97c11fbd904885167463eaaba4c6e8b6ff780fda1" [label="docker-image://docker.io/library/php:fpm" shape="ellipse"];
  "sha256:532f3097298b7e8dc01d4c5ee771a6ebfc885b3fb683c55e004ed3e57eb1cebe" [label="/bin/sh -c apt-get update && apt-get install -y git zip unzip" shape="box"];
  "sha256:032693497c4e66b9b449024d6cf52fd9d142961be3e41044a5674778d4324ea7" [label="/bin/sh -c docker-php-ext-install pdo pdo_mysql" shape="box"];
  "sha256:00e6de347265278a2f588f18cccb49d1dcdb95364599814656b353af9a21a81f" [label="/bin/sh -c php -r \"copy('https://getcomposer.org/installer', 'composer-setup.php');\" \t\t&& php composer-setup.php --filename=composer --install-dir=/usr/local/bin --version=$COMPOSER_VERSION \t\t&& php -r \"unlink('composer-setup.php');\"" shape="box"];
  "sha256:4997b0925838c7c90e66206dabf2e69f27ee6717ad6b3c9ea4545981f1c79f6e" [label="sha256:4997b0925838c7c90e66206dabf2e69f27ee6717ad6b3c9ea4545981f1c79f6e" shape="plaintext"];
  "sha256:b5cb6cd69351505f142be9a97c11fbd904885167463eaaba4c6e8b6ff780fda1" -> "sha256:532f3097298b7e8dc01d4c5ee771a6ebfc885b3fb683c55e004ed3e57eb1cebe" [label=""];
  "sha256:532f3097298b7e8dc01d4c5ee771a6ebfc885b3fb683c55e004ed3e57eb1cebe" -> "sha256:032693497c4e66b9b449024d6cf52fd9d142961be3e41044a5674778d4324ea7" [label=""];
  "sha256:032693497c4e66b9b449024d6cf52fd9d142961be3e41044a5674778d4324ea7" -> "sha256:00e6de347265278a2f588f18cccb49d1dcdb95364599814656b353af9a21a81f" [label=""];
  "sha256:00e6de347265278a2f588f18cccb49d1dcdb95364599814656b353af9a21a81f" -> "sha256:4997b0925838c7c90e66206dabf2e69f27ee6717ad6b3c9ea4545981f1c79f6e" [label=""];
}

