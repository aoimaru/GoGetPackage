[app/sources/363769937.Dockerfile]
digraph {
  "sha256:c32041dd5f52ec71b702ca3d23c5c4ca527ad25687011086542421e18890cc06" [label="docker-image://docker.io/webdevops/php:alpine-php5@sha256:2f2e4253eac47963519b087f86ce32534849efe0245af1a89553e2b34bbfda8d" shape="ellipse"];
  "sha256:865842faf9b9bcb46ea0ad14040bba856b5aefa432af83cea07ede84e0a9d60d" [label="local://context" shape="ellipse"];
  "sha256:1dc6ff6b6ee5a68573ccacb3be79ae9954b8c6a77c954bbdabfde9233318a55f" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:1cadcaea71c8f449aeaf2d275bf6b2d8c66787bb90e79ed6cff087ff41b92b63" [label="/bin/sh -c set -x     && apk-install         nginx     && docker-run-bootstrap     && docker-image-cleanup" shape="box"];
  "sha256:5b4b322b3be0238be5226d00c0e095e7aab83530f19f6de160d4c13b5bcf48aa" [label="sha256:5b4b322b3be0238be5226d00c0e095e7aab83530f19f6de160d4c13b5bcf48aa" shape="plaintext"];
  "sha256:c32041dd5f52ec71b702ca3d23c5c4ca527ad25687011086542421e18890cc06" -> "sha256:1dc6ff6b6ee5a68573ccacb3be79ae9954b8c6a77c954bbdabfde9233318a55f" [label=""];
  "sha256:865842faf9b9bcb46ea0ad14040bba856b5aefa432af83cea07ede84e0a9d60d" -> "sha256:1dc6ff6b6ee5a68573ccacb3be79ae9954b8c6a77c954bbdabfde9233318a55f" [label=""];
  "sha256:1dc6ff6b6ee5a68573ccacb3be79ae9954b8c6a77c954bbdabfde9233318a55f" -> "sha256:1cadcaea71c8f449aeaf2d275bf6b2d8c66787bb90e79ed6cff087ff41b92b63" [label=""];
  "sha256:1cadcaea71c8f449aeaf2d275bf6b2d8c66787bb90e79ed6cff087ff41b92b63" -> "sha256:5b4b322b3be0238be5226d00c0e095e7aab83530f19f6de160d4c13b5bcf48aa" [label=""];
}

