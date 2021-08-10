[app/sources/345359858.Dockerfile]
digraph {
  "sha256:64d3e21868ec7f07b00829e5680ab9f5c1ed06688023815ec82a7541e77179ec" [label="docker-image://docker.io/balenalib/revpi-core-3-ubuntu:trusty-build" shape="ellipse"];
  "sha256:bc9bf00940947a6be4694f423014335b5b024d1901e2cbbda807a917bd870048" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:4a5c5215038d076603e0bad99fba2c742ff9fe29eeb261b3d9501b609db6a74f" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:2090085a674ce5b7d2edd2d93552078890fda5d408b7c5a2278556e76e14fc66" [label="mkdir{path=/go}" shape="note"];
  "sha256:8f62545ab430e81862eb21a16be8809a2606cfc40467b626d64b24e4b4749abc" [label="sha256:8f62545ab430e81862eb21a16be8809a2606cfc40467b626d64b24e4b4749abc" shape="plaintext"];
  "sha256:64d3e21868ec7f07b00829e5680ab9f5c1ed06688023815ec82a7541e77179ec" -> "sha256:bc9bf00940947a6be4694f423014335b5b024d1901e2cbbda807a917bd870048" [label=""];
  "sha256:bc9bf00940947a6be4694f423014335b5b024d1901e2cbbda807a917bd870048" -> "sha256:4a5c5215038d076603e0bad99fba2c742ff9fe29eeb261b3d9501b609db6a74f" [label=""];
  "sha256:4a5c5215038d076603e0bad99fba2c742ff9fe29eeb261b3d9501b609db6a74f" -> "sha256:2090085a674ce5b7d2edd2d93552078890fda5d408b7c5a2278556e76e14fc66" [label=""];
  "sha256:2090085a674ce5b7d2edd2d93552078890fda5d408b7c5a2278556e76e14fc66" -> "sha256:8f62545ab430e81862eb21a16be8809a2606cfc40467b626d64b24e4b4749abc" [label=""];
}

