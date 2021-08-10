[app/sources/252766675.Dockerfile]
digraph {
  "sha256:e253f9135d5b42dcf370513d7192b77da2099638b650208ddadbe6648ded57a0" [label="docker-image://docker.io/library/node:6.3" shape="ellipse"];
  "sha256:9b04da9c2fb5cc11bf9b859e6768bdb55ee90d7ead37455a0b7b9611212edad5" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:24bd39a6143118bd28a08a144822895a1cec2f1eb2e70518d17af0ea515029d7" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:396e28803ee0ce97d8250a1467a372e0cb7c6cd416d81483567aa27b7e1fcc87" [label="local://context" shape="ellipse"];
  "sha256:83c3f10c4df6442d4a6c7cc7f914a2e9aad228a8f509337576bb057df72e9da5" [label="copy{src=/package.json, dest=/usr/src/app/}" shape="note"];
  "sha256:418902f17d96ee1f723d2a015666c3e80961c8360282be05a74bdf266ff0b73e" [label="/bin/sh -c npm install" shape="box"];
  "sha256:ad8673b15f8b1db5673fd6d084e03b3ff53af2e5dd26065a826c064edcc83ac7" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:e84546eb7f4cc5d4e12fcc55810312a2fe8eff252a64da1e1135ccf7e9a0e80f" [label="sha256:e84546eb7f4cc5d4e12fcc55810312a2fe8eff252a64da1e1135ccf7e9a0e80f" shape="plaintext"];
  "sha256:e253f9135d5b42dcf370513d7192b77da2099638b650208ddadbe6648ded57a0" -> "sha256:9b04da9c2fb5cc11bf9b859e6768bdb55ee90d7ead37455a0b7b9611212edad5" [label=""];
  "sha256:9b04da9c2fb5cc11bf9b859e6768bdb55ee90d7ead37455a0b7b9611212edad5" -> "sha256:24bd39a6143118bd28a08a144822895a1cec2f1eb2e70518d17af0ea515029d7" [label=""];
  "sha256:24bd39a6143118bd28a08a144822895a1cec2f1eb2e70518d17af0ea515029d7" -> "sha256:83c3f10c4df6442d4a6c7cc7f914a2e9aad228a8f509337576bb057df72e9da5" [label=""];
  "sha256:396e28803ee0ce97d8250a1467a372e0cb7c6cd416d81483567aa27b7e1fcc87" -> "sha256:83c3f10c4df6442d4a6c7cc7f914a2e9aad228a8f509337576bb057df72e9da5" [label=""];
  "sha256:83c3f10c4df6442d4a6c7cc7f914a2e9aad228a8f509337576bb057df72e9da5" -> "sha256:418902f17d96ee1f723d2a015666c3e80961c8360282be05a74bdf266ff0b73e" [label=""];
  "sha256:418902f17d96ee1f723d2a015666c3e80961c8360282be05a74bdf266ff0b73e" -> "sha256:ad8673b15f8b1db5673fd6d084e03b3ff53af2e5dd26065a826c064edcc83ac7" [label=""];
  "sha256:396e28803ee0ce97d8250a1467a372e0cb7c6cd416d81483567aa27b7e1fcc87" -> "sha256:ad8673b15f8b1db5673fd6d084e03b3ff53af2e5dd26065a826c064edcc83ac7" [label=""];
  "sha256:ad8673b15f8b1db5673fd6d084e03b3ff53af2e5dd26065a826c064edcc83ac7" -> "sha256:e84546eb7f4cc5d4e12fcc55810312a2fe8eff252a64da1e1135ccf7e9a0e80f" [label=""];
}

