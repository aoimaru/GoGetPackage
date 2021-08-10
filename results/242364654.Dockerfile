[app/sources/242364654.Dockerfile]
digraph {
  "sha256:32712d4f4311e44dcb92c07790d732cac3e536c80153ba09e344f90e847a8f15" [label="docker-image://docker.io/library/php:7.1-apache" shape="ellipse"];
  "sha256:2b51eba30c8ea5047015fa2b67f0370ef1abdd9b8b0e8dff6d7b873630b7d944" [label="/bin/sh -c apt-get update     && apt-get install -y $BLD_PKGS     && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/     && docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql     && docker-php-ext-install $PHP_EXTS     && pecl install intl     && docker-php-ext-install intl" shape="box"];
  "sha256:5209ec49559166a44d1059ad3c3a4d4ed14622a32a24970434ff0f323c61f66b" [label="sha256:5209ec49559166a44d1059ad3c3a4d4ed14622a32a24970434ff0f323c61f66b" shape="plaintext"];
  "sha256:32712d4f4311e44dcb92c07790d732cac3e536c80153ba09e344f90e847a8f15" -> "sha256:2b51eba30c8ea5047015fa2b67f0370ef1abdd9b8b0e8dff6d7b873630b7d944" [label=""];
  "sha256:2b51eba30c8ea5047015fa2b67f0370ef1abdd9b8b0e8dff6d7b873630b7d944" -> "sha256:5209ec49559166a44d1059ad3c3a4d4ed14622a32a24970434ff0f323c61f66b" [label=""];
}

