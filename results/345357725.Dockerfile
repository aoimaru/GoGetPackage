[app/sources/345357725.Dockerfile]
digraph {
  "sha256:395925dca12e1eaeeaa31c85496077c9291c1ddc02a5410248f1c9924cde4f07" [label="docker-image://docker.io/balenalib/qemux86-64-alpine:3.7-build" shape="ellipse"];
  "sha256:5138622dc3775d3348c5a3b3cefa1d1f946814e7e3892d6a8c2c239820d66815" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:c6746651718f70e77c2f37d5a8d16c33973a4e2f324f989ff2a58f8e3c0b4a55" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-amd64.tar.gz\" \t&& echo \"6e010100facdbae49d3226c6b1f67ad3212d5cd941050cef721e2e6145c4f1b8  go$GO_VERSION.linux-alpine-amd64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-amd64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-amd64.tar.gz" shape="box"];
  "sha256:c941e1e7a5ee3d96eae7eb8a8cf1c13d43fef142de996deb9b191185da321ed2" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:e47b23fb6245baf4f1b26b88fdfedbfdee62136a23a032afd6f2f7f435e65e33" [label="mkdir{path=/go}" shape="note"];
  "sha256:e1834cda8fb93a5d463b331388644d9c5717f114526c587dfd712e9115ba9fcd" [label="sha256:e1834cda8fb93a5d463b331388644d9c5717f114526c587dfd712e9115ba9fcd" shape="plaintext"];
  "sha256:395925dca12e1eaeeaa31c85496077c9291c1ddc02a5410248f1c9924cde4f07" -> "sha256:5138622dc3775d3348c5a3b3cefa1d1f946814e7e3892d6a8c2c239820d66815" [label=""];
  "sha256:5138622dc3775d3348c5a3b3cefa1d1f946814e7e3892d6a8c2c239820d66815" -> "sha256:c6746651718f70e77c2f37d5a8d16c33973a4e2f324f989ff2a58f8e3c0b4a55" [label=""];
  "sha256:c6746651718f70e77c2f37d5a8d16c33973a4e2f324f989ff2a58f8e3c0b4a55" -> "sha256:c941e1e7a5ee3d96eae7eb8a8cf1c13d43fef142de996deb9b191185da321ed2" [label=""];
  "sha256:c941e1e7a5ee3d96eae7eb8a8cf1c13d43fef142de996deb9b191185da321ed2" -> "sha256:e47b23fb6245baf4f1b26b88fdfedbfdee62136a23a032afd6f2f7f435e65e33" [label=""];
  "sha256:e47b23fb6245baf4f1b26b88fdfedbfdee62136a23a032afd6f2f7f435e65e33" -> "sha256:e1834cda8fb93a5d463b331388644d9c5717f114526c587dfd712e9115ba9fcd" [label=""];
}

