[app/sources/224539334.Dockerfile]
digraph {
  "sha256:485e09a33c261f0377a4c086cb967d41eabeed0f5a4c190aa5b19d34f5a6b16f" [label="local://context" shape="ellipse"];
  "sha256:3ad3d82d3692a4ac7e3e12dd6c0f570ee0fb5c08eb7fb4caa20d8aeeaddb0117" [label="docker-image://docker.io/library/node:5" shape="ellipse"];
  "sha256:08d8af8c61fdb35ba6d7a07edcd10ab6db7aa6044b442b61c0ad1a240153a0f9" [label="copy{src=/, dest=/vanilla-css}" shape="note"];
  "sha256:a75a47a69475380e8d37a10b9dd1830b2c152787e93be898319a960c69219ee1" [label="/bin/sh -c cd /vanilla-css     && rm -rf node_modules     && npm install --production" shape="box"];
  "sha256:16ea6a56d66920ea08b97d9df311d7a4822858f2465d5b98684348820242e3f1" [label="mkdir{path=/vanilla-css}" shape="note"];
  "sha256:3c33f74f12845ee2cd148768d98d289fd153e1bd6a146b1ae071afddee865d3d" [label="sha256:3c33f74f12845ee2cd148768d98d289fd153e1bd6a146b1ae071afddee865d3d" shape="plaintext"];
  "sha256:3ad3d82d3692a4ac7e3e12dd6c0f570ee0fb5c08eb7fb4caa20d8aeeaddb0117" -> "sha256:08d8af8c61fdb35ba6d7a07edcd10ab6db7aa6044b442b61c0ad1a240153a0f9" [label=""];
  "sha256:485e09a33c261f0377a4c086cb967d41eabeed0f5a4c190aa5b19d34f5a6b16f" -> "sha256:08d8af8c61fdb35ba6d7a07edcd10ab6db7aa6044b442b61c0ad1a240153a0f9" [label=""];
  "sha256:08d8af8c61fdb35ba6d7a07edcd10ab6db7aa6044b442b61c0ad1a240153a0f9" -> "sha256:a75a47a69475380e8d37a10b9dd1830b2c152787e93be898319a960c69219ee1" [label=""];
  "sha256:a75a47a69475380e8d37a10b9dd1830b2c152787e93be898319a960c69219ee1" -> "sha256:16ea6a56d66920ea08b97d9df311d7a4822858f2465d5b98684348820242e3f1" [label=""];
  "sha256:16ea6a56d66920ea08b97d9df311d7a4822858f2465d5b98684348820242e3f1" -> "sha256:3c33f74f12845ee2cd148768d98d289fd153e1bd6a146b1ae071afddee865d3d" [label=""];
}

