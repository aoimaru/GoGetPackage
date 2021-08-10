[app/sources/345358160.Dockerfile]
digraph {
  "sha256:2e9087caf2e36ae2e2eac793254e3d6b3056a7d07b4672ac5e9d4edb9121f59b" [label="docker-image://docker.io/balenalib/raspberrypi3-64-fedora:30-run" shape="ellipse"];
  "sha256:42d8d1227d95bf9d8aa421abd9250c0b986c51204220bb95b7ac5924627d4352" [label="/bin/sh -c dnf install -y \t\tgcc-c++ \t\tgcc \t\tgit \t&& dnf clean all" shape="box"];
  "sha256:cb661e1055fa15b6c9ba18f415a45a3b0028c4437163b6025b45c961ddd9b129" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz" shape="box"];
  "sha256:074aa42dbf097de8f624f7935f48a4bcb0f4652b3b78463f48b9704292dea60e" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:c663ccd20dcbee45129b50433ce561136184c8a317c1ab7e9765928aa20fb1dc" [label="mkdir{path=/go}" shape="note"];
  "sha256:902d9a51f55c450993b706cc1f92361b9d2140b3da7198700b979b794e25b1e6" [label="sha256:902d9a51f55c450993b706cc1f92361b9d2140b3da7198700b979b794e25b1e6" shape="plaintext"];
  "sha256:2e9087caf2e36ae2e2eac793254e3d6b3056a7d07b4672ac5e9d4edb9121f59b" -> "sha256:42d8d1227d95bf9d8aa421abd9250c0b986c51204220bb95b7ac5924627d4352" [label=""];
  "sha256:42d8d1227d95bf9d8aa421abd9250c0b986c51204220bb95b7ac5924627d4352" -> "sha256:cb661e1055fa15b6c9ba18f415a45a3b0028c4437163b6025b45c961ddd9b129" [label=""];
  "sha256:cb661e1055fa15b6c9ba18f415a45a3b0028c4437163b6025b45c961ddd9b129" -> "sha256:074aa42dbf097de8f624f7935f48a4bcb0f4652b3b78463f48b9704292dea60e" [label=""];
  "sha256:074aa42dbf097de8f624f7935f48a4bcb0f4652b3b78463f48b9704292dea60e" -> "sha256:c663ccd20dcbee45129b50433ce561136184c8a317c1ab7e9765928aa20fb1dc" [label=""];
  "sha256:c663ccd20dcbee45129b50433ce561136184c8a317c1ab7e9765928aa20fb1dc" -> "sha256:902d9a51f55c450993b706cc1f92361b9d2140b3da7198700b979b794e25b1e6" [label=""];
}

