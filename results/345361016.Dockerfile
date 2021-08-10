[app/sources/345361016.Dockerfile]
digraph {
  "sha256:ec25d961ad665e81cf8e078a89c076f694b3565706544ce13db32ec88277ea83" [label="docker-image://docker.io/balenalib/ts4900-ubuntu:bionic-build" shape="ellipse"];
  "sha256:772f8a193f6b413d8e15e53a9cbf8987429c97ac64605a3e0b115ecccac641ad" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:6522cfda9d74f4f3082cecd619eeb881dbb3650a23de9661ca8198e81cb4d68d" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:5c2eee1e5c2790cec614b629ff17cdb2878971fa5465830046c205430ec74142" [label="mkdir{path=/go}" shape="note"];
  "sha256:100e4c138e34ce8f59cc4cd479256a91faae40db573a43a41b893f604ae1754b" [label="sha256:100e4c138e34ce8f59cc4cd479256a91faae40db573a43a41b893f604ae1754b" shape="plaintext"];
  "sha256:ec25d961ad665e81cf8e078a89c076f694b3565706544ce13db32ec88277ea83" -> "sha256:772f8a193f6b413d8e15e53a9cbf8987429c97ac64605a3e0b115ecccac641ad" [label=""];
  "sha256:772f8a193f6b413d8e15e53a9cbf8987429c97ac64605a3e0b115ecccac641ad" -> "sha256:6522cfda9d74f4f3082cecd619eeb881dbb3650a23de9661ca8198e81cb4d68d" [label=""];
  "sha256:6522cfda9d74f4f3082cecd619eeb881dbb3650a23de9661ca8198e81cb4d68d" -> "sha256:5c2eee1e5c2790cec614b629ff17cdb2878971fa5465830046c205430ec74142" [label=""];
  "sha256:5c2eee1e5c2790cec614b629ff17cdb2878971fa5465830046c205430ec74142" -> "sha256:100e4c138e34ce8f59cc4cd479256a91faae40db573a43a41b893f604ae1754b" [label=""];
}

