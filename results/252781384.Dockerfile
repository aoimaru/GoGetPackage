[app/sources/252781384.Dockerfile]
digraph {
  "sha256:f2a92a98b611dcc246f74d568f86ed9f306025794199d4b3ce09271f0bd7b04d" [label="docker-image://docker.io/library/drupal:fpm@sha256:86fd1de4939fab3c963590166df8d9e149cc8b5ae9444fc015c8500ef41dc10b" shape="ellipse"];
  "sha256:d7d7fdc16d3ff5a81c6a4c4337b7f92c478aec1681b645058deb522e18f130d0" [label="/bin/sh -c apt-get update && apt-get install -y wget git mysql-client && wget https://getcomposer.org/installer && php ./installer && ./composer.phar global require drush/drush && rm ./composer.phar ./installer && ln -s /root/.composer/vendor/bin/drush /drush" shape="box"];
  "sha256:8ca9df60eb7844b652552e00de7aa91a19b659901dbb0b38e39f2340d19d6a00" [label="sha256:8ca9df60eb7844b652552e00de7aa91a19b659901dbb0b38e39f2340d19d6a00" shape="plaintext"];
  "sha256:f2a92a98b611dcc246f74d568f86ed9f306025794199d4b3ce09271f0bd7b04d" -> "sha256:d7d7fdc16d3ff5a81c6a4c4337b7f92c478aec1681b645058deb522e18f130d0" [label=""];
  "sha256:d7d7fdc16d3ff5a81c6a4c4337b7f92c478aec1681b645058deb522e18f130d0" -> "sha256:8ca9df60eb7844b652552e00de7aa91a19b659901dbb0b38e39f2340d19d6a00" [label=""];
}

