[app/sources/351802003.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:83cc87df0d2ccb5f90f4db66ed9d183239f84ee4ca1563205e6ae7227a7e752c" [label="/bin/sh -c apk update && apk add sshfs" shape="box"];
  "sha256:0b3ebf1d194461fb2126acf8b61a764e25b6cd30e589e30dd115c90c93d69f14" [label="/bin/sh -c mkdir -p /run/docker/plugins /mnt/state /mnt/volumes" shape="box"];
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" [label="docker-image://docker.io/library/golang:1.10-alpine" shape="ellipse"];
  "sha256:ba0603c43de5dc78d31fdf4fe3dc47a87b5808ad2201387d82fd75b198e61cce" [label="local://context" shape="ellipse"];
  "sha256:9e95ecb5efedf59f85130c4bf25e152b5dceb2a7e889aee144ae12e22b2d5642" [label="copy{src=/, dest=/go/src/github.com/vieux/docker-volume-sshfs}" shape="note"];
  "sha256:a7ecc8c5bb4a5e3c7b3233f41c7ef0626cdcdbff9e8ed2598524d7b0ada74c72" [label="mkdir{path=/go/src/github.com/vieux/docker-volume-sshfs}" shape="note"];
  "sha256:3f30ff9d04371f27ae3ee41a86b155f83aa071ff82602187e61b3c34391146b0" [label="/bin/sh -c set -ex     && apk add --no-cache --virtual .build-deps     gcc libc-dev     && go install --ldflags '-extldflags \"-static\"'     && apk del .build-deps" shape="box"];
  "sha256:09ad67ef1a6541277ab229834b662314f449a6f846d598057322c1c6a15aebdd" [label="copy{src=/go/bin/docker-volume-sshfs, dest=/}" shape="note"];
  "sha256:61f2607c621c02c3ddaad216be3685e323f8857948de5a3413718fbaf68da76b" [label="sha256:61f2607c621c02c3ddaad216be3685e323f8857948de5a3413718fbaf68da76b" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:83cc87df0d2ccb5f90f4db66ed9d183239f84ee4ca1563205e6ae7227a7e752c" [label=""];
  "sha256:83cc87df0d2ccb5f90f4db66ed9d183239f84ee4ca1563205e6ae7227a7e752c" -> "sha256:0b3ebf1d194461fb2126acf8b61a764e25b6cd30e589e30dd115c90c93d69f14" [label=""];
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" -> "sha256:9e95ecb5efedf59f85130c4bf25e152b5dceb2a7e889aee144ae12e22b2d5642" [label=""];
  "sha256:ba0603c43de5dc78d31fdf4fe3dc47a87b5808ad2201387d82fd75b198e61cce" -> "sha256:9e95ecb5efedf59f85130c4bf25e152b5dceb2a7e889aee144ae12e22b2d5642" [label=""];
  "sha256:9e95ecb5efedf59f85130c4bf25e152b5dceb2a7e889aee144ae12e22b2d5642" -> "sha256:a7ecc8c5bb4a5e3c7b3233f41c7ef0626cdcdbff9e8ed2598524d7b0ada74c72" [label=""];
  "sha256:a7ecc8c5bb4a5e3c7b3233f41c7ef0626cdcdbff9e8ed2598524d7b0ada74c72" -> "sha256:3f30ff9d04371f27ae3ee41a86b155f83aa071ff82602187e61b3c34391146b0" [label=""];
  "sha256:0b3ebf1d194461fb2126acf8b61a764e25b6cd30e589e30dd115c90c93d69f14" -> "sha256:09ad67ef1a6541277ab229834b662314f449a6f846d598057322c1c6a15aebdd" [label=""];
  "sha256:3f30ff9d04371f27ae3ee41a86b155f83aa071ff82602187e61b3c34391146b0" -> "sha256:09ad67ef1a6541277ab229834b662314f449a6f846d598057322c1c6a15aebdd" [label=""];
  "sha256:09ad67ef1a6541277ab229834b662314f449a6f846d598057322c1c6a15aebdd" -> "sha256:61f2607c621c02c3ddaad216be3685e323f8857948de5a3413718fbaf68da76b" [label=""];
}

