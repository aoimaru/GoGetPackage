[app/sources/352134555.Dockerfile]
digraph {
  "sha256:8dc5251e485a93ad27bf814234a16f814fce69218a19f32cdba80b43a7d78fe1" [label="docker-image://docker.io/msaraiva/elixir:1.0.4" shape="ellipse"];
  "sha256:cf00ba479ca1e49d8ce9ba33b93013297f7767da966f3b01537c410e30ea9a86" [label="/bin/sh -c apk --update add gcc make libc-dev libgcc && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:686bc6d4e052880a69577ed8514a7b2a8538db3fe8a741993a07d58c78dd82c0" [label="sha256:686bc6d4e052880a69577ed8514a7b2a8538db3fe8a741993a07d58c78dd82c0" shape="plaintext"];
  "sha256:8dc5251e485a93ad27bf814234a16f814fce69218a19f32cdba80b43a7d78fe1" -> "sha256:cf00ba479ca1e49d8ce9ba33b93013297f7767da966f3b01537c410e30ea9a86" [label=""];
  "sha256:cf00ba479ca1e49d8ce9ba33b93013297f7767da966f3b01537c410e30ea9a86" -> "sha256:686bc6d4e052880a69577ed8514a7b2a8538db3fe8a741993a07d58c78dd82c0" [label=""];
}

