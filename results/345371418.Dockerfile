[app/sources/345371418.Dockerfile]
digraph {
  "sha256:7a7fef0a2e77d86e2a2e0eec1f9a6542e98fce15fb1dad6033cfd3b148c3e4c6" [label="docker-image://docker.io/balenalib/cl-som-imx8-alpine:3.8-build@sha256:e7d01ce62a5ee5e581bd4b95c9578d56a240edb67f72b5b69123c3dbc988aac7" shape="ellipse"];
  "sha256:ad1f7ff126d4dcd313f09b8abfcd53b93a1c83d8df5596c3b5e58e50e7e4fba7" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:46078faa3bf213cfcf0a89966ae9ec6634818ac47e9000a695939a6665c6a062" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-aarch64.tar.gz\" \t&& echo \"03fee34f3aad11399ce846dbab0fb24e2f17f425eb5d7f52af67642e09c0ed28  go$GO_VERSION.linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-aarch64.tar.gz" shape="box"];
  "sha256:8c6fc7b5815fac4d062077223caf43d4f70a09aa935407ee62d6556de46a7feb" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:abc7a4661c8285b1eabf3b2d9b6953d70c72cc24f676caed205358cda8e5cb78" [label="mkdir{path=/go}" shape="note"];
  "sha256:e618f74d0e8ef3b350f86e2ac7a63e16f6e022d57e7880a6735a235c3507f723" [label="sha256:e618f74d0e8ef3b350f86e2ac7a63e16f6e022d57e7880a6735a235c3507f723" shape="plaintext"];
  "sha256:7a7fef0a2e77d86e2a2e0eec1f9a6542e98fce15fb1dad6033cfd3b148c3e4c6" -> "sha256:ad1f7ff126d4dcd313f09b8abfcd53b93a1c83d8df5596c3b5e58e50e7e4fba7" [label=""];
  "sha256:ad1f7ff126d4dcd313f09b8abfcd53b93a1c83d8df5596c3b5e58e50e7e4fba7" -> "sha256:46078faa3bf213cfcf0a89966ae9ec6634818ac47e9000a695939a6665c6a062" [label=""];
  "sha256:46078faa3bf213cfcf0a89966ae9ec6634818ac47e9000a695939a6665c6a062" -> "sha256:8c6fc7b5815fac4d062077223caf43d4f70a09aa935407ee62d6556de46a7feb" [label=""];
  "sha256:8c6fc7b5815fac4d062077223caf43d4f70a09aa935407ee62d6556de46a7feb" -> "sha256:abc7a4661c8285b1eabf3b2d9b6953d70c72cc24f676caed205358cda8e5cb78" [label=""];
  "sha256:abc7a4661c8285b1eabf3b2d9b6953d70c72cc24f676caed205358cda8e5cb78" -> "sha256:e618f74d0e8ef3b350f86e2ac7a63e16f6e022d57e7880a6735a235c3507f723" [label=""];
}

