[app/sources/252770959.Dockerfile]
digraph {
  "sha256:6704d33430a8f534747f63f6502689cd3015b126704a07457d3c0935d2c2be84" [label="docker-image://docker.io/library/node:0.10.41@sha256:bfd61e9f9b9c0f914d1416d6294ca82e9642e1a8f97aba5c8c886804c3077ee6" shape="ellipse"];
  "sha256:a3ff9989267cae55d7f463a7f1aaa6d32340c976a95e0f494b54837241dc106f" [label="/bin/sh -c mkdir code" shape="box"];
  "sha256:444447ef6eb4b43e20fdfd7c90ae39e30d6ba4aaddc6441da112057ca12c28bc" [label="/bin/sh -c mkdir build" shape="box"];
  "sha256:afbdf3308412a87eb9d4a30dcb3ecb650cdca31a186669def8fde9cc6290ac1a" [label="local://context" shape="ellipse"];
  "sha256:76d1fff29d5a0a11022a049d18ff6bdb73f08830010456a3517e01593981e0dd" [label="copy{src=/, dest=/code}" shape="note"];
  "sha256:e802689bdeb68afbd016f09a15b80f9cb475bc6dae4ff2d8ae9a045a40de68bb" [label="mkdir{path=/code}" shape="note"];
  "sha256:00305ef642445e64feab1a5365d7878ac45318915478430de1a5abb917bd7e1f" [label="/bin/sh -c curl https://install.meteor.com/ | sh" shape="box"];
  "sha256:762d8d406e38590d648d69e6c353bb61c2022d158588d28b39960aec2503269f" [label="/bin/sh -c meteor npm install" shape="box"];
  "sha256:48f01944ed6b1c421a2c1d4e61f048c8c8fea1e50bc5654d7817be8fd6b067c5" [label="/bin/sh -c meteor build --directory ../build --server-only" shape="box"];
  "sha256:3bce28fe481fff9883db897bfce78f378a5a341a489cbad181887f3df844440c" [label="/bin/sh -c cd ../build/bundle/programs/server" shape="box"];
  "sha256:1c855e79b18d2183bb10ed930ba6eb2112d8e6b9522bb297fd9ad18334e39a91" [label="/bin/sh -c npm install" shape="box"];
  "sha256:139b154eff7b393a4ac296b086d30beb34c7398587754332baf7aa0ee4caa2f7" [label="sha256:139b154eff7b393a4ac296b086d30beb34c7398587754332baf7aa0ee4caa2f7" shape="plaintext"];
  "sha256:6704d33430a8f534747f63f6502689cd3015b126704a07457d3c0935d2c2be84" -> "sha256:a3ff9989267cae55d7f463a7f1aaa6d32340c976a95e0f494b54837241dc106f" [label=""];
  "sha256:a3ff9989267cae55d7f463a7f1aaa6d32340c976a95e0f494b54837241dc106f" -> "sha256:444447ef6eb4b43e20fdfd7c90ae39e30d6ba4aaddc6441da112057ca12c28bc" [label=""];
  "sha256:444447ef6eb4b43e20fdfd7c90ae39e30d6ba4aaddc6441da112057ca12c28bc" -> "sha256:76d1fff29d5a0a11022a049d18ff6bdb73f08830010456a3517e01593981e0dd" [label=""];
  "sha256:afbdf3308412a87eb9d4a30dcb3ecb650cdca31a186669def8fde9cc6290ac1a" -> "sha256:76d1fff29d5a0a11022a049d18ff6bdb73f08830010456a3517e01593981e0dd" [label=""];
  "sha256:76d1fff29d5a0a11022a049d18ff6bdb73f08830010456a3517e01593981e0dd" -> "sha256:e802689bdeb68afbd016f09a15b80f9cb475bc6dae4ff2d8ae9a045a40de68bb" [label=""];
  "sha256:e802689bdeb68afbd016f09a15b80f9cb475bc6dae4ff2d8ae9a045a40de68bb" -> "sha256:00305ef642445e64feab1a5365d7878ac45318915478430de1a5abb917bd7e1f" [label=""];
  "sha256:00305ef642445e64feab1a5365d7878ac45318915478430de1a5abb917bd7e1f" -> "sha256:762d8d406e38590d648d69e6c353bb61c2022d158588d28b39960aec2503269f" [label=""];
  "sha256:762d8d406e38590d648d69e6c353bb61c2022d158588d28b39960aec2503269f" -> "sha256:48f01944ed6b1c421a2c1d4e61f048c8c8fea1e50bc5654d7817be8fd6b067c5" [label=""];
  "sha256:48f01944ed6b1c421a2c1d4e61f048c8c8fea1e50bc5654d7817be8fd6b067c5" -> "sha256:3bce28fe481fff9883db897bfce78f378a5a341a489cbad181887f3df844440c" [label=""];
  "sha256:3bce28fe481fff9883db897bfce78f378a5a341a489cbad181887f3df844440c" -> "sha256:1c855e79b18d2183bb10ed930ba6eb2112d8e6b9522bb297fd9ad18334e39a91" [label=""];
  "sha256:1c855e79b18d2183bb10ed930ba6eb2112d8e6b9522bb297fd9ad18334e39a91" -> "sha256:139b154eff7b393a4ac296b086d30beb34c7398587754332baf7aa0ee4caa2f7" [label=""];
}

