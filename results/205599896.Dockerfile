[app/sources/205599896.Dockerfile]
digraph {
  "sha256:1561aa420866965e065632eb5f159099f3c4f7720697e1ce75fc652e5bf08e5c" [label="docker-image://docker.io/library/php:7.1-cli" shape="ellipse"];
  "sha256:999c6407083587c9111cfc72c85ae17c780edc332ca1efffc1feac640e3b170f" [label="/bin/sh -c apt-get update && apt-get install -y -qq         libgmp-dev libicu-dev     && ln -s /usr/include/x86_64-linux-gnu/gmp.h /usr/local/include/     && docker-php-ext-install gmp     && docker-php-ext-install intl" shape="box"];
  "sha256:a2dd2c9e93244af322170a60cebb3f755373bc2e83ae4dc673c7998e47f7a2c1" [label="/bin/sh -c echo 'date.timezone=\"UTC\"' > /usr/local/etc/php/conf.d/timezone.ini;" shape="box"];
  "sha256:81f4cab71d3af0eb132ffc67817bd044ade141f3f3e466ee28fee0e7399ac754" [label="sha256:81f4cab71d3af0eb132ffc67817bd044ade141f3f3e466ee28fee0e7399ac754" shape="plaintext"];
  "sha256:1561aa420866965e065632eb5f159099f3c4f7720697e1ce75fc652e5bf08e5c" -> "sha256:999c6407083587c9111cfc72c85ae17c780edc332ca1efffc1feac640e3b170f" [label=""];
  "sha256:999c6407083587c9111cfc72c85ae17c780edc332ca1efffc1feac640e3b170f" -> "sha256:a2dd2c9e93244af322170a60cebb3f755373bc2e83ae4dc673c7998e47f7a2c1" [label=""];
  "sha256:a2dd2c9e93244af322170a60cebb3f755373bc2e83ae4dc673c7998e47f7a2c1" -> "sha256:81f4cab71d3af0eb132ffc67817bd044ade141f3f3e466ee28fee0e7399ac754" [label=""];
}

