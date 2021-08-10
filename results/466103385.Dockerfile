[app/sources/466103385.Dockerfile]
digraph {
  "sha256:20cc4ba31025e40fb0ac4007f2cc7338a0a81f6fe222b6fe5a91646b508b8e5e" [label="docker-image://docker.io/nixos/nix:latest" shape="ellipse"];
  "sha256:023836596f7cc6cfe4df4164e453b008ddb8a5b694fba9c1e8b49775305f73e4" [label="local://context" shape="ellipse"];
  "sha256:2278dcd387275583e9485588073425d14743f6eed16f9e2ac5235dda6af620e1" [label="copy{src=/default.nix, dest=/}" shape="note"];
  "sha256:8dd14a552472bf16ace2aa27470f11e75dde3340094cb66b44b4897b13642c27" [label="/bin/sh -c nix-shell --command ls" shape="box"];
  "sha256:a48fa7e18225170b266d97bfc357bc9d49def3c2693bdf03b6ced1a22f8dbef1" [label="copy{src=/main.py, dest=/}" shape="note"];
  "sha256:13d5039dbeb5fbe1eb95623ef0a8e562da9a4b7d7f34f9643d24f6362f12e832" [label="sha256:13d5039dbeb5fbe1eb95623ef0a8e562da9a4b7d7f34f9643d24f6362f12e832" shape="plaintext"];
  "sha256:20cc4ba31025e40fb0ac4007f2cc7338a0a81f6fe222b6fe5a91646b508b8e5e" -> "sha256:2278dcd387275583e9485588073425d14743f6eed16f9e2ac5235dda6af620e1" [label=""];
  "sha256:023836596f7cc6cfe4df4164e453b008ddb8a5b694fba9c1e8b49775305f73e4" -> "sha256:2278dcd387275583e9485588073425d14743f6eed16f9e2ac5235dda6af620e1" [label=""];
  "sha256:2278dcd387275583e9485588073425d14743f6eed16f9e2ac5235dda6af620e1" -> "sha256:8dd14a552472bf16ace2aa27470f11e75dde3340094cb66b44b4897b13642c27" [label=""];
  "sha256:8dd14a552472bf16ace2aa27470f11e75dde3340094cb66b44b4897b13642c27" -> "sha256:a48fa7e18225170b266d97bfc357bc9d49def3c2693bdf03b6ced1a22f8dbef1" [label=""];
  "sha256:023836596f7cc6cfe4df4164e453b008ddb8a5b694fba9c1e8b49775305f73e4" -> "sha256:a48fa7e18225170b266d97bfc357bc9d49def3c2693bdf03b6ced1a22f8dbef1" [label=""];
  "sha256:a48fa7e18225170b266d97bfc357bc9d49def3c2693bdf03b6ced1a22f8dbef1" -> "sha256:13d5039dbeb5fbe1eb95623ef0a8e562da9a4b7d7f34f9643d24f6362f12e832" [label=""];
}

