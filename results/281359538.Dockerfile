[app/sources/281359538.Dockerfile]
digraph {
  "sha256:32712d4f4311e44dcb92c07790d732cac3e536c80153ba09e344f90e847a8f15" [label="docker-image://docker.io/library/php:7.1-apache" shape="ellipse"];
  "sha256:51190562368d86788bece59503ddf6eb74e1b2a7ab4fc8019b8ee3294c8f754c" [label="/bin/sh -c apt-get update && apt-get install -y         curl         git         libicu-dev     && rm -rf /var/lib/apt/lists/*     && docker-php-ext-install pdo_mysql intl" shape="box"];
  "sha256:c2f581cf7feff0623a905b248f2cbb11eea2d03146cb5d560fa097955d429c59" [label="local://context" shape="ellipse"];
  "sha256:02b5f790e2ac171f72eb424479942096b8489ace97f777c2eaa819fe5a574431" [label="copy{src=/php.ini, dest=/usr/local/etc/php/}" shape="note"];
  "sha256:c8c94aec68859ba7abdcce7f0cac3b75c871df2ac058b069bd8eda172419a7ea" [label="/bin/sh -c a2enmod rewrite" shape="box"];
  "sha256:02d93e20f557e8ec5a449d3ae86e5fd38d56e240ea0577d046197ee2317c389e" [label="copy{src=/vhost.conf, dest=/etc/apache2/sites-enabled/000-default.conf}" shape="note"];
  "sha256:267207b32e283b6d4c52b1d0881a96fcfef71b001579d5f68227e12e33a0ef68" [label="copy{src=/entrypoint.sh, dest=/usr/local/bin/entrypoint.sh}" shape="note"];
  "sha256:801b62cf046f03c7985867770170ac1e400378f0772b2c68cb03e9a823648e3f" [label="mkdir{path=/var/www/html}" shape="note"];
  "sha256:0b06135bd12dedaf5aed0bb7d9e889389e424a42d6aed926492033b6665a653c" [label="sha256:0b06135bd12dedaf5aed0bb7d9e889389e424a42d6aed926492033b6665a653c" shape="plaintext"];
  "sha256:32712d4f4311e44dcb92c07790d732cac3e536c80153ba09e344f90e847a8f15" -> "sha256:51190562368d86788bece59503ddf6eb74e1b2a7ab4fc8019b8ee3294c8f754c" [label=""];
  "sha256:51190562368d86788bece59503ddf6eb74e1b2a7ab4fc8019b8ee3294c8f754c" -> "sha256:02b5f790e2ac171f72eb424479942096b8489ace97f777c2eaa819fe5a574431" [label=""];
  "sha256:c2f581cf7feff0623a905b248f2cbb11eea2d03146cb5d560fa097955d429c59" -> "sha256:02b5f790e2ac171f72eb424479942096b8489ace97f777c2eaa819fe5a574431" [label=""];
  "sha256:02b5f790e2ac171f72eb424479942096b8489ace97f777c2eaa819fe5a574431" -> "sha256:c8c94aec68859ba7abdcce7f0cac3b75c871df2ac058b069bd8eda172419a7ea" [label=""];
  "sha256:c8c94aec68859ba7abdcce7f0cac3b75c871df2ac058b069bd8eda172419a7ea" -> "sha256:02d93e20f557e8ec5a449d3ae86e5fd38d56e240ea0577d046197ee2317c389e" [label=""];
  "sha256:c2f581cf7feff0623a905b248f2cbb11eea2d03146cb5d560fa097955d429c59" -> "sha256:02d93e20f557e8ec5a449d3ae86e5fd38d56e240ea0577d046197ee2317c389e" [label=""];
  "sha256:02d93e20f557e8ec5a449d3ae86e5fd38d56e240ea0577d046197ee2317c389e" -> "sha256:267207b32e283b6d4c52b1d0881a96fcfef71b001579d5f68227e12e33a0ef68" [label=""];
  "sha256:c2f581cf7feff0623a905b248f2cbb11eea2d03146cb5d560fa097955d429c59" -> "sha256:267207b32e283b6d4c52b1d0881a96fcfef71b001579d5f68227e12e33a0ef68" [label=""];
  "sha256:267207b32e283b6d4c52b1d0881a96fcfef71b001579d5f68227e12e33a0ef68" -> "sha256:801b62cf046f03c7985867770170ac1e400378f0772b2c68cb03e9a823648e3f" [label=""];
  "sha256:801b62cf046f03c7985867770170ac1e400378f0772b2c68cb03e9a823648e3f" -> "sha256:0b06135bd12dedaf5aed0bb7d9e889389e424a42d6aed926492033b6665a653c" [label=""];
}

