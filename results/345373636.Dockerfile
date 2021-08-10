[app/sources/345373636.Dockerfile]
digraph {
  "sha256:f8a99a0c75370fcc0436bb598ecc966552c764f1a57814453d901474e38bb611" [label="docker-image://docker.io/balenalib/kitra710-ubuntu:artful-run" shape="ellipse"];
  "sha256:9cc212ef91097eeffa1d570fe71409df13f27aa41fa7f36c35e2793ea002c4c3" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:087ab3e6479324ee6dc8c0f430e88507aac91149d86790ccdb857c182de86e45" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:5b2df8ca9270e4b221e96a59ab47e343b0f28e70cd1edc269e70fd01c9cadcea" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:95e9316573e51177f5adf526697c8e79e9b91cf721286c335767e217552a7ac0" [label="mkdir{path=/go}" shape="note"];
  "sha256:163d4db296ef0549be4e69e43494b64641d23372c453af9362b0fc561a2a18b6" [label="sha256:163d4db296ef0549be4e69e43494b64641d23372c453af9362b0fc561a2a18b6" shape="plaintext"];
  "sha256:f8a99a0c75370fcc0436bb598ecc966552c764f1a57814453d901474e38bb611" -> "sha256:9cc212ef91097eeffa1d570fe71409df13f27aa41fa7f36c35e2793ea002c4c3" [label=""];
  "sha256:9cc212ef91097eeffa1d570fe71409df13f27aa41fa7f36c35e2793ea002c4c3" -> "sha256:087ab3e6479324ee6dc8c0f430e88507aac91149d86790ccdb857c182de86e45" [label=""];
  "sha256:087ab3e6479324ee6dc8c0f430e88507aac91149d86790ccdb857c182de86e45" -> "sha256:5b2df8ca9270e4b221e96a59ab47e343b0f28e70cd1edc269e70fd01c9cadcea" [label=""];
  "sha256:5b2df8ca9270e4b221e96a59ab47e343b0f28e70cd1edc269e70fd01c9cadcea" -> "sha256:95e9316573e51177f5adf526697c8e79e9b91cf721286c335767e217552a7ac0" [label=""];
  "sha256:95e9316573e51177f5adf526697c8e79e9b91cf721286c335767e217552a7ac0" -> "sha256:163d4db296ef0549be4e69e43494b64641d23372c453af9362b0fc561a2a18b6" [label=""];
}

