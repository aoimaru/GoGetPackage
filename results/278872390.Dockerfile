[app/sources/278872390.Dockerfile]
digraph {
  "sha256:cc995bd1b3bd3e24fec1dd60539866a4401b2d174b03b713f0f581e3f96a0be4" [label="docker-image://docker.io/library/node:6.11.2-alpine" shape="ellipse"];
  "sha256:7a79ec0eef0b2da0aa116bd81309ba996b8cd70d19c8754989c44ddf00d29ba4" [label="/bin/sh -c apk --no-cache add curl     && echo \"Pulling watchdog binary from Github.\"     && curl -sSL https://github.com/alexellis/faas/releases/download/0.6.1/fwatchdog > /usr/bin/fwatchdog     && chmod +x /usr/bin/fwatchdog     && apk del curl --no-cache" shape="box"];
  "sha256:6581e7978a5c73ae38f104bd1b93a2c2e7fd35a39cf3e1d32bce103573705173" [label="mkdir{path=/root}" shape="note"];
  "sha256:a0388c7bef73a76b43d8806aa9683f9576a7129366469e61d75b1a71d59bca99" [label="local://context" shape="ellipse"];
  "sha256:d13c1e9159e6fa12b6e36b41570e6830467d58f199b0b1ceec8ef9f554d12550" [label="copy{src=/package.json, dest=/root/}" shape="note"];
  "sha256:4ca9d4d62ad51f337a1a2c225f1d62ff602ce3357c21107409e56da744f6a7eb" [label="/bin/sh -c npm i" shape="box"];
  "sha256:2e6b410a6b790895f40f866cf551e43701fcaed94ffa67121e0a7ba49317e33f" [label="copy{src=/index.js, dest=/root/}" shape="note"];
  "sha256:60b85e1337ffc7cc10b5e1ba416bafadf77caef20b6a4f197e27759ffa8a48ce" [label="/bin/sh -c mkdir -p ./root/function" shape="box"];
  "sha256:5d222ad99fd38a79829088767b05d4beaeef87b5e6665919bd96cb1327241a29" [label="copy{src=/function/*.json, dest=/root/function/}" shape="note"];
  "sha256:931a4925b33cbdae07161f430cb087e6053953400935f09d88a77c60f6ecd25e" [label="mkdir{path=/root/function}" shape="note"];
  "sha256:a036da5ea30a5a9419b9ff2a11c473344c7548b357fe38c6e155fb4e2057f678" [label="/bin/sh -c npm i || :" shape="box"];
  "sha256:ca0ca7b5e988062331f8f6f57a8d8dfa50a64300685056411b965234f365a20d" [label="mkdir{path=/root}" shape="note"];
  "sha256:f863a3ab7237603495393cc8c1764a24226dc4c04c77d8174c36d5ccef4aa850" [label="copy{src=/function, dest=/root/function}" shape="note"];
  "sha256:ab151fd708fe3521db7f5f2c02765d5aadcd383be109bcb2c6c110a55864677a" [label="mkdir{path=/root/function}" shape="note"];
  "sha256:08c5204a18f2622a5f287fe22b05246865130b6aad324a4d258b088ba9d4a8a8" [label="mkdir{path=/root}" shape="note"];
  "sha256:3aff14f84f39c02b40906ff64f70bd514528468153ddec93c3bff83b3a70c514" [label="sha256:3aff14f84f39c02b40906ff64f70bd514528468153ddec93c3bff83b3a70c514" shape="plaintext"];
  "sha256:cc995bd1b3bd3e24fec1dd60539866a4401b2d174b03b713f0f581e3f96a0be4" -> "sha256:7a79ec0eef0b2da0aa116bd81309ba996b8cd70d19c8754989c44ddf00d29ba4" [label=""];
  "sha256:7a79ec0eef0b2da0aa116bd81309ba996b8cd70d19c8754989c44ddf00d29ba4" -> "sha256:6581e7978a5c73ae38f104bd1b93a2c2e7fd35a39cf3e1d32bce103573705173" [label=""];
  "sha256:6581e7978a5c73ae38f104bd1b93a2c2e7fd35a39cf3e1d32bce103573705173" -> "sha256:d13c1e9159e6fa12b6e36b41570e6830467d58f199b0b1ceec8ef9f554d12550" [label=""];
  "sha256:a0388c7bef73a76b43d8806aa9683f9576a7129366469e61d75b1a71d59bca99" -> "sha256:d13c1e9159e6fa12b6e36b41570e6830467d58f199b0b1ceec8ef9f554d12550" [label=""];
  "sha256:d13c1e9159e6fa12b6e36b41570e6830467d58f199b0b1ceec8ef9f554d12550" -> "sha256:4ca9d4d62ad51f337a1a2c225f1d62ff602ce3357c21107409e56da744f6a7eb" [label=""];
  "sha256:4ca9d4d62ad51f337a1a2c225f1d62ff602ce3357c21107409e56da744f6a7eb" -> "sha256:2e6b410a6b790895f40f866cf551e43701fcaed94ffa67121e0a7ba49317e33f" [label=""];
  "sha256:a0388c7bef73a76b43d8806aa9683f9576a7129366469e61d75b1a71d59bca99" -> "sha256:2e6b410a6b790895f40f866cf551e43701fcaed94ffa67121e0a7ba49317e33f" [label=""];
  "sha256:2e6b410a6b790895f40f866cf551e43701fcaed94ffa67121e0a7ba49317e33f" -> "sha256:60b85e1337ffc7cc10b5e1ba416bafadf77caef20b6a4f197e27759ffa8a48ce" [label=""];
  "sha256:60b85e1337ffc7cc10b5e1ba416bafadf77caef20b6a4f197e27759ffa8a48ce" -> "sha256:5d222ad99fd38a79829088767b05d4beaeef87b5e6665919bd96cb1327241a29" [label=""];
  "sha256:a0388c7bef73a76b43d8806aa9683f9576a7129366469e61d75b1a71d59bca99" -> "sha256:5d222ad99fd38a79829088767b05d4beaeef87b5e6665919bd96cb1327241a29" [label=""];
  "sha256:5d222ad99fd38a79829088767b05d4beaeef87b5e6665919bd96cb1327241a29" -> "sha256:931a4925b33cbdae07161f430cb087e6053953400935f09d88a77c60f6ecd25e" [label=""];
  "sha256:931a4925b33cbdae07161f430cb087e6053953400935f09d88a77c60f6ecd25e" -> "sha256:a036da5ea30a5a9419b9ff2a11c473344c7548b357fe38c6e155fb4e2057f678" [label=""];
  "sha256:a036da5ea30a5a9419b9ff2a11c473344c7548b357fe38c6e155fb4e2057f678" -> "sha256:ca0ca7b5e988062331f8f6f57a8d8dfa50a64300685056411b965234f365a20d" [label=""];
  "sha256:ca0ca7b5e988062331f8f6f57a8d8dfa50a64300685056411b965234f365a20d" -> "sha256:f863a3ab7237603495393cc8c1764a24226dc4c04c77d8174c36d5ccef4aa850" [label=""];
  "sha256:a0388c7bef73a76b43d8806aa9683f9576a7129366469e61d75b1a71d59bca99" -> "sha256:f863a3ab7237603495393cc8c1764a24226dc4c04c77d8174c36d5ccef4aa850" [label=""];
  "sha256:f863a3ab7237603495393cc8c1764a24226dc4c04c77d8174c36d5ccef4aa850" -> "sha256:ab151fd708fe3521db7f5f2c02765d5aadcd383be109bcb2c6c110a55864677a" [label=""];
  "sha256:ab151fd708fe3521db7f5f2c02765d5aadcd383be109bcb2c6c110a55864677a" -> "sha256:08c5204a18f2622a5f287fe22b05246865130b6aad324a4d258b088ba9d4a8a8" [label=""];
  "sha256:08c5204a18f2622a5f287fe22b05246865130b6aad324a4d258b088ba9d4a8a8" -> "sha256:3aff14f84f39c02b40906ff64f70bd514528468153ddec93c3bff83b3a70c514" [label=""];
}

