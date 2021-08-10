[app/sources/285306585.Dockerfile]
digraph {
  "sha256:24823b44b901bc6c544e0a2126d96b43b107b33878d67393998d419534cc9219" [label="docker-image://docker.io/library/swift:latest" shape="ellipse"];
  "sha256:cf33862a6ff66085ab0c08c811290cd350c9c0f6377a55ab601f2000247a0599" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:dfd6c83c811728a5786796dde629f91d17cf1f422d6f6d35976793b82b9d4132" [label="/bin/sh -c apt-get install -y openssl libssl-dev uuid-dev" shape="box"];
  "sha256:0187d04faeac450d2fbccb665f7c9ba8662e4ff1382be47a159164a1ffa9f7f7" [label="mkdir{path=/swift-perfect}" shape="note"];
  "sha256:33aead90c092eef8e0b8f9e3e1918a8cdb41400f81a2e37b8318c3759a54d9c9" [label="local://context" shape="ellipse"];
  "sha256:80b6afa5245c94b37ff8d41b2bf0175e43d99053e85f3a762354d7d5ffc67f02" [label="copy{src=/, dest=/swift-perfect}" shape="note"];
  "sha256:03ea4df9fa4536072475bfbf1a6e2e1d60877a5f5cbecea3396ea93716899ba3" [label="/bin/sh -c swift build" shape="box"];
  "sha256:9e20ebfa3f1af4a2288134080ee83cfaa3fbd8c7acb314afac648316da301c4f" [label="sha256:9e20ebfa3f1af4a2288134080ee83cfaa3fbd8c7acb314afac648316da301c4f" shape="plaintext"];
  "sha256:24823b44b901bc6c544e0a2126d96b43b107b33878d67393998d419534cc9219" -> "sha256:cf33862a6ff66085ab0c08c811290cd350c9c0f6377a55ab601f2000247a0599" [label=""];
  "sha256:cf33862a6ff66085ab0c08c811290cd350c9c0f6377a55ab601f2000247a0599" -> "sha256:dfd6c83c811728a5786796dde629f91d17cf1f422d6f6d35976793b82b9d4132" [label=""];
  "sha256:dfd6c83c811728a5786796dde629f91d17cf1f422d6f6d35976793b82b9d4132" -> "sha256:0187d04faeac450d2fbccb665f7c9ba8662e4ff1382be47a159164a1ffa9f7f7" [label=""];
  "sha256:0187d04faeac450d2fbccb665f7c9ba8662e4ff1382be47a159164a1ffa9f7f7" -> "sha256:80b6afa5245c94b37ff8d41b2bf0175e43d99053e85f3a762354d7d5ffc67f02" [label=""];
  "sha256:33aead90c092eef8e0b8f9e3e1918a8cdb41400f81a2e37b8318c3759a54d9c9" -> "sha256:80b6afa5245c94b37ff8d41b2bf0175e43d99053e85f3a762354d7d5ffc67f02" [label=""];
  "sha256:80b6afa5245c94b37ff8d41b2bf0175e43d99053e85f3a762354d7d5ffc67f02" -> "sha256:03ea4df9fa4536072475bfbf1a6e2e1d60877a5f5cbecea3396ea93716899ba3" [label=""];
  "sha256:03ea4df9fa4536072475bfbf1a6e2e1d60877a5f5cbecea3396ea93716899ba3" -> "sha256:9e20ebfa3f1af4a2288134080ee83cfaa3fbd8c7acb314afac648316da301c4f" [label=""];
}

