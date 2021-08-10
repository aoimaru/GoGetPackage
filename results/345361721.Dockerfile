[app/sources/345361721.Dockerfile]
digraph {
  "sha256:d22a564ac36ceb7a55757919b8443025efe7b9634d663a15060fb16e64409a73" [label="docker-image://docker.io/balenalib/zc702-zynq7-alpine:edge-run" shape="ellipse"];
  "sha256:ff7db63377964381426addf530e5af24d347cb8144801add5ef73d174f5fb8e6" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:e9e3a058fff3747740fc382bb26c99f7eb6c4681b9529cc13d03f35d7670e382" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:b521dfcd41dbeb4fff09eb08d0480f3811f854f2dd1dabfbb5eafdcd3dcae013" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"92e208c8828ea41fb61e881b49fe883fba12f3730ec72a49b64be0ae74bb486d  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:51c281bc954d368d0225644c0926c72bea2331441ab1db415ee5fc803f51f408" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:d8955c0cd1ae9336dc513600ebf41ad21f26833437266dbc71ad1d014e8b15e3" [label="mkdir{path=/go}" shape="note"];
  "sha256:be93afbbe63e20c888a3338a9b19f8d44cf7122b0364c9c716457e24712ed0c1" [label="sha256:be93afbbe63e20c888a3338a9b19f8d44cf7122b0364c9c716457e24712ed0c1" shape="plaintext"];
  "sha256:d22a564ac36ceb7a55757919b8443025efe7b9634d663a15060fb16e64409a73" -> "sha256:ff7db63377964381426addf530e5af24d347cb8144801add5ef73d174f5fb8e6" [label=""];
  "sha256:ff7db63377964381426addf530e5af24d347cb8144801add5ef73d174f5fb8e6" -> "sha256:e9e3a058fff3747740fc382bb26c99f7eb6c4681b9529cc13d03f35d7670e382" [label=""];
  "sha256:e9e3a058fff3747740fc382bb26c99f7eb6c4681b9529cc13d03f35d7670e382" -> "sha256:b521dfcd41dbeb4fff09eb08d0480f3811f854f2dd1dabfbb5eafdcd3dcae013" [label=""];
  "sha256:b521dfcd41dbeb4fff09eb08d0480f3811f854f2dd1dabfbb5eafdcd3dcae013" -> "sha256:51c281bc954d368d0225644c0926c72bea2331441ab1db415ee5fc803f51f408" [label=""];
  "sha256:51c281bc954d368d0225644c0926c72bea2331441ab1db415ee5fc803f51f408" -> "sha256:d8955c0cd1ae9336dc513600ebf41ad21f26833437266dbc71ad1d014e8b15e3" [label=""];
  "sha256:d8955c0cd1ae9336dc513600ebf41ad21f26833437266dbc71ad1d014e8b15e3" -> "sha256:be93afbbe63e20c888a3338a9b19f8d44cf7122b0364c9c716457e24712ed0c1" [label=""];
}

