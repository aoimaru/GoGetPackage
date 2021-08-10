[app/sources/357344643.Dockerfile]
digraph {
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:c020b8fd24facdaed4afc83683a3a8dd8461cc72b2f7dd54d137c70f615f0dda" [label="/bin/sh -c true   && apt-get -yq update   && apt-get -yq --no-install-suggests --no-install-recommends --force-yes install     ca-certificates     libgmp10     libpq5     python3   && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:61d189d66a4ad867b7212d5eaf42cc2d0829d3c06f0c9045390e0a13102b6cc8" [label="/bin/sh -c useradd -m -s /bin/bash -d /app app" shape="box"];
  "sha256:6e5708e1218b1ec9190a6d1609b357df0b072e22bb284c42b8f18cfc4ce427e4" [label="mkdir{path=/app}" shape="note"];
  "sha256:4d9c8a4f3498405abaa54d4aa15fb864ced451ae12cd20b3dd7b123a232e2a90" [label="/bin/sh -c chown -R app:app /app" shape="box"];
  "sha256:580072c74c9f2b11caeac82835009075b1150d6a44ca0a9c9f9acff385571090" [label="docker-image://docker.io/futurice/croned:2018-09-20" shape="ellipse"];
  "sha256:7ebd86e41b08b78572ee1155def8e78ee75e6cd5ef4ca5e46bff500a855f6ae5" [label="copy{src=/app/croned-server, dest=/app/croned-server}" shape="note"];
  "sha256:f9f79e80d24117abc693d8e2ef223c6722768192a59eaec3c08eb8f1844dd598" [label="local://context" shape="ellipse"];
  "sha256:cb96408383dc71eba4fe50b22ca5e37e0fbb7eb5b5b348b5b3d4d23ddd6e665f" [label="copy{src=/script.py, dest=/app}" shape="note"];
  "sha256:e88243cedd87898fa9c17d3ed653163f3fe64c346a371089f45ae7f2cc8a6527" [label="sha256:e88243cedd87898fa9c17d3ed653163f3fe64c346a371089f45ae7f2cc8a6527" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:c020b8fd24facdaed4afc83683a3a8dd8461cc72b2f7dd54d137c70f615f0dda" [label=""];
  "sha256:c020b8fd24facdaed4afc83683a3a8dd8461cc72b2f7dd54d137c70f615f0dda" -> "sha256:61d189d66a4ad867b7212d5eaf42cc2d0829d3c06f0c9045390e0a13102b6cc8" [label=""];
  "sha256:61d189d66a4ad867b7212d5eaf42cc2d0829d3c06f0c9045390e0a13102b6cc8" -> "sha256:6e5708e1218b1ec9190a6d1609b357df0b072e22bb284c42b8f18cfc4ce427e4" [label=""];
  "sha256:6e5708e1218b1ec9190a6d1609b357df0b072e22bb284c42b8f18cfc4ce427e4" -> "sha256:4d9c8a4f3498405abaa54d4aa15fb864ced451ae12cd20b3dd7b123a232e2a90" [label=""];
  "sha256:4d9c8a4f3498405abaa54d4aa15fb864ced451ae12cd20b3dd7b123a232e2a90" -> "sha256:7ebd86e41b08b78572ee1155def8e78ee75e6cd5ef4ca5e46bff500a855f6ae5" [label=""];
  "sha256:580072c74c9f2b11caeac82835009075b1150d6a44ca0a9c9f9acff385571090" -> "sha256:7ebd86e41b08b78572ee1155def8e78ee75e6cd5ef4ca5e46bff500a855f6ae5" [label=""];
  "sha256:7ebd86e41b08b78572ee1155def8e78ee75e6cd5ef4ca5e46bff500a855f6ae5" -> "sha256:cb96408383dc71eba4fe50b22ca5e37e0fbb7eb5b5b348b5b3d4d23ddd6e665f" [label=""];
  "sha256:f9f79e80d24117abc693d8e2ef223c6722768192a59eaec3c08eb8f1844dd598" -> "sha256:cb96408383dc71eba4fe50b22ca5e37e0fbb7eb5b5b348b5b3d4d23ddd6e665f" [label=""];
  "sha256:cb96408383dc71eba4fe50b22ca5e37e0fbb7eb5b5b348b5b3d4d23ddd6e665f" -> "sha256:e88243cedd87898fa9c17d3ed653163f3fe64c346a371089f45ae7f2cc8a6527" [label=""];
}

