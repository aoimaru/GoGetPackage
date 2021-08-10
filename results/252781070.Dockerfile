[app/sources/252781070.Dockerfile]
digraph {
  "sha256:469de9dcd442ea5b60fda4bc05f7e9661858bf288796fb9783724187ded32870" [label="docker-image://docker.io/library/php:7.1-fpm" shape="ellipse"];
  "sha256:6d283199cffe9fa8e56d47457d55bdd661de93abb5c176203dcd2629521c99a8" [label="local://context" shape="ellipse"];
  "sha256:4936d99c6ccec7dc94be66a89958247cb2ef0906274d3232a12cc45510d9ec79" [label="copy{src=/config/custom.ini, dest=/usr/local/etc/php/conf.d/}" shape="note"];
  "sha256:dc5435b78e6cad370b1a566160e99a1f6da2611bb6b38d3cf96e0cbea162ec1f" [label="/bin/sh -c apt-get update && apt-get install -y zlib1g-dev libicu-dev libpq-dev && docker-php-ext-install opcache && docker-php-ext-install intl && docker-php-ext-install ftp && pecl install apcu-5.1.5 && docker-php-ext-enable apcu" shape="box"];
  "sha256:f89ac5e7b82c291ba25ee8b957206c468054f871b742677805bc9d27718a4b20" [label="sha256:f89ac5e7b82c291ba25ee8b957206c468054f871b742677805bc9d27718a4b20" shape="plaintext"];
  "sha256:469de9dcd442ea5b60fda4bc05f7e9661858bf288796fb9783724187ded32870" -> "sha256:4936d99c6ccec7dc94be66a89958247cb2ef0906274d3232a12cc45510d9ec79" [label=""];
  "sha256:6d283199cffe9fa8e56d47457d55bdd661de93abb5c176203dcd2629521c99a8" -> "sha256:4936d99c6ccec7dc94be66a89958247cb2ef0906274d3232a12cc45510d9ec79" [label=""];
  "sha256:4936d99c6ccec7dc94be66a89958247cb2ef0906274d3232a12cc45510d9ec79" -> "sha256:dc5435b78e6cad370b1a566160e99a1f6da2611bb6b38d3cf96e0cbea162ec1f" [label=""];
  "sha256:dc5435b78e6cad370b1a566160e99a1f6da2611bb6b38d3cf96e0cbea162ec1f" -> "sha256:f89ac5e7b82c291ba25ee8b957206c468054f871b742677805bc9d27718a4b20" [label=""];
}

