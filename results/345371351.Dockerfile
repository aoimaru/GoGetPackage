[app/sources/345371351.Dockerfile]
digraph {
  "sha256:a7aaa561a0bdd3259ae20c20497d8fa99625cdf3e2537fcc7660b623ec92574c" [label="docker-image://docker.io/balenalib/ccon-01-fedora:26-run" shape="ellipse"];
  "sha256:70231085553047b77dd880e6af39da7242b56ec50faa0f42256f2831496f3d33" [label="/bin/sh -c dnf install -y \t\tgcc-c++ \t\tgcc \t\tgit \t&& dnf clean all" shape="box"];
  "sha256:f3ee5864bb0e6226ab70cea9a9d0830ac7cb5bcd06ec9efb74727239c9891ad3" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:bf72ed16e612886cc928ee41a278832db92b67b81147732335537391ce1a7809" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:3cab7f09754391009fcf8416a011bba75a429d3374577d4769c0f65a6a9c7291" [label="mkdir{path=/go}" shape="note"];
  "sha256:3fcc10483ff6b04706cd906e5d2af2f5254672c53875b9de42fffc022c127227" [label="sha256:3fcc10483ff6b04706cd906e5d2af2f5254672c53875b9de42fffc022c127227" shape="plaintext"];
  "sha256:a7aaa561a0bdd3259ae20c20497d8fa99625cdf3e2537fcc7660b623ec92574c" -> "sha256:70231085553047b77dd880e6af39da7242b56ec50faa0f42256f2831496f3d33" [label=""];
  "sha256:70231085553047b77dd880e6af39da7242b56ec50faa0f42256f2831496f3d33" -> "sha256:f3ee5864bb0e6226ab70cea9a9d0830ac7cb5bcd06ec9efb74727239c9891ad3" [label=""];
  "sha256:f3ee5864bb0e6226ab70cea9a9d0830ac7cb5bcd06ec9efb74727239c9891ad3" -> "sha256:bf72ed16e612886cc928ee41a278832db92b67b81147732335537391ce1a7809" [label=""];
  "sha256:bf72ed16e612886cc928ee41a278832db92b67b81147732335537391ce1a7809" -> "sha256:3cab7f09754391009fcf8416a011bba75a429d3374577d4769c0f65a6a9c7291" [label=""];
  "sha256:3cab7f09754391009fcf8416a011bba75a429d3374577d4769c0f65a6a9c7291" -> "sha256:3fcc10483ff6b04706cd906e5d2af2f5254672c53875b9de42fffc022c127227" [label=""];
}

