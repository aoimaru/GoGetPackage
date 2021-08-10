[app/sources/282250806.Dockerfile]
digraph {
  "sha256:8cf3e17a12136a71cfb189a8555bcfd55afc4865bb66c246e028f072e6a7f62a" [label="docker-image://docker.io/webdevops/php:ubuntu-16.10@sha256:d4ba9dade942513f494499b9968e395b2349a7ef2548964d8a24cade0bcd4fcb" shape="ellipse"];
  "sha256:4509c7b5d9ddee67dfc1039fd9bcb665fa7483ffe08cde8a9911295c57914b52" [label="local://context" shape="ellipse"];
  "sha256:9e00918c9f71476510adf18ec6b687be42e67215f81315e1d4f0dba4b062b9f7" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:02c9b0e35befd53c9d053ed26529450192960216b62c409bda630fa7840e86ea" [label="/bin/sh -c set -x     && apt-install         gnupg     && wget -q -O - https://packages.blackfire.io/gpg.key | apt-key add -     && echo \"deb https://packages.blackfire.io/debian any main\" | tee /etc/apt/sources.list.d/blackfire.list     && apt-install         graphviz         php-xdebug         blackfire-php         blackfire-agent         nano         vim     && docker-service enable syslog     && docker-service enable postfix     && docker-service enable ssh     && docker-run-bootstrap     && docker-image-cleanup" shape="box"];
  "sha256:a5c6833d49209a6c7137b619f105cb26409e802942a0609a1a4d52641a191fce" [label="sha256:a5c6833d49209a6c7137b619f105cb26409e802942a0609a1a4d52641a191fce" shape="plaintext"];
  "sha256:8cf3e17a12136a71cfb189a8555bcfd55afc4865bb66c246e028f072e6a7f62a" -> "sha256:9e00918c9f71476510adf18ec6b687be42e67215f81315e1d4f0dba4b062b9f7" [label=""];
  "sha256:4509c7b5d9ddee67dfc1039fd9bcb665fa7483ffe08cde8a9911295c57914b52" -> "sha256:9e00918c9f71476510adf18ec6b687be42e67215f81315e1d4f0dba4b062b9f7" [label=""];
  "sha256:9e00918c9f71476510adf18ec6b687be42e67215f81315e1d4f0dba4b062b9f7" -> "sha256:02c9b0e35befd53c9d053ed26529450192960216b62c409bda630fa7840e86ea" [label=""];
  "sha256:02c9b0e35befd53c9d053ed26529450192960216b62c409bda630fa7840e86ea" -> "sha256:a5c6833d49209a6c7137b619f105cb26409e802942a0609a1a4d52641a191fce" [label=""];
}

