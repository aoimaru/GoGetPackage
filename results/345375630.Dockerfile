[app/sources/345375630.Dockerfile]
digraph {
  "sha256:c3612c2d7d7ca1130fddb871d0c7f6206be52102fb637a49ba49ebf6e6e53771" [label="docker-image://docker.io/balenalib/orange-pi-lite-ubuntu:cosmic-run" shape="ellipse"];
  "sha256:784d771edb9dea29d88f88df541de9077a204c1d4b0205fe7e6f5a7160f70cdd" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:70a85a19397e8df7cccd6a53c17502faa331b0a562f5afd5ca0b1f042d53b491" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:c1f00aa5ee471d30551ac417c474943e1388469602b44f47d08cebc2d20dfc78" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:c678dadfbed27bc6593d95f5a1678a6afdb0e0534f838ded6944baf05dd72ed3" [label="mkdir{path=/go}" shape="note"];
  "sha256:4977c4e85c7eb9bdc1dfc07fa4fc269f53631ebfdb212b1d74cb9066686a161a" [label="sha256:4977c4e85c7eb9bdc1dfc07fa4fc269f53631ebfdb212b1d74cb9066686a161a" shape="plaintext"];
  "sha256:c3612c2d7d7ca1130fddb871d0c7f6206be52102fb637a49ba49ebf6e6e53771" -> "sha256:784d771edb9dea29d88f88df541de9077a204c1d4b0205fe7e6f5a7160f70cdd" [label=""];
  "sha256:784d771edb9dea29d88f88df541de9077a204c1d4b0205fe7e6f5a7160f70cdd" -> "sha256:70a85a19397e8df7cccd6a53c17502faa331b0a562f5afd5ca0b1f042d53b491" [label=""];
  "sha256:70a85a19397e8df7cccd6a53c17502faa331b0a562f5afd5ca0b1f042d53b491" -> "sha256:c1f00aa5ee471d30551ac417c474943e1388469602b44f47d08cebc2d20dfc78" [label=""];
  "sha256:c1f00aa5ee471d30551ac417c474943e1388469602b44f47d08cebc2d20dfc78" -> "sha256:c678dadfbed27bc6593d95f5a1678a6afdb0e0534f838ded6944baf05dd72ed3" [label=""];
  "sha256:c678dadfbed27bc6593d95f5a1678a6afdb0e0534f838ded6944baf05dd72ed3" -> "sha256:4977c4e85c7eb9bdc1dfc07fa4fc269f53631ebfdb212b1d74cb9066686a161a" [label=""];
}

