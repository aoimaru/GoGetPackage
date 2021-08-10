[app/sources/345371652.Dockerfile]
digraph {
  "sha256:ad62079cfcd5e74f95869cc85743d286c53e5363cf5b254c80587302c8ed3354" [label="docker-image://docker.io/balenalib/cybertan-ze250-ubuntu:bionic-build" shape="ellipse"];
  "sha256:1417bdd4d8bc307194f0b25a8d242440c396a5b11bb0ac3abbb2a69efc760d52" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-i386-nlp.tar.gz\" \t&& echo \"2558e34e8e2aa952ce4505fc97872c3ef9fa8c25bcd8cab15d0026cc2e91ec30  go$GO_VERSION.linux-i386-nlp.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-i386-nlp.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-i386-nlp.tar.gz" shape="box"];
  "sha256:af42303a41b310ce20c124d3f24c69076732ffd7febcdb43aa943a4c30673afc" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:fa09aa16e9b7c839c98e8897878faab9b6075a6d27117b68d3b4ba9c7981848d" [label="mkdir{path=/go}" shape="note"];
  "sha256:f52275f56ab8d2dff872aa36e4c56de25c47a0d9d3c90695a80d232dcfb60714" [label="sha256:f52275f56ab8d2dff872aa36e4c56de25c47a0d9d3c90695a80d232dcfb60714" shape="plaintext"];
  "sha256:ad62079cfcd5e74f95869cc85743d286c53e5363cf5b254c80587302c8ed3354" -> "sha256:1417bdd4d8bc307194f0b25a8d242440c396a5b11bb0ac3abbb2a69efc760d52" [label=""];
  "sha256:1417bdd4d8bc307194f0b25a8d242440c396a5b11bb0ac3abbb2a69efc760d52" -> "sha256:af42303a41b310ce20c124d3f24c69076732ffd7febcdb43aa943a4c30673afc" [label=""];
  "sha256:af42303a41b310ce20c124d3f24c69076732ffd7febcdb43aa943a4c30673afc" -> "sha256:fa09aa16e9b7c839c98e8897878faab9b6075a6d27117b68d3b4ba9c7981848d" [label=""];
  "sha256:fa09aa16e9b7c839c98e8897878faab9b6075a6d27117b68d3b4ba9c7981848d" -> "sha256:f52275f56ab8d2dff872aa36e4c56de25c47a0d9d3c90695a80d232dcfb60714" [label=""];
}

