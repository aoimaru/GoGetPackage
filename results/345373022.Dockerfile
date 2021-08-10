[app/sources/345373022.Dockerfile]
digraph {
  "sha256:2d215013e811a8cc955993bb47ed83ad68f0c54ab3aee84bb9d05d468576c646" [label="docker-image://docker.io/balenalib/intel-nuc-ubuntu:bionic-run" shape="ellipse"];
  "sha256:6562b5eb711696bb17fd217dcb9f5d9a9ef0180f06d19278dc5dc7b10cd53911" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d67750ff1f3f7bdbf7588bf5e89b0312d6cafb5fac10b3e53568c347e2857356" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz\" \t&& echo \"aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0  go$GO_VERSION.linux-amd64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-amd64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-amd64.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:62a88a0a5cb128ea0f10850f78aba150d77530c44946b7ef7e7a955fc2ddbba4" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:9aef21ca1eb21bc24112f358a94b15a816a7102cf394d0bff3aaca3e1719b3a7" [label="mkdir{path=/go}" shape="note"];
  "sha256:366c46dcae636c77ad92c3151476fa6e5e2d37144c35d9d28afa249db7fabd20" [label="sha256:366c46dcae636c77ad92c3151476fa6e5e2d37144c35d9d28afa249db7fabd20" shape="plaintext"];
  "sha256:2d215013e811a8cc955993bb47ed83ad68f0c54ab3aee84bb9d05d468576c646" -> "sha256:6562b5eb711696bb17fd217dcb9f5d9a9ef0180f06d19278dc5dc7b10cd53911" [label=""];
  "sha256:6562b5eb711696bb17fd217dcb9f5d9a9ef0180f06d19278dc5dc7b10cd53911" -> "sha256:d67750ff1f3f7bdbf7588bf5e89b0312d6cafb5fac10b3e53568c347e2857356" [label=""];
  "sha256:d67750ff1f3f7bdbf7588bf5e89b0312d6cafb5fac10b3e53568c347e2857356" -> "sha256:62a88a0a5cb128ea0f10850f78aba150d77530c44946b7ef7e7a955fc2ddbba4" [label=""];
  "sha256:62a88a0a5cb128ea0f10850f78aba150d77530c44946b7ef7e7a955fc2ddbba4" -> "sha256:9aef21ca1eb21bc24112f358a94b15a816a7102cf394d0bff3aaca3e1719b3a7" [label=""];
  "sha256:9aef21ca1eb21bc24112f358a94b15a816a7102cf394d0bff3aaca3e1719b3a7" -> "sha256:366c46dcae636c77ad92c3151476fa6e5e2d37144c35d9d28afa249db7fabd20" [label=""];
}

