[app/sources/309507689.Dockerfile]
digraph {
  "sha256:a9068ac8b0d0fa4bb5d338071c1986a25a1af81d6f94423612b4df41084cb8b8" [label="docker-image://docker.io/library/php:alpine3.8@sha256:96a69dd6d4acbbcc38162b03b2c55e460f49e190cb5da0ce8b8b10d901ceb798" shape="ellipse"];
  "sha256:bf205861bdca1ade2dcf169c790f73fd40a641ca08cbe8ad92c4ee31bb717df3" [label="/bin/sh -c apk add --update --no-cache git gmp gmp-dev && cd && git clone https://github.com/dan-da/hd-wallet-derive.git && cd hd-wallet-derive && php -r \"readfile('https://getcomposer.org/installer');\" | php && docker-php-ext-install gmp && php composer.phar install" shape="box"];
  "sha256:064774119e9f34d2d1958a1cab9e89733dea54ce0ed2dbe6a219a7c632169338" [label="mkdir{path=/root/hd-wallet-derive}" shape="note"];
  "sha256:ef11d29a1b1342d3eabde5b7f7f40eeecb77cdd446a94e011eac2875c5970bdb" [label="sha256:ef11d29a1b1342d3eabde5b7f7f40eeecb77cdd446a94e011eac2875c5970bdb" shape="plaintext"];
  "sha256:a9068ac8b0d0fa4bb5d338071c1986a25a1af81d6f94423612b4df41084cb8b8" -> "sha256:bf205861bdca1ade2dcf169c790f73fd40a641ca08cbe8ad92c4ee31bb717df3" [label=""];
  "sha256:bf205861bdca1ade2dcf169c790f73fd40a641ca08cbe8ad92c4ee31bb717df3" -> "sha256:064774119e9f34d2d1958a1cab9e89733dea54ce0ed2dbe6a219a7c632169338" [label=""];
  "sha256:064774119e9f34d2d1958a1cab9e89733dea54ce0ed2dbe6a219a7c632169338" -> "sha256:ef11d29a1b1342d3eabde5b7f7f40eeecb77cdd446a94e011eac2875c5970bdb" [label=""];
}

