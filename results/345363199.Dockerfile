[app/sources/345363199.Dockerfile]
digraph {
  "sha256:34267a775cc8bcc099bcaee2b1e657f5d239aa869f6292437a753dc48061240e" [label="docker-image://docker.io/balenalib/am571x-evm-alpine:3.5-run" shape="ellipse"];
  "sha256:f81c23aec0de9ced1cd869bbb3ddead22d75010ecd3d6705c9e87dc0aa6e7db1" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:805c86cf06605d135a1440ce9a68262dcab10337f4c98e8ce48d2915ac70052d" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:77ea08916727c33b3ac1dd8b897407501e1f36806c721a7a1faaa104e7c5e270" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"296db57c7981a871e1cee0059a90385d39c73386ffc23002a26bfa9b05f514c4  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:7c911a0201b4c22f1f98d70ce0e15ee95633c576fa4f54a952818e6e914ab022" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:8ae8ac7cd23733c4c3601446651ecc4b4a468570ca65852e87729a13d1ce9e6f" [label="mkdir{path=/go}" shape="note"];
  "sha256:b2edcf2edb12f2e7c1816d124d43082c3b2dd8a092532f6614c2e11c5ff2fed4" [label="sha256:b2edcf2edb12f2e7c1816d124d43082c3b2dd8a092532f6614c2e11c5ff2fed4" shape="plaintext"];
  "sha256:34267a775cc8bcc099bcaee2b1e657f5d239aa869f6292437a753dc48061240e" -> "sha256:f81c23aec0de9ced1cd869bbb3ddead22d75010ecd3d6705c9e87dc0aa6e7db1" [label=""];
  "sha256:f81c23aec0de9ced1cd869bbb3ddead22d75010ecd3d6705c9e87dc0aa6e7db1" -> "sha256:805c86cf06605d135a1440ce9a68262dcab10337f4c98e8ce48d2915ac70052d" [label=""];
  "sha256:805c86cf06605d135a1440ce9a68262dcab10337f4c98e8ce48d2915ac70052d" -> "sha256:77ea08916727c33b3ac1dd8b897407501e1f36806c721a7a1faaa104e7c5e270" [label=""];
  "sha256:77ea08916727c33b3ac1dd8b897407501e1f36806c721a7a1faaa104e7c5e270" -> "sha256:7c911a0201b4c22f1f98d70ce0e15ee95633c576fa4f54a952818e6e914ab022" [label=""];
  "sha256:7c911a0201b4c22f1f98d70ce0e15ee95633c576fa4f54a952818e6e914ab022" -> "sha256:8ae8ac7cd23733c4c3601446651ecc4b4a468570ca65852e87729a13d1ce9e6f" [label=""];
  "sha256:8ae8ac7cd23733c4c3601446651ecc4b4a468570ca65852e87729a13d1ce9e6f" -> "sha256:b2edcf2edb12f2e7c1816d124d43082c3b2dd8a092532f6614c2e11c5ff2fed4" [label=""];
}

