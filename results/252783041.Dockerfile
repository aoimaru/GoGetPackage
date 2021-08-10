[app/sources/252783041.Dockerfile]
digraph {
  "sha256:036c4810cc31f4f23d2cc60e4476dbc3fe7e929d84d0a74739fb2286c2a9f43a" [label="docker-image://docker.io/library/nginx:alpine@sha256:bead42240255ae1485653a956ef41c9e458eb077fcb6dc664cbc3aa9701a05ce" shape="ellipse"];
  "sha256:20bc0a067204a758e7ec63a63cda6dcc233b57183610009df60e125884e19e5d" [label="/bin/sh -c set -x && addgroup -g 991 -S www-data && adduser -u 991 -D -S -G www-data www-data" shape="box"];
  "sha256:93cceffe42a44fac998c6269fac9fa7b10fa79f0645be7920331766c91f12286" [label="sha256:93cceffe42a44fac998c6269fac9fa7b10fa79f0645be7920331766c91f12286" shape="plaintext"];
  "sha256:036c4810cc31f4f23d2cc60e4476dbc3fe7e929d84d0a74739fb2286c2a9f43a" -> "sha256:20bc0a067204a758e7ec63a63cda6dcc233b57183610009df60e125884e19e5d" [label=""];
  "sha256:20bc0a067204a758e7ec63a63cda6dcc233b57183610009df60e125884e19e5d" -> "sha256:93cceffe42a44fac998c6269fac9fa7b10fa79f0645be7920331766c91f12286" [label=""];
}

