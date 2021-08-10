[app/sources/345368275.Dockerfile]
digraph {
  "sha256:c88292b77eee9b665c0ff89544d99f3a1e7a082dd66f5e51f50e664f0a603073" [label="docker-image://docker.io/balenalib/asus-tinker-board-s-fedora:28-run" shape="ellipse"];
  "sha256:2261449ec3379833d08112f739f9a0340365cf9a7aa606f3d38433fcd46dc88a" [label="/bin/sh -c dnf install -y \t\tgcc-c++ \t\tgcc \t\tgit \t&& dnf clean all" shape="box"];
  "sha256:4800081a966147171e0c5104eacff7a9750a5983a8520ac7fe5a0a97df900e95" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:44b7b5da6bb989bc0b127f5e3e588d9ebc3cae2ee680fc9a0d95d4db259aec95" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:068d01fc274881e5a692e386e4db6b5016d041b562051248ec944038d0809ac2" [label="mkdir{path=/go}" shape="note"];
  "sha256:c51849f561629895915ecbf2bf97d78f55ecf3eaf5cf03aa30dcbe4dfb9ea925" [label="sha256:c51849f561629895915ecbf2bf97d78f55ecf3eaf5cf03aa30dcbe4dfb9ea925" shape="plaintext"];
  "sha256:c88292b77eee9b665c0ff89544d99f3a1e7a082dd66f5e51f50e664f0a603073" -> "sha256:2261449ec3379833d08112f739f9a0340365cf9a7aa606f3d38433fcd46dc88a" [label=""];
  "sha256:2261449ec3379833d08112f739f9a0340365cf9a7aa606f3d38433fcd46dc88a" -> "sha256:4800081a966147171e0c5104eacff7a9750a5983a8520ac7fe5a0a97df900e95" [label=""];
  "sha256:4800081a966147171e0c5104eacff7a9750a5983a8520ac7fe5a0a97df900e95" -> "sha256:44b7b5da6bb989bc0b127f5e3e588d9ebc3cae2ee680fc9a0d95d4db259aec95" [label=""];
  "sha256:44b7b5da6bb989bc0b127f5e3e588d9ebc3cae2ee680fc9a0d95d4db259aec95" -> "sha256:068d01fc274881e5a692e386e4db6b5016d041b562051248ec944038d0809ac2" [label=""];
  "sha256:068d01fc274881e5a692e386e4db6b5016d041b562051248ec944038d0809ac2" -> "sha256:c51849f561629895915ecbf2bf97d78f55ecf3eaf5cf03aa30dcbe4dfb9ea925" [label=""];
}

