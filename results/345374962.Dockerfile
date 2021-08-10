[app/sources/345374962.Dockerfile]
digraph {
  "sha256:cab238ecfde7687a000f6ae0ad073ca85d75a14b344d702a74d9e1e505beffc7" [label="docker-image://docker.io/balenalib/nanopi-neo-air-fedora:29-run" shape="ellipse"];
  "sha256:2ffc9dd56a324730b5ca546376070926e925c1ab019d80dcbaed511bda01cc25" [label="/bin/sh -c dnf install -y \t\tgcc-c++ \t\tgcc \t\tgit \t&& dnf clean all" shape="box"];
  "sha256:82ccfbc6b8469ab050a041000d1081d6a904af59280cc723f116a653dc4db02a" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:e66dbcb1a53caa92c25aed5010a03f4670c566827e887ab9c96afa527446e026" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:8b42d884200c33718ef8985daf654d5c834a78f0cd394427907ebe352c198467" [label="mkdir{path=/go}" shape="note"];
  "sha256:a1d3c099ce40be565593dc8757e3480050d39c891e167b29d5c09ac1fe3ed268" [label="sha256:a1d3c099ce40be565593dc8757e3480050d39c891e167b29d5c09ac1fe3ed268" shape="plaintext"];
  "sha256:cab238ecfde7687a000f6ae0ad073ca85d75a14b344d702a74d9e1e505beffc7" -> "sha256:2ffc9dd56a324730b5ca546376070926e925c1ab019d80dcbaed511bda01cc25" [label=""];
  "sha256:2ffc9dd56a324730b5ca546376070926e925c1ab019d80dcbaed511bda01cc25" -> "sha256:82ccfbc6b8469ab050a041000d1081d6a904af59280cc723f116a653dc4db02a" [label=""];
  "sha256:82ccfbc6b8469ab050a041000d1081d6a904af59280cc723f116a653dc4db02a" -> "sha256:e66dbcb1a53caa92c25aed5010a03f4670c566827e887ab9c96afa527446e026" [label=""];
  "sha256:e66dbcb1a53caa92c25aed5010a03f4670c566827e887ab9c96afa527446e026" -> "sha256:8b42d884200c33718ef8985daf654d5c834a78f0cd394427907ebe352c198467" [label=""];
  "sha256:8b42d884200c33718ef8985daf654d5c834a78f0cd394427907ebe352c198467" -> "sha256:a1d3c099ce40be565593dc8757e3480050d39c891e167b29d5c09ac1fe3ed268" [label=""];
}

