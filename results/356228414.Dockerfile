[app/sources/356228414.Dockerfile]
digraph {
  "sha256:627a3f7acbe0b64f6eb645d5103516a10cb5337aedc24890b23c441c9d05f3aa" [label="docker-image://docker.io/library/php:5.6-fpm" shape="ellipse"];
  "sha256:b124e2fd5023d1fd49243dfd5ec5fb5c8a1abcf13d23b178104ee4bf34962157" [label="/bin/sh -c apt-get update && apt-get install -y         curl         git         php5-cli         php5-mcrypt         php5-gd         php5-xdebug         php5-curl         php5-mysql" shape="box"];
  "sha256:b0a870d32d2a798b4e3ff3f2bc42d5262f0e4be070d43f218ed5d12a277e2fff" [label="/bin/sh -c docker-php-ext-install bcmath" shape="box"];
  "sha256:e17f85be05c5e41dc66d2ea7cb0b0d498eb30b1fdb9c3961c4979ad071b5f073" [label="/bin/sh -c docker-php-ext-install mbstring" shape="box"];
  "sha256:bab7c17c521636103b922f950a6b337d37e4022a33e09cefae6a05d958cb22f4" [label="/bin/sh -c docker-php-ext-install pdo" shape="box"];
  "sha256:562f09b4dccc0dc70102ded397a199498ac3c61de548694794a366d28da85612" [label="/bin/sh -c docker-php-ext-install pdo_mysql" shape="box"];
  "sha256:2013b4c1d39bd174be1f862b09eba3ac02971c68c5efd71a3af0425bd3e01ea1" [label="/bin/sh -c docker-php-ext-install tokenizer" shape="box"];
  "sha256:04d56cb077ce80feca2bb622c8a9022620cfbe47b1f5935a52b6d49702c01887" [label="/bin/sh -c apt-get install -y zlib1g-dev     && docker-php-ext-install zip" shape="box"];
  "sha256:5897319b7ebefbb6ef5e7d908adddc88a37bc794323d46df9aa6bc8fa1cc96fb" [label="/bin/sh -c curl -sS https://getcomposer.org/installer | php" shape="box"];
  "sha256:1bf9a479a16847b9f3be4d04b3e0a4a40ac93f8e64b633fab06e0113c628c9a9" [label="/bin/sh -c mv composer.phar /usr/local/bin/composer" shape="box"];
  "sha256:4c33d098f40cd10a46d9d74cb4707534a84a9bd30e5600a24e9dfceb473c227a" [label="sha256:4c33d098f40cd10a46d9d74cb4707534a84a9bd30e5600a24e9dfceb473c227a" shape="plaintext"];
  "sha256:627a3f7acbe0b64f6eb645d5103516a10cb5337aedc24890b23c441c9d05f3aa" -> "sha256:b124e2fd5023d1fd49243dfd5ec5fb5c8a1abcf13d23b178104ee4bf34962157" [label=""];
  "sha256:b124e2fd5023d1fd49243dfd5ec5fb5c8a1abcf13d23b178104ee4bf34962157" -> "sha256:b0a870d32d2a798b4e3ff3f2bc42d5262f0e4be070d43f218ed5d12a277e2fff" [label=""];
  "sha256:b0a870d32d2a798b4e3ff3f2bc42d5262f0e4be070d43f218ed5d12a277e2fff" -> "sha256:e17f85be05c5e41dc66d2ea7cb0b0d498eb30b1fdb9c3961c4979ad071b5f073" [label=""];
  "sha256:e17f85be05c5e41dc66d2ea7cb0b0d498eb30b1fdb9c3961c4979ad071b5f073" -> "sha256:bab7c17c521636103b922f950a6b337d37e4022a33e09cefae6a05d958cb22f4" [label=""];
  "sha256:bab7c17c521636103b922f950a6b337d37e4022a33e09cefae6a05d958cb22f4" -> "sha256:562f09b4dccc0dc70102ded397a199498ac3c61de548694794a366d28da85612" [label=""];
  "sha256:562f09b4dccc0dc70102ded397a199498ac3c61de548694794a366d28da85612" -> "sha256:2013b4c1d39bd174be1f862b09eba3ac02971c68c5efd71a3af0425bd3e01ea1" [label=""];
  "sha256:2013b4c1d39bd174be1f862b09eba3ac02971c68c5efd71a3af0425bd3e01ea1" -> "sha256:04d56cb077ce80feca2bb622c8a9022620cfbe47b1f5935a52b6d49702c01887" [label=""];
  "sha256:04d56cb077ce80feca2bb622c8a9022620cfbe47b1f5935a52b6d49702c01887" -> "sha256:5897319b7ebefbb6ef5e7d908adddc88a37bc794323d46df9aa6bc8fa1cc96fb" [label=""];
  "sha256:5897319b7ebefbb6ef5e7d908adddc88a37bc794323d46df9aa6bc8fa1cc96fb" -> "sha256:1bf9a479a16847b9f3be4d04b3e0a4a40ac93f8e64b633fab06e0113c628c9a9" [label=""];
  "sha256:1bf9a479a16847b9f3be4d04b3e0a4a40ac93f8e64b633fab06e0113c628c9a9" -> "sha256:4c33d098f40cd10a46d9d74cb4707534a84a9bd30e5600a24e9dfceb473c227a" [label=""];
}

