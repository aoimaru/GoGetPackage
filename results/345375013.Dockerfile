[app/sources/345375013.Dockerfile]
digraph {
  "sha256:792680eb0d2753851b3e9c46c2e98bf8c2ade35d4c24bf020204aa5007e4839a" [label="docker-image://docker.io/balenalib/nitrogen6x-alpine:3.7-build" shape="ellipse"];
  "sha256:f6deae6505ecc079d802fa5718f3fa01a500d0084865fc9cbccd0d2564e104c8" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:507b5de850bb9e518f4045821e20fb48b8226e0ada63f20263d99571f398b8bf" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"76be47e1f6979af4fc7c0c06d883a082f78a98b9948cf28359702877a8b2b9b2  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:6788f2829b1edc54b5a846af106b92eee5a20b7c869a35b18b72907a16ea8e34" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:0ac77fde7a7c1927b196e9b5ec1ddcc7c19a4f32a8fea52599566880038854ab" [label="mkdir{path=/go}" shape="note"];
  "sha256:4251a7375b504ecbaa88e4c56f477212848cd02b331b316ff68807d9ee06ee8d" [label="sha256:4251a7375b504ecbaa88e4c56f477212848cd02b331b316ff68807d9ee06ee8d" shape="plaintext"];
  "sha256:792680eb0d2753851b3e9c46c2e98bf8c2ade35d4c24bf020204aa5007e4839a" -> "sha256:f6deae6505ecc079d802fa5718f3fa01a500d0084865fc9cbccd0d2564e104c8" [label=""];
  "sha256:f6deae6505ecc079d802fa5718f3fa01a500d0084865fc9cbccd0d2564e104c8" -> "sha256:507b5de850bb9e518f4045821e20fb48b8226e0ada63f20263d99571f398b8bf" [label=""];
  "sha256:507b5de850bb9e518f4045821e20fb48b8226e0ada63f20263d99571f398b8bf" -> "sha256:6788f2829b1edc54b5a846af106b92eee5a20b7c869a35b18b72907a16ea8e34" [label=""];
  "sha256:6788f2829b1edc54b5a846af106b92eee5a20b7c869a35b18b72907a16ea8e34" -> "sha256:0ac77fde7a7c1927b196e9b5ec1ddcc7c19a4f32a8fea52599566880038854ab" [label=""];
  "sha256:0ac77fde7a7c1927b196e9b5ec1ddcc7c19a4f32a8fea52599566880038854ab" -> "sha256:4251a7375b504ecbaa88e4c56f477212848cd02b331b316ff68807d9ee06ee8d" [label=""];
}

