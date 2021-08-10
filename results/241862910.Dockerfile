[app/sources/241862910.Dockerfile]
digraph {
  "sha256:a37ce36545563fc4158a4815e769bf5e64ae32aa43846c9623bcfc0271bd56b2" [label="docker-image://docker.io/resin/rpi-raspbian:latest" shape="ellipse"];
  "sha256:829214021ee52e4c1a3f63e395e9f66e096c85f3686355a4026e933e449fe9a7" [label="/bin/sh -c apt-get update &&     apt-get install -qy build-essential wiringpi git curl ca-certificates &&     curl -sSLO https://storage.googleapis.com/golang/go1.7.5.linux-armv6l.tar.gz && \tmkdir -p /usr/local/go && \ttar -xvf go1.7.5.linux-armv6l.tar.gz -C /usr/local/go/ --strip-components=1" shape="box"];
  "sha256:7b9cb67d9db623070a6388dc84b610323d0497a4165b0e31de5d184a553c5494" [label="/bin/sh -c mkdir -p /go/src/github.com/alexellis/blinkt_go_examples/progress" shape="box"];
  "sha256:f05dc152230c2936996779e7c64c9ee84a83e0fc56bd94d834d5c4b585813c72" [label="mkdir{path=/go/src/github.com/alexellis/blinkt_go_examples/progress}" shape="note"];
  "sha256:120168bb55432cb892120d3245015358e75992452128c0bf7b486a0d2b21ae92" [label="local://context" shape="ellipse"];
  "sha256:64b003d9ab70305c2fd1aa85b9f38b584ee676f1b073c9bab1f4e9233fe1ead5" [label="copy{src=/app.go, dest=/go/src/github.com/alexellis/blinkt_go_examples/progress/}" shape="note"];
  "sha256:4ac3051487b996d16b1225b8cfd0e04913f6c9a9f7681ca414c0994358a6288c" [label="/bin/sh -c go get -d -v" shape="box"];
  "sha256:0746463637f9fd232343ea67af4e34c7d28465a7807b4ae965cc29ffca411bda" [label="/bin/sh -c go build" shape="box"];
  "sha256:14ba4a0a99f0980c24dce2765a68e3b2170d1c2c1f0e6a418c1f458feb9b3833" [label="sha256:14ba4a0a99f0980c24dce2765a68e3b2170d1c2c1f0e6a418c1f458feb9b3833" shape="plaintext"];
  "sha256:a37ce36545563fc4158a4815e769bf5e64ae32aa43846c9623bcfc0271bd56b2" -> "sha256:829214021ee52e4c1a3f63e395e9f66e096c85f3686355a4026e933e449fe9a7" [label=""];
  "sha256:829214021ee52e4c1a3f63e395e9f66e096c85f3686355a4026e933e449fe9a7" -> "sha256:7b9cb67d9db623070a6388dc84b610323d0497a4165b0e31de5d184a553c5494" [label=""];
  "sha256:7b9cb67d9db623070a6388dc84b610323d0497a4165b0e31de5d184a553c5494" -> "sha256:f05dc152230c2936996779e7c64c9ee84a83e0fc56bd94d834d5c4b585813c72" [label=""];
  "sha256:f05dc152230c2936996779e7c64c9ee84a83e0fc56bd94d834d5c4b585813c72" -> "sha256:64b003d9ab70305c2fd1aa85b9f38b584ee676f1b073c9bab1f4e9233fe1ead5" [label=""];
  "sha256:120168bb55432cb892120d3245015358e75992452128c0bf7b486a0d2b21ae92" -> "sha256:64b003d9ab70305c2fd1aa85b9f38b584ee676f1b073c9bab1f4e9233fe1ead5" [label=""];
  "sha256:64b003d9ab70305c2fd1aa85b9f38b584ee676f1b073c9bab1f4e9233fe1ead5" -> "sha256:4ac3051487b996d16b1225b8cfd0e04913f6c9a9f7681ca414c0994358a6288c" [label=""];
  "sha256:4ac3051487b996d16b1225b8cfd0e04913f6c9a9f7681ca414c0994358a6288c" -> "sha256:0746463637f9fd232343ea67af4e34c7d28465a7807b4ae965cc29ffca411bda" [label=""];
  "sha256:0746463637f9fd232343ea67af4e34c7d28465a7807b4ae965cc29ffca411bda" -> "sha256:14ba4a0a99f0980c24dce2765a68e3b2170d1c2c1f0e6a418c1f458feb9b3833" [label=""];
}

