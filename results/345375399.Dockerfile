[app/sources/345375399.Dockerfile]
digraph {
  "sha256:2baf2b31be3133770befa53c60244aadd472cfcbf99318ca36bdacc74b9c30f6" [label="docker-image://docker.io/balenalib/odroid-c1-ubuntu:artful-build" shape="ellipse"];
  "sha256:0f5067d6154f6267e7e09c526ea8ea91e8c2f4400d4589033e7f0ed002b8e0a7" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:6cd06ff23219b8bcd24236b91a8d65e97eb834af4c99e3a93d9e3b4d17af4e4c" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:6371935a59a0998970e67ca5843c00ebdfa1d8e1bfd27ab78c0115ee82ce7189" [label="mkdir{path=/go}" shape="note"];
  "sha256:57778dec53b21477c0c059deecec159240869103043558b53e693eeb732552fd" [label="sha256:57778dec53b21477c0c059deecec159240869103043558b53e693eeb732552fd" shape="plaintext"];
  "sha256:2baf2b31be3133770befa53c60244aadd472cfcbf99318ca36bdacc74b9c30f6" -> "sha256:0f5067d6154f6267e7e09c526ea8ea91e8c2f4400d4589033e7f0ed002b8e0a7" [label=""];
  "sha256:0f5067d6154f6267e7e09c526ea8ea91e8c2f4400d4589033e7f0ed002b8e0a7" -> "sha256:6cd06ff23219b8bcd24236b91a8d65e97eb834af4c99e3a93d9e3b4d17af4e4c" [label=""];
  "sha256:6cd06ff23219b8bcd24236b91a8d65e97eb834af4c99e3a93d9e3b4d17af4e4c" -> "sha256:6371935a59a0998970e67ca5843c00ebdfa1d8e1bfd27ab78c0115ee82ce7189" [label=""];
  "sha256:6371935a59a0998970e67ca5843c00ebdfa1d8e1bfd27ab78c0115ee82ce7189" -> "sha256:57778dec53b21477c0c059deecec159240869103043558b53e693eeb732552fd" [label=""];
}

