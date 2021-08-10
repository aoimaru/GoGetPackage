[app/sources/345373077.Dockerfile]
digraph {
  "sha256:9d4c6bbd33ff839c82ddccf7dfe6c0716932c5d98c57bdc0edaa3f2a26cc5849" [label="docker-image://docker.io/balenalib/iot2000-ubuntu:bionic-build@sha256:83718d7e9639ded708f0695976b53de1ab1fbd87d76aa8fcb60f25306e648526" shape="ellipse"];
  "sha256:f023c7dc5f93d983366f561b76c3ea0b55fa121823c3f7556ff7470a3f63de7c" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-i386-nlp.tar.gz\" \t&& echo \"4311bd415762c95664dfee41ddc1e2c19bd3ffa85e20fb5f90951a69e2c33f0d  go$GO_VERSION.linux-i386-nlp.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-i386-nlp.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-i386-nlp.tar.gz" shape="box"];
  "sha256:060f3df6e674f7b2936bfd992934b0fa4591e3fbb667fb0b25bf9785111567e0" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:5582d243aab246f6570428bb05428e5a07d128ad963018e28199f0a50f278c90" [label="mkdir{path=/go}" shape="note"];
  "sha256:b8c504aba54bee99b5361c933683276bebcaa8fa5c3db24766e3402036b4c7d4" [label="sha256:b8c504aba54bee99b5361c933683276bebcaa8fa5c3db24766e3402036b4c7d4" shape="plaintext"];
  "sha256:9d4c6bbd33ff839c82ddccf7dfe6c0716932c5d98c57bdc0edaa3f2a26cc5849" -> "sha256:f023c7dc5f93d983366f561b76c3ea0b55fa121823c3f7556ff7470a3f63de7c" [label=""];
  "sha256:f023c7dc5f93d983366f561b76c3ea0b55fa121823c3f7556ff7470a3f63de7c" -> "sha256:060f3df6e674f7b2936bfd992934b0fa4591e3fbb667fb0b25bf9785111567e0" [label=""];
  "sha256:060f3df6e674f7b2936bfd992934b0fa4591e3fbb667fb0b25bf9785111567e0" -> "sha256:5582d243aab246f6570428bb05428e5a07d128ad963018e28199f0a50f278c90" [label=""];
  "sha256:5582d243aab246f6570428bb05428e5a07d128ad963018e28199f0a50f278c90" -> "sha256:b8c504aba54bee99b5361c933683276bebcaa8fa5c3db24766e3402036b4c7d4" [label=""];
}

