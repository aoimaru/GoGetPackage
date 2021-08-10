[app/sources/345373722.Dockerfile]
digraph {
  "sha256:f08718785cdaf507da5d6cb15267244bfe503f40460ee65c64755700c7bfa7d1" [label="docker-image://docker.io/balenalib/n510-tx2-fedora:26-run" shape="ellipse"];
  "sha256:fb83407b3b051d1e876bc5fa282482592f5ce79e3db8a71d7d8f90a89aa57eec" [label="/bin/sh -c dnf install -y \t\tgcc-c++ \t\tgcc \t\tgit \t&& dnf clean all" shape="box"];
  "sha256:7ae5d6fa680cfc8c944c4d980b3a6c4859d31487730b62ec554d58cf5ccebc5b" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-aarch64.tar.gz\" \t&& echo \"8b000bee6c8e2512d79182b56b7023d83a9a297bf813a8565ebbee03d8fb2cd7  go$GO_VERSION.linux-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-aarch64.tar.gz" shape="box"];
  "sha256:27fd172d6ea932d5a876a9bab8862186e9e7fb693da2a9cafdcc187430dbf862" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:e40657eafe1e62c6ff72e01e22f1e421c5d11d8d75ef95f173c22c851b6c94dc" [label="mkdir{path=/go}" shape="note"];
  "sha256:e3ef6b3773677e7011695ab1a585eb22b667f71f53af8a21d13776e612a2ac91" [label="sha256:e3ef6b3773677e7011695ab1a585eb22b667f71f53af8a21d13776e612a2ac91" shape="plaintext"];
  "sha256:f08718785cdaf507da5d6cb15267244bfe503f40460ee65c64755700c7bfa7d1" -> "sha256:fb83407b3b051d1e876bc5fa282482592f5ce79e3db8a71d7d8f90a89aa57eec" [label=""];
  "sha256:fb83407b3b051d1e876bc5fa282482592f5ce79e3db8a71d7d8f90a89aa57eec" -> "sha256:7ae5d6fa680cfc8c944c4d980b3a6c4859d31487730b62ec554d58cf5ccebc5b" [label=""];
  "sha256:7ae5d6fa680cfc8c944c4d980b3a6c4859d31487730b62ec554d58cf5ccebc5b" -> "sha256:27fd172d6ea932d5a876a9bab8862186e9e7fb693da2a9cafdcc187430dbf862" [label=""];
  "sha256:27fd172d6ea932d5a876a9bab8862186e9e7fb693da2a9cafdcc187430dbf862" -> "sha256:e40657eafe1e62c6ff72e01e22f1e421c5d11d8d75ef95f173c22c851b6c94dc" [label=""];
  "sha256:e40657eafe1e62c6ff72e01e22f1e421c5d11d8d75ef95f173c22c851b6c94dc" -> "sha256:e3ef6b3773677e7011695ab1a585eb22b667f71f53af8a21d13776e612a2ac91" [label=""];
}

