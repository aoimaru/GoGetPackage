[app/sources/252775175.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:60809e4bf86c631903b09f2840a25ad59c2bc0d84fd995cc678e9fde12d1f892" [label="/bin/sh -c apk add --update ruby ruby-dev ruby-bigdecimal build-base libstdc++ sqlite sqlite-dev && gem install json --no-ri --no-rdoc && gem install mailcatcher -v 0.7.0.beta1 --no-ri --no-rdoc && apk del --purge ruby-dev build-base && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:4167743536400371f91b1e737e07a2f4c924660f491b9fa21a7b5f8ad699be63" [label="sha256:4167743536400371f91b1e737e07a2f4c924660f491b9fa21a7b5f8ad699be63" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:60809e4bf86c631903b09f2840a25ad59c2bc0d84fd995cc678e9fde12d1f892" [label=""];
  "sha256:60809e4bf86c631903b09f2840a25ad59c2bc0d84fd995cc678e9fde12d1f892" -> "sha256:4167743536400371f91b1e737e07a2f4c924660f491b9fa21a7b5f8ad699be63" [label=""];
}

