[app/sources/345373268.Dockerfile]
digraph {
  "sha256:7c45cee908ef953b48ae7352396c3e533dcddbbee3e28135f4b6f3b1ac49fdc5" [label="docker-image://docker.io/balenalib/jetson-tx1-debian:stretch-run" shape="ellipse"];
  "sha256:ac3ae519f5d7d0f9f17fdd0c8dab7ecc25712189ca9fbf1f9e534245c66e3e24" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a0add739f7a21eec47f8c0681e050ee45e61f2a8cd4d817f1187bc07fca6c060" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:fd53c34f2dcaad02d6b528db17eaeebd347f80fb9fe40a9825d472a157fdb160" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:275b65c58d0fe78a942ba62a929e3eca31f708650bc05f44c65c0343cd63cc83" [label="mkdir{path=/go}" shape="note"];
  "sha256:5a3bf9b92109fffa52e31c661215364f3bb7015434182d363c08a792618ce423" [label="sha256:5a3bf9b92109fffa52e31c661215364f3bb7015434182d363c08a792618ce423" shape="plaintext"];
  "sha256:7c45cee908ef953b48ae7352396c3e533dcddbbee3e28135f4b6f3b1ac49fdc5" -> "sha256:ac3ae519f5d7d0f9f17fdd0c8dab7ecc25712189ca9fbf1f9e534245c66e3e24" [label=""];
  "sha256:ac3ae519f5d7d0f9f17fdd0c8dab7ecc25712189ca9fbf1f9e534245c66e3e24" -> "sha256:a0add739f7a21eec47f8c0681e050ee45e61f2a8cd4d817f1187bc07fca6c060" [label=""];
  "sha256:a0add739f7a21eec47f8c0681e050ee45e61f2a8cd4d817f1187bc07fca6c060" -> "sha256:fd53c34f2dcaad02d6b528db17eaeebd347f80fb9fe40a9825d472a157fdb160" [label=""];
  "sha256:fd53c34f2dcaad02d6b528db17eaeebd347f80fb9fe40a9825d472a157fdb160" -> "sha256:275b65c58d0fe78a942ba62a929e3eca31f708650bc05f44c65c0343cd63cc83" [label=""];
  "sha256:275b65c58d0fe78a942ba62a929e3eca31f708650bc05f44c65c0343cd63cc83" -> "sha256:5a3bf9b92109fffa52e31c661215364f3bb7015434182d363c08a792618ce423" [label=""];
}

