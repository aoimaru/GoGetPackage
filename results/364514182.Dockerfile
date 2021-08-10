[app/sources/364514182.Dockerfile]
digraph {
  "sha256:fddd1589f46f8da5f9835efa8c80e7fa8032432c3b07fa40a63645869c4471bf" [label="docker-image://docker.io/gliderlabs/alpine@sha256:23b993692b943f0799b3f36042d8a1331557103eb4ac2c0b8ab36cab9f399f8b" shape="ellipse"];
  "sha256:78143b14cd3f2160c10fbaf3366e605c8505b88e5fecece750fef7f68da0bede" [label="local://context" shape="ellipse"];
  "sha256:da649a68336b6d440aa7bdbb49013f43cf1f501a0ff0f65173b85707c23bc3f5" [label="copy{src=/fluxctl, dest=/bin/fluxctl}" shape="note"];
  "sha256:5c5d23289474ffbeba33984c3263b7217c7c2d69ecf8feec6b5ff03b00bbe42e" [label="sha256:5c5d23289474ffbeba33984c3263b7217c7c2d69ecf8feec6b5ff03b00bbe42e" shape="plaintext"];
  "sha256:fddd1589f46f8da5f9835efa8c80e7fa8032432c3b07fa40a63645869c4471bf" -> "sha256:da649a68336b6d440aa7bdbb49013f43cf1f501a0ff0f65173b85707c23bc3f5" [label=""];
  "sha256:78143b14cd3f2160c10fbaf3366e605c8505b88e5fecece750fef7f68da0bede" -> "sha256:da649a68336b6d440aa7bdbb49013f43cf1f501a0ff0f65173b85707c23bc3f5" [label=""];
  "sha256:da649a68336b6d440aa7bdbb49013f43cf1f501a0ff0f65173b85707c23bc3f5" -> "sha256:5c5d23289474ffbeba33984c3263b7217c7c2d69ecf8feec6b5ff03b00bbe42e" [label=""];
}

