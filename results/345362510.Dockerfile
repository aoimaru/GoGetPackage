[app/sources/345362510.Dockerfile]
digraph {
  "sha256:78644f773ec5afa6aecda8652affb8f4a3cb48637a0419a629c29c5fe4031221" [label="docker-image://docker.io/balenalib/armv7hf-alpine:edge-build" shape="ellipse"];
  "sha256:0a37fa4d9dec7f29352880842e22452acabe5aadd783324c4825eab33327f716" [label="/bin/sh -c apk add --update \t\tless \t\tnano \t\tnet-tools \t\tifupdown \t\tusbutils \t\tgnupg \t&& rm -rf /var/cache/apk/*" shape="box"];
  "sha256:9f8f1bbb0c4259f567378e6b8f3863a815ca69c87ffc95e0ab2e3cd506584927" [label="sha256:9f8f1bbb0c4259f567378e6b8f3863a815ca69c87ffc95e0ab2e3cd506584927" shape="plaintext"];
  "sha256:78644f773ec5afa6aecda8652affb8f4a3cb48637a0419a629c29c5fe4031221" -> "sha256:0a37fa4d9dec7f29352880842e22452acabe5aadd783324c4825eab33327f716" [label=""];
  "sha256:0a37fa4d9dec7f29352880842e22452acabe5aadd783324c4825eab33327f716" -> "sha256:9f8f1bbb0c4259f567378e6b8f3863a815ca69c87ffc95e0ab2e3cd506584927" [label=""];
}

