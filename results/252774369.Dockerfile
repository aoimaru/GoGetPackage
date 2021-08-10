[app/sources/252774369.Dockerfile]
digraph {
  "sha256:b5c53bd0b4ea3059a270513a98ef7d0c33bfff7e635fc981db9403d2bf83f21a" [label="local://context" shape="ellipse"];
  "sha256:3ad3d82d3692a4ac7e3e12dd6c0f570ee0fb5c08eb7fb4caa20d8aeeaddb0117" [label="docker-image://docker.io/library/node:5" shape="ellipse"];
  "sha256:e940517347c747c4081f82a9b0ecd63561071e7ed2d33308aa5ff7961ef76f7d" [label="/bin/sh -c npm install -g npm_lazy" shape="box"];
  "sha256:6a151b607cca991799b358be15c8039acf6bfcffea6a4d00d92d3674c0400c1c" [label="copy{src=/config.js, dest=/}" shape="note"];
  "sha256:efcf53e140c5a9703048073960f405c32e1282fdb391f5422b02d82e2cba5049" [label="sha256:efcf53e140c5a9703048073960f405c32e1282fdb391f5422b02d82e2cba5049" shape="plaintext"];
  "sha256:3ad3d82d3692a4ac7e3e12dd6c0f570ee0fb5c08eb7fb4caa20d8aeeaddb0117" -> "sha256:e940517347c747c4081f82a9b0ecd63561071e7ed2d33308aa5ff7961ef76f7d" [label=""];
  "sha256:e940517347c747c4081f82a9b0ecd63561071e7ed2d33308aa5ff7961ef76f7d" -> "sha256:6a151b607cca991799b358be15c8039acf6bfcffea6a4d00d92d3674c0400c1c" [label=""];
  "sha256:b5c53bd0b4ea3059a270513a98ef7d0c33bfff7e635fc981db9403d2bf83f21a" -> "sha256:6a151b607cca991799b358be15c8039acf6bfcffea6a4d00d92d3674c0400c1c" [label=""];
  "sha256:6a151b607cca991799b358be15c8039acf6bfcffea6a4d00d92d3674c0400c1c" -> "sha256:efcf53e140c5a9703048073960f405c32e1282fdb391f5422b02d82e2cba5049" [label=""];
}

