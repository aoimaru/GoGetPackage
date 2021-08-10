[app/sources/252784815.Dockerfile]
digraph {
  "sha256:e9d320b9293a353026216088769cd52d3878ba3968f5171793a573e3f492b3d3" [label="local://context" shape="ellipse"];
  "sha256:cdca9a8d540be19087a57f30b0cbd96bc4cffff3c2662e09407b9ece8bdf1b0d" [label="docker-image://docker.io/codefresh/slimbuntu:git" shape="ellipse"];
  "sha256:c8116cf08dd76bc313650efe3470c74eb766b1faed7eff9a7dafa785aeeb2272" [label="/bin/sh -c apt-get update && apt-get install -y gcc libc6-dev make \\--no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e54afe2654b08bd68671d661ec015d0fc4a0d23b842c1b57e1424643622ab8fb" [label="/bin/sh -c curl -sSL https://golang.org/dl/go$GOLANG_VERSION.src.tar.gz | tar -v -C /usr/src -xz" shape="box"];
  "sha256:e25c24548797eea0e10a1fa6e963359495ea30e61e865db4f8c5292ca4c1a13d" [label="/bin/sh -c cd /usr/src/go/src && ./make.bash --no-clean 2>&1" shape="box"];
  "sha256:04e3f43edab5b0fc25df5ce90d78fcf6ea7971b1052a73774d005204dd7b8f8c" [label="/bin/sh -c mkdir -p /go/src /go/bin && chmod -R 777 /go" shape="box"];
  "sha256:3f2ea229de5c762065ffc5b719ed0bbac12f1a559d9c88377e5c74aa1ffa0667" [label="mkdir{path=/go}" shape="note"];
  "sha256:c2117e2ef8d060b72eefd5b9867b64a9916a5e8bd9d03f6a1f97950def1dd8e4" [label="copy{src=/go-wrapper, dest=/usr/local/bin/}" shape="note"];
  "sha256:bb14df0c952794d87cecaf401f58c4adef0abb40819f17d6177723128a20fc45" [label="sha256:bb14df0c952794d87cecaf401f58c4adef0abb40819f17d6177723128a20fc45" shape="plaintext"];
  "sha256:cdca9a8d540be19087a57f30b0cbd96bc4cffff3c2662e09407b9ece8bdf1b0d" -> "sha256:c8116cf08dd76bc313650efe3470c74eb766b1faed7eff9a7dafa785aeeb2272" [label=""];
  "sha256:c8116cf08dd76bc313650efe3470c74eb766b1faed7eff9a7dafa785aeeb2272" -> "sha256:e54afe2654b08bd68671d661ec015d0fc4a0d23b842c1b57e1424643622ab8fb" [label=""];
  "sha256:e54afe2654b08bd68671d661ec015d0fc4a0d23b842c1b57e1424643622ab8fb" -> "sha256:e25c24548797eea0e10a1fa6e963359495ea30e61e865db4f8c5292ca4c1a13d" [label=""];
  "sha256:e25c24548797eea0e10a1fa6e963359495ea30e61e865db4f8c5292ca4c1a13d" -> "sha256:04e3f43edab5b0fc25df5ce90d78fcf6ea7971b1052a73774d005204dd7b8f8c" [label=""];
  "sha256:04e3f43edab5b0fc25df5ce90d78fcf6ea7971b1052a73774d005204dd7b8f8c" -> "sha256:3f2ea229de5c762065ffc5b719ed0bbac12f1a559d9c88377e5c74aa1ffa0667" [label=""];
  "sha256:3f2ea229de5c762065ffc5b719ed0bbac12f1a559d9c88377e5c74aa1ffa0667" -> "sha256:c2117e2ef8d060b72eefd5b9867b64a9916a5e8bd9d03f6a1f97950def1dd8e4" [label=""];
  "sha256:e9d320b9293a353026216088769cd52d3878ba3968f5171793a573e3f492b3d3" -> "sha256:c2117e2ef8d060b72eefd5b9867b64a9916a5e8bd9d03f6a1f97950def1dd8e4" [label=""];
  "sha256:c2117e2ef8d060b72eefd5b9867b64a9916a5e8bd9d03f6a1f97950def1dd8e4" -> "sha256:bb14df0c952794d87cecaf401f58c4adef0abb40819f17d6177723128a20fc45" [label=""];
}

