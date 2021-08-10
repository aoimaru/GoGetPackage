[app/sources/345356011.Dockerfile]
digraph {
  "sha256:cd63e99d4df52391017354fce88bb2d3710458c552a952071b232009eb4a0d8e" [label="docker-image://docker.io/balenalib/armv7hf-alpine:3.5-build" shape="ellipse"];
  "sha256:2c0270cfe965cd11f38294958508ee9c0f1ffdf93d4cdc4558750702b9c189c8" [label="/bin/sh -c apk add --update \t\tless \t\tnano \t\tnet-tools \t\tifupdown \t\tusbutils \t\tgnupg \t&& rm -rf /var/cache/apk/*" shape="box"];
  "sha256:48f98b7e7ee0b102adbbf3732193a292246d5240f46b1a8f43c0cc55deac20ac" [label="sha256:48f98b7e7ee0b102adbbf3732193a292246d5240f46b1a8f43c0cc55deac20ac" shape="plaintext"];
  "sha256:cd63e99d4df52391017354fce88bb2d3710458c552a952071b232009eb4a0d8e" -> "sha256:2c0270cfe965cd11f38294958508ee9c0f1ffdf93d4cdc4558750702b9c189c8" [label=""];
  "sha256:2c0270cfe965cd11f38294958508ee9c0f1ffdf93d4cdc4558750702b9c189c8" -> "sha256:48f98b7e7ee0b102adbbf3732193a292246d5240f46b1a8f43c0cc55deac20ac" [label=""];
}

