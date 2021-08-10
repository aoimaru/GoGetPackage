[app/sources/345360302.Dockerfile]
digraph {
  "sha256:748aa5b7c840841ece0ca4e6e5200cd2766b462ea24d702f8cf03b8fa2a31753" [label="docker-image://docker.io/balenalib/srd3-tx2-debian:jessie-build" shape="ellipse"];
  "sha256:6654c9aff8ddf0d6a0830174d1c97407ea2e5f3b9477610fd3aad2d19dbe8542" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz" shape="box"];
  "sha256:9d16085a5bf25f49c03ea815a681bafd212599ca861d4ec5082ae6c2d525433e" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:71471b88b4e70a5756c30f4652e37b1f4582c2f756ccb9fc66357e7aadbed9f5" [label="mkdir{path=/go}" shape="note"];
  "sha256:087cb78a2e65a7d277ad9067564fa05df8c2626b64150ae87f77d7769b27929a" [label="sha256:087cb78a2e65a7d277ad9067564fa05df8c2626b64150ae87f77d7769b27929a" shape="plaintext"];
  "sha256:748aa5b7c840841ece0ca4e6e5200cd2766b462ea24d702f8cf03b8fa2a31753" -> "sha256:6654c9aff8ddf0d6a0830174d1c97407ea2e5f3b9477610fd3aad2d19dbe8542" [label=""];
  "sha256:6654c9aff8ddf0d6a0830174d1c97407ea2e5f3b9477610fd3aad2d19dbe8542" -> "sha256:9d16085a5bf25f49c03ea815a681bafd212599ca861d4ec5082ae6c2d525433e" [label=""];
  "sha256:9d16085a5bf25f49c03ea815a681bafd212599ca861d4ec5082ae6c2d525433e" -> "sha256:71471b88b4e70a5756c30f4652e37b1f4582c2f756ccb9fc66357e7aadbed9f5" [label=""];
  "sha256:71471b88b4e70a5756c30f4652e37b1f4582c2f756ccb9fc66357e7aadbed9f5" -> "sha256:087cb78a2e65a7d277ad9067564fa05df8c2626b64150ae87f77d7769b27929a" [label=""];
}

