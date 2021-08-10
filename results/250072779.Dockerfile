[app/sources/250072779.Dockerfile]
digraph {
  "sha256:6b98142c35379ec6dd383587507323e1882d580a9fb0a6d186d352a08432dc1e" [label="docker-image://docker.io/library/php:7.3-alpine@sha256:cd659560f6699594c4a2babf3550f11ae796bd1e8bfb54ffe8be96d6dfad4414" shape="ellipse"];
  "sha256:0f021fded2067da4ece22eef965a305142d2055925b07f27ecdfba98f88503ae" [label="/bin/sh -c echo 'http://dl-4.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories     && apk --no-cache add     git     curl     curl-dev     libcurl     zlib-dev     freetype-dev     jpeg-dev     libjpeg-turbo-dev     postgresql-dev     libmcrypt-dev     libpng-dev     icu-dev     gettext-dev     vim     libxml2-dev     freetype-dev     libzip-dev     unzip     libc6-compat     openssl     gcc     autoconf     make     libc-dev" shape="box"];
  "sha256:ebc834ebc82f886c58800d282911c8ffeb5a03a13cf31efcecd1567206f3f1da" [label="/bin/sh -c docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/" shape="box"];
  "sha256:452179c5cc8ede42dab0a7571d7fba8ee4e596676f6abe46fe46e808666900de" [label="/bin/sh -c docker-php-ext-install     opcache     bcmath     ctype     curl     dom     iconv     fileinfo     gd     gettext     intl     json     mysqli     pgsql     pcntl     pdo     ftp     pdo_mysql     pdo_pgsql     phar     simplexml     xmlrpc     zip" shape="box"];
  "sha256:7b2fe54ad754389a62a3efbac8183199884b84f3c6701d31ae191e627b3341e2" [label="/bin/sh -c pecl install     mcrypt-1.0.2" shape="box"];
  "sha256:0b46f29dd6122c47914c399ab343949009b41b442e64f3aed33ed80fcc866bce" [label="/bin/sh -c docker-php-ext-enable     mcrypt" shape="box"];
  "sha256:0489e5175279dff2421372c7005a66ee3dbf5e176d94b1659865eb262b112e2a" [label="/bin/sh -c curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer" shape="box"];
  "sha256:95483b6857224ba58bd7dfc404f8f219ccce6ebc9f6043f4fa7d8ea014d3773c" [label="docker-image://docker.io/fission/builder@sha256:a7d8e30b67e47202de831ed861c9b8a097ab8cfeaefe3befdb65f2b79a61a0cb" shape="ellipse"];
  "sha256:7fe6da882dd2bab44e2cca9bb1af72731092925d9d54982efa42c7f643acb659" [label="copy{src=/builder, dest=/builder}" shape="note"];
  "sha256:ee488b99f9de4faa59a3dd0d1713fd13bf2a7b7beded740a77ef530501fa2e7c" [label="local://context" shape="ellipse"];
  "sha256:f1c5a6a78716d8de1c41716e5fe6d2917c70151b5de65e038d62b6472acb863d" [label="copy{src=/defaultBuildCmd, dest=/usr/local/bin/build}" shape="note"];
  "sha256:11627afcd028c92bf045a334630add445846a44d0ff9430a56e31d95036264f3" [label="sha256:11627afcd028c92bf045a334630add445846a44d0ff9430a56e31d95036264f3" shape="plaintext"];
  "sha256:6b98142c35379ec6dd383587507323e1882d580a9fb0a6d186d352a08432dc1e" -> "sha256:0f021fded2067da4ece22eef965a305142d2055925b07f27ecdfba98f88503ae" [label=""];
  "sha256:0f021fded2067da4ece22eef965a305142d2055925b07f27ecdfba98f88503ae" -> "sha256:ebc834ebc82f886c58800d282911c8ffeb5a03a13cf31efcecd1567206f3f1da" [label=""];
  "sha256:ebc834ebc82f886c58800d282911c8ffeb5a03a13cf31efcecd1567206f3f1da" -> "sha256:452179c5cc8ede42dab0a7571d7fba8ee4e596676f6abe46fe46e808666900de" [label=""];
  "sha256:452179c5cc8ede42dab0a7571d7fba8ee4e596676f6abe46fe46e808666900de" -> "sha256:7b2fe54ad754389a62a3efbac8183199884b84f3c6701d31ae191e627b3341e2" [label=""];
  "sha256:7b2fe54ad754389a62a3efbac8183199884b84f3c6701d31ae191e627b3341e2" -> "sha256:0b46f29dd6122c47914c399ab343949009b41b442e64f3aed33ed80fcc866bce" [label=""];
  "sha256:0b46f29dd6122c47914c399ab343949009b41b442e64f3aed33ed80fcc866bce" -> "sha256:0489e5175279dff2421372c7005a66ee3dbf5e176d94b1659865eb262b112e2a" [label=""];
  "sha256:0489e5175279dff2421372c7005a66ee3dbf5e176d94b1659865eb262b112e2a" -> "sha256:7fe6da882dd2bab44e2cca9bb1af72731092925d9d54982efa42c7f643acb659" [label=""];
  "sha256:95483b6857224ba58bd7dfc404f8f219ccce6ebc9f6043f4fa7d8ea014d3773c" -> "sha256:7fe6da882dd2bab44e2cca9bb1af72731092925d9d54982efa42c7f643acb659" [label=""];
  "sha256:7fe6da882dd2bab44e2cca9bb1af72731092925d9d54982efa42c7f643acb659" -> "sha256:f1c5a6a78716d8de1c41716e5fe6d2917c70151b5de65e038d62b6472acb863d" [label=""];
  "sha256:ee488b99f9de4faa59a3dd0d1713fd13bf2a7b7beded740a77ef530501fa2e7c" -> "sha256:f1c5a6a78716d8de1c41716e5fe6d2917c70151b5de65e038d62b6472acb863d" [label=""];
  "sha256:f1c5a6a78716d8de1c41716e5fe6d2917c70151b5de65e038d62b6472acb863d" -> "sha256:11627afcd028c92bf045a334630add445846a44d0ff9430a56e31d95036264f3" [label=""];
}

