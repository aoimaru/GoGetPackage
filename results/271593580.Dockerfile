[app/sources/271593580.Dockerfile]
digraph {
  "sha256:889f58178ebb24ec3dbbf154443680fbcc33ceccf5a24336498773fb96e122ec" [label="docker-image://docker.io/phpdockerio/php71-fpm:latest" shape="ellipse"];
  "sha256:bb94bdae376bcc28d5c12072ae5abaf4219435f525d082692604e51ebf11def8" [label="/bin/sh -c apt-get update     && apt-get -y --no-install-recommends install  php7.1-mysql php-redis supervisor     && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*     && export TERM=xterm" shape="box"];
  "sha256:1eccc44044d066e03a4d1c0d31657ae7f11126abc94e2f7bd3f2083eee10e368" [label="local://context" shape="ellipse"];
  "sha256:e40a89c3c119369604aec46a2c4d6cd8f04bdf5a150cb6681b9ab071d9c0bf80" [label="copy{src=/supervisord.conf, dest=/etc/supervisord.conf}" shape="note"];
  "sha256:9dca5b7628d30c11468e913924a66a7548f3a1fd45df77bd549f00e3d2947151" [label="sha256:9dca5b7628d30c11468e913924a66a7548f3a1fd45df77bd549f00e3d2947151" shape="plaintext"];
  "sha256:889f58178ebb24ec3dbbf154443680fbcc33ceccf5a24336498773fb96e122ec" -> "sha256:bb94bdae376bcc28d5c12072ae5abaf4219435f525d082692604e51ebf11def8" [label=""];
  "sha256:bb94bdae376bcc28d5c12072ae5abaf4219435f525d082692604e51ebf11def8" -> "sha256:e40a89c3c119369604aec46a2c4d6cd8f04bdf5a150cb6681b9ab071d9c0bf80" [label=""];
  "sha256:1eccc44044d066e03a4d1c0d31657ae7f11126abc94e2f7bd3f2083eee10e368" -> "sha256:e40a89c3c119369604aec46a2c4d6cd8f04bdf5a150cb6681b9ab071d9c0bf80" [label=""];
  "sha256:e40a89c3c119369604aec46a2c4d6cd8f04bdf5a150cb6681b9ab071d9c0bf80" -> "sha256:9dca5b7628d30c11468e913924a66a7548f3a1fd45df77bd549f00e3d2947151" [label=""];
}

