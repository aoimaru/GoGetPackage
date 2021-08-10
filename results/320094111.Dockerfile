[app/sources/320094111.Dockerfile]
digraph {
  "sha256:042a61b0487e4e37a423113f015e630d914d5e4cb4a03c7243d64a68b03847ee" [label="local://context" shape="ellipse"];
  "sha256:d5be0860ab9e076b80111a11623a0e84de21d57babc8117b66c0ef03d7ef10ad" [label="docker-image://docker.io/webdevops/php-nginx:alpine-php7@sha256:d3681556df7a7f734a4d47f6dfd095c3b3ea3694b882d42ebc9cd32368868e0c" shape="ellipse"];
  "sha256:a25659d5840fb1aff329ff329ef9e6fb58fc35cef1eb9ea8c95b7ed2b16f685e" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:c1fdcbd60c6a889402f45fea3864110d085fe3479dbd691a35e305f73cb1987f" [label="/bin/sh -c set -x     && apk-install         graphviz         php7-xdebug     && docker-service enable syslog     && docker-service enable postfix     && docker-service enable ssh     && docker-run-bootstrap     && docker-image-cleanup" shape="box"];
  "sha256:c26d33288fdda856e30f7904f536d71a318876ee7d41fb0fc83cd56e8c78aa5a" [label="sha256:c26d33288fdda856e30f7904f536d71a318876ee7d41fb0fc83cd56e8c78aa5a" shape="plaintext"];
  "sha256:d5be0860ab9e076b80111a11623a0e84de21d57babc8117b66c0ef03d7ef10ad" -> "sha256:a25659d5840fb1aff329ff329ef9e6fb58fc35cef1eb9ea8c95b7ed2b16f685e" [label=""];
  "sha256:042a61b0487e4e37a423113f015e630d914d5e4cb4a03c7243d64a68b03847ee" -> "sha256:a25659d5840fb1aff329ff329ef9e6fb58fc35cef1eb9ea8c95b7ed2b16f685e" [label=""];
  "sha256:a25659d5840fb1aff329ff329ef9e6fb58fc35cef1eb9ea8c95b7ed2b16f685e" -> "sha256:c1fdcbd60c6a889402f45fea3864110d085fe3479dbd691a35e305f73cb1987f" [label=""];
  "sha256:c1fdcbd60c6a889402f45fea3864110d085fe3479dbd691a35e305f73cb1987f" -> "sha256:c26d33288fdda856e30f7904f536d71a318876ee7d41fb0fc83cd56e8c78aa5a" [label=""];
}

