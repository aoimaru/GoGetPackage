[app/sources/345361522.Dockerfile]
digraph {
  "sha256:83b86452bb79d194a1344da0b8c0ed410c0377a22a2c1f4c4f0e4a864251146a" [label="docker-image://docker.io/balenalib/var-som-mx6-ubuntu:bionic-build" shape="ellipse"];
  "sha256:ad019a89f1b81f3600c9eff5a1b1818797266955338cad5662b551ae12e7c7ed" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:57d2d085a75efe6a8caaa4bb53895cc781a4989db47e07a8a7e5b50ad2b153a7" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:7355d826d40635b5917498a66adacc28090a17b97a397e92e0e8ed53551f8c14" [label="mkdir{path=/go}" shape="note"];
  "sha256:3da0a40c9179537e4078a6c3fe00a7eec8da386d55acd49dbcb0fc572315f654" [label="sha256:3da0a40c9179537e4078a6c3fe00a7eec8da386d55acd49dbcb0fc572315f654" shape="plaintext"];
  "sha256:83b86452bb79d194a1344da0b8c0ed410c0377a22a2c1f4c4f0e4a864251146a" -> "sha256:ad019a89f1b81f3600c9eff5a1b1818797266955338cad5662b551ae12e7c7ed" [label=""];
  "sha256:ad019a89f1b81f3600c9eff5a1b1818797266955338cad5662b551ae12e7c7ed" -> "sha256:57d2d085a75efe6a8caaa4bb53895cc781a4989db47e07a8a7e5b50ad2b153a7" [label=""];
  "sha256:57d2d085a75efe6a8caaa4bb53895cc781a4989db47e07a8a7e5b50ad2b153a7" -> "sha256:7355d826d40635b5917498a66adacc28090a17b97a397e92e0e8ed53551f8c14" [label=""];
  "sha256:7355d826d40635b5917498a66adacc28090a17b97a397e92e0e8ed53551f8c14" -> "sha256:3da0a40c9179537e4078a6c3fe00a7eec8da386d55acd49dbcb0fc572315f654" [label=""];
}

