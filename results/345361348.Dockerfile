[app/sources/345361348.Dockerfile]
digraph {
  "sha256:f3d38db67b2feff2f624305330dd3a7a86d212fec8d4537820a971dcbfdcde74" [label="docker-image://docker.io/balenalib/var-som-mx6-alpine:3.5-run" shape="ellipse"];
  "sha256:be5ab9759f2f9261e9a308053d07cc6658f2137b5a27eb7ba883a323d0aeaea8" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:8324898ba126c7bed6c04696cee22367a4a3f1d09a52d772a2dd036f0fe4b633" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:7e9c00d6faffb6be233e1f27db4c01ee914fcc5d92211d6c6f0dac0da1de2021" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"92e208c8828ea41fb61e881b49fe883fba12f3730ec72a49b64be0ae74bb486d  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:881a343c08d08b68f91a4a757d00a72ae53b5f6031988c63984cfe6eef0c2439" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:4a0345eb07f7bcd7bc7e93a9aeede2b641671810e086f70c8a4d46822dc98118" [label="mkdir{path=/go}" shape="note"];
  "sha256:94991435e60d464e0fa1fe0254f1cc714aa2f497f8f5ae4c33287afbd197e0d0" [label="sha256:94991435e60d464e0fa1fe0254f1cc714aa2f497f8f5ae4c33287afbd197e0d0" shape="plaintext"];
  "sha256:f3d38db67b2feff2f624305330dd3a7a86d212fec8d4537820a971dcbfdcde74" -> "sha256:be5ab9759f2f9261e9a308053d07cc6658f2137b5a27eb7ba883a323d0aeaea8" [label=""];
  "sha256:be5ab9759f2f9261e9a308053d07cc6658f2137b5a27eb7ba883a323d0aeaea8" -> "sha256:8324898ba126c7bed6c04696cee22367a4a3f1d09a52d772a2dd036f0fe4b633" [label=""];
  "sha256:8324898ba126c7bed6c04696cee22367a4a3f1d09a52d772a2dd036f0fe4b633" -> "sha256:7e9c00d6faffb6be233e1f27db4c01ee914fcc5d92211d6c6f0dac0da1de2021" [label=""];
  "sha256:7e9c00d6faffb6be233e1f27db4c01ee914fcc5d92211d6c6f0dac0da1de2021" -> "sha256:881a343c08d08b68f91a4a757d00a72ae53b5f6031988c63984cfe6eef0c2439" [label=""];
  "sha256:881a343c08d08b68f91a4a757d00a72ae53b5f6031988c63984cfe6eef0c2439" -> "sha256:4a0345eb07f7bcd7bc7e93a9aeede2b641671810e086f70c8a4d46822dc98118" [label=""];
  "sha256:4a0345eb07f7bcd7bc7e93a9aeede2b641671810e086f70c8a4d46822dc98118" -> "sha256:94991435e60d464e0fa1fe0254f1cc714aa2f497f8f5ae4c33287afbd197e0d0" [label=""];
}

