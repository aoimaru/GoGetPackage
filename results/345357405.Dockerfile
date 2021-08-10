[app/sources/345357405.Dockerfile]
digraph {
  "sha256:1cb461845b70924f04b07c618132409f305084e0cb228184773c5dcc04e63d91" [label="docker-image://docker.io/balenalib/orbitty-tx2-fedora:28-build" shape="ellipse"];
  "sha256:097591cc01f3422c2dc850edef900e9c6832effff6ee766198d6e02b9e47b227" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz" shape="box"];
  "sha256:e8b17904c31b470842a1059cfbc71ce3aaaecd8406c67e7fe3b49f4d43c565a4" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:17449042cdcf1f668c363e5de878ee47ee11ea4921bd267280bc4d8a45551c0b" [label="mkdir{path=/go}" shape="note"];
  "sha256:4c8350b41482fd4e183da3962f445fb48907335243540747dce1d17b4f9ff2cb" [label="sha256:4c8350b41482fd4e183da3962f445fb48907335243540747dce1d17b4f9ff2cb" shape="plaintext"];
  "sha256:1cb461845b70924f04b07c618132409f305084e0cb228184773c5dcc04e63d91" -> "sha256:097591cc01f3422c2dc850edef900e9c6832effff6ee766198d6e02b9e47b227" [label=""];
  "sha256:097591cc01f3422c2dc850edef900e9c6832effff6ee766198d6e02b9e47b227" -> "sha256:e8b17904c31b470842a1059cfbc71ce3aaaecd8406c67e7fe3b49f4d43c565a4" [label=""];
  "sha256:e8b17904c31b470842a1059cfbc71ce3aaaecd8406c67e7fe3b49f4d43c565a4" -> "sha256:17449042cdcf1f668c363e5de878ee47ee11ea4921bd267280bc4d8a45551c0b" [label=""];
  "sha256:17449042cdcf1f668c363e5de878ee47ee11ea4921bd267280bc4d8a45551c0b" -> "sha256:4c8350b41482fd4e183da3962f445fb48907335243540747dce1d17b4f9ff2cb" [label=""];
}

