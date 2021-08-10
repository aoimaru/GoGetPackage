[app/sources/363767455.Dockerfile]
digraph {
  "sha256:cb6e6bb5b594c25be2f04e46aaf40a44477cfaa42e438e369a97715ec91b4833" [label="docker-image://docker.io/webdevops/php:centos-7@sha256:042c794cd4af4261eb3a0f9c13425ae516b8c0698652ea4b3c14934ddb2b0840" shape="ellipse"];
  "sha256:5bdcfb629026e1d3e46afa290654a494ea89c8d3aa34fc12a2866a9c999e95d0" [label="local://context" shape="ellipse"];
  "sha256:6e36fb99bc220ca063963172a319eea15e203233238289ff6de7fd3681cf82fc" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:7e0b14426ddb5ff3fddb0222e0c885eedc5648595c5dc11dbddc054144cbe8a6" [label="/bin/sh -c set -x     && yum-install         httpd         mod_ssl     && sed -ri '         s!^(\\s*CustomLog)\\s+\\S+!\\1 /proc/self/fd/1!g;         s!^(\\s*ErrorLog)\\s+\\S+!\\1 /proc/self/fd/2!g;         ' /etc/httpd/conf/httpd.conf /etc/httpd/conf.d/ssl.conf     && docker-run-bootstrap     && docker-image-cleanup" shape="box"];
  "sha256:ad2668bacde67a992f4c7f0203e4b24ea967d53ed6c5a19957b63d3aa6240d12" [label="sha256:ad2668bacde67a992f4c7f0203e4b24ea967d53ed6c5a19957b63d3aa6240d12" shape="plaintext"];
  "sha256:cb6e6bb5b594c25be2f04e46aaf40a44477cfaa42e438e369a97715ec91b4833" -> "sha256:6e36fb99bc220ca063963172a319eea15e203233238289ff6de7fd3681cf82fc" [label=""];
  "sha256:5bdcfb629026e1d3e46afa290654a494ea89c8d3aa34fc12a2866a9c999e95d0" -> "sha256:6e36fb99bc220ca063963172a319eea15e203233238289ff6de7fd3681cf82fc" [label=""];
  "sha256:6e36fb99bc220ca063963172a319eea15e203233238289ff6de7fd3681cf82fc" -> "sha256:7e0b14426ddb5ff3fddb0222e0c885eedc5648595c5dc11dbddc054144cbe8a6" [label=""];
  "sha256:7e0b14426ddb5ff3fddb0222e0c885eedc5648595c5dc11dbddc054144cbe8a6" -> "sha256:ad2668bacde67a992f4c7f0203e4b24ea967d53ed6c5a19957b63d3aa6240d12" [label=""];
}

