[app/sources/137399979.Dockerfile]
digraph {
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" [label="docker-image://docker.io/library/python:3" shape="ellipse"];
  "sha256:4c24ed67c94f9a9d5d05a2a60a18da20ee1bd08b8d23e3c7aa6c2bb1d983ab62" [label="local://context" shape="ellipse"];
  "sha256:5572a2fe309f2440d042ad76297d96fe6207ef47f3c0c9f65f3ef47ac752c116" [label="copy{src=/, dest=/source/}" shape="note"];
  "sha256:8ed37f7d59b1a22b99e8cf48ff9c5f779f1c24e2e3cb0bb4dbffb83b1418eb55" [label="/bin/sh -c pip3 install -e /source --install-option=\"--with-audio\"" shape="box"];
  "sha256:acb6dff2c5cd00522a5e17c5e0e5492b0009bb625625d410d3d8923908caa86e" [label="sha256:acb6dff2c5cd00522a5e17c5e0e5492b0009bb625625d410d3d8923908caa86e" shape="plaintext"];
  "sha256:c025c2da0d4d82d45d5f2a98b1f20c0a4531302b79db8d32af1dd6e94eee8fa3" -> "sha256:5572a2fe309f2440d042ad76297d96fe6207ef47f3c0c9f65f3ef47ac752c116" [label=""];
  "sha256:4c24ed67c94f9a9d5d05a2a60a18da20ee1bd08b8d23e3c7aa6c2bb1d983ab62" -> "sha256:5572a2fe309f2440d042ad76297d96fe6207ef47f3c0c9f65f3ef47ac752c116" [label=""];
  "sha256:5572a2fe309f2440d042ad76297d96fe6207ef47f3c0c9f65f3ef47ac752c116" -> "sha256:8ed37f7d59b1a22b99e8cf48ff9c5f779f1c24e2e3cb0bb4dbffb83b1418eb55" [label=""];
  "sha256:8ed37f7d59b1a22b99e8cf48ff9c5f779f1c24e2e3cb0bb4dbffb83b1418eb55" -> "sha256:acb6dff2c5cd00522a5e17c5e0e5492b0009bb625625d410d3d8923908caa86e" [label=""];
}

