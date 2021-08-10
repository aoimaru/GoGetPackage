[app/sources/345375227.Dockerfile]
digraph {
  "sha256:b2beedc6e5cf4e86bb28439f2beb69920ca4506f47c67059520b8ac07b58bf81" [label="docker-image://docker.io/balenalib/npe-x500-m3-alpine:3.7-build@sha256:44b8443ea1e22daaac31633783b14a762367de8763fa2cd2c543a19caa85b415" shape="ellipse"];
  "sha256:46256216db9d2c45983a15a0c1718e2b44dfde931cd2e9c4c3e72c148d31455c" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:242b6b989a069ae49b079d2868094a1b5477f6d5c591d2461b7ed3340641298b" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"296db57c7981a871e1cee0059a90385d39c73386ffc23002a26bfa9b05f514c4  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:81bf5243eba46f8055ef6f4ea4de5477433a98be8782d31b8e1c39540184089b" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:f280eed4ae9a818ab8f0ce0d95e643691419966fa714a264ed7af2d93559b29f" [label="mkdir{path=/go}" shape="note"];
  "sha256:1cd88e2b0753698eefb6f46c1d739d32ff750cf040d628c07157d36e4bceeab2" [label="sha256:1cd88e2b0753698eefb6f46c1d739d32ff750cf040d628c07157d36e4bceeab2" shape="plaintext"];
  "sha256:b2beedc6e5cf4e86bb28439f2beb69920ca4506f47c67059520b8ac07b58bf81" -> "sha256:46256216db9d2c45983a15a0c1718e2b44dfde931cd2e9c4c3e72c148d31455c" [label=""];
  "sha256:46256216db9d2c45983a15a0c1718e2b44dfde931cd2e9c4c3e72c148d31455c" -> "sha256:242b6b989a069ae49b079d2868094a1b5477f6d5c591d2461b7ed3340641298b" [label=""];
  "sha256:242b6b989a069ae49b079d2868094a1b5477f6d5c591d2461b7ed3340641298b" -> "sha256:81bf5243eba46f8055ef6f4ea4de5477433a98be8782d31b8e1c39540184089b" [label=""];
  "sha256:81bf5243eba46f8055ef6f4ea4de5477433a98be8782d31b8e1c39540184089b" -> "sha256:f280eed4ae9a818ab8f0ce0d95e643691419966fa714a264ed7af2d93559b29f" [label=""];
  "sha256:f280eed4ae9a818ab8f0ce0d95e643691419966fa714a264ed7af2d93559b29f" -> "sha256:1cd88e2b0753698eefb6f46c1d739d32ff750cf040d628c07157d36e4bceeab2" [label=""];
}

