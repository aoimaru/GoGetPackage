[app/sources/345368269.Dockerfile]
digraph {
  "sha256:74b5d1064ed6b30573c66eb00def94998b920bbe380079eddf3d1bacdb6388ee" [label="docker-image://docker.io/balenalib/asus-tinker-board-s-fedora:26-run" shape="ellipse"];
  "sha256:36612a91b18de42ca3f7d69a4f3dbf0e900f2333f0a5836e22d21605ec68832c" [label="/bin/sh -c dnf install -y \t\tgcc-c++ \t\tgcc \t\tgit \t&& dnf clean all" shape="box"];
  "sha256:eb66843a1db67abb9f6e8c3b49b5804a88b56b06061ccfe122a4aa89b1f32207" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:61230c50dffe2ef3ef9a96dc7f8d80cd6d2f7e9676e0566df481cb783301edce" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:8e8ce997df80b7e5555eb91a69036db8c280e0328a213b3915fc19b8fea8c9f3" [label="mkdir{path=/go}" shape="note"];
  "sha256:aa177ee82303b0a2ef68c6590aaa68e0851f915350b5578a057b19001161bdc6" [label="sha256:aa177ee82303b0a2ef68c6590aaa68e0851f915350b5578a057b19001161bdc6" shape="plaintext"];
  "sha256:74b5d1064ed6b30573c66eb00def94998b920bbe380079eddf3d1bacdb6388ee" -> "sha256:36612a91b18de42ca3f7d69a4f3dbf0e900f2333f0a5836e22d21605ec68832c" [label=""];
  "sha256:36612a91b18de42ca3f7d69a4f3dbf0e900f2333f0a5836e22d21605ec68832c" -> "sha256:eb66843a1db67abb9f6e8c3b49b5804a88b56b06061ccfe122a4aa89b1f32207" [label=""];
  "sha256:eb66843a1db67abb9f6e8c3b49b5804a88b56b06061ccfe122a4aa89b1f32207" -> "sha256:61230c50dffe2ef3ef9a96dc7f8d80cd6d2f7e9676e0566df481cb783301edce" [label=""];
  "sha256:61230c50dffe2ef3ef9a96dc7f8d80cd6d2f7e9676e0566df481cb783301edce" -> "sha256:8e8ce997df80b7e5555eb91a69036db8c280e0328a213b3915fc19b8fea8c9f3" [label=""];
  "sha256:8e8ce997df80b7e5555eb91a69036db8c280e0328a213b3915fc19b8fea8c9f3" -> "sha256:aa177ee82303b0a2ef68c6590aaa68e0851f915350b5578a057b19001161bdc6" [label=""];
}

