[app/sources/314628250.Dockerfile]
digraph {
  "sha256:26fa0e92868c72646a85f9f8b341e9fb4915ed761cf117723d0cc43ad9274d79" [label="docker-image://docker.io/rustlang/rust:nightly" shape="ellipse"];
  "sha256:4e6462065169304d376b31989983bdafacaf3518a6299dd9d44dfa61cc4fe593" [label="local://context" shape="ellipse"];
  "sha256:7d8a110aeb2bcabf1b1cc100e27ffe0f1387897469bb92ee0a86c45520bdd21d" [label="copy{src=/, dest=/rocket/}" shape="note"];
  "sha256:afb364ba673f7d31e0eda40d84b010e2ddd307a80ff97d95ce6210dca4de1a10" [label="/bin/sh -c cd /rocket/ && cargo build --release" shape="box"];
  "sha256:6c87cd6a40e671e5f28c39a067e423d44db1261732d54b19cc6c45666c1587c8" [label="sha256:6c87cd6a40e671e5f28c39a067e423d44db1261732d54b19cc6c45666c1587c8" shape="plaintext"];
  "sha256:26fa0e92868c72646a85f9f8b341e9fb4915ed761cf117723d0cc43ad9274d79" -> "sha256:7d8a110aeb2bcabf1b1cc100e27ffe0f1387897469bb92ee0a86c45520bdd21d" [label=""];
  "sha256:4e6462065169304d376b31989983bdafacaf3518a6299dd9d44dfa61cc4fe593" -> "sha256:7d8a110aeb2bcabf1b1cc100e27ffe0f1387897469bb92ee0a86c45520bdd21d" [label=""];
  "sha256:7d8a110aeb2bcabf1b1cc100e27ffe0f1387897469bb92ee0a86c45520bdd21d" -> "sha256:afb364ba673f7d31e0eda40d84b010e2ddd307a80ff97d95ce6210dca4de1a10" [label=""];
  "sha256:afb364ba673f7d31e0eda40d84b010e2ddd307a80ff97d95ce6210dca4de1a10" -> "sha256:6c87cd6a40e671e5f28c39a067e423d44db1261732d54b19cc6c45666c1587c8" [label=""];
}

