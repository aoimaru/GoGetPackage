[app/sources/252776857.Dockerfile]
digraph {
  "sha256:cb4fccc36728a8b382f4e4764507c6afae3c17b3cf75cc6ef5ddac9c4509143a" [label="local://context" shape="ellipse"];
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" [label="docker-image://docker.io/library/node:alpine" shape="ellipse"];
  "sha256:4a25d81dc7a44f0a86a2e1bed78bac8db3172426bb0b43c9962ccb40de068490" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:d3e642d4e9c3e0868198721f3e92ecaff57c3b5c6c139e82ea494883723bb4f4" [label="mkdir{path=/app}" shape="note"];
  "sha256:80ef6f03a3db3d464dfee2b665c35e127fe22911fd6a1eefca33efd278939387" [label="copy{src=/package.json, dest=/app/package.json}" shape="note"];
  "sha256:116b62b2e7e263f95294d667101f2c9eb498db1c160611c5be3588aa52d86f4d" [label="/bin/sh -c npm install --production" shape="box"];
  "sha256:173c2bce7803b6e74eb56c853667008271b7bdf2cca84f6deb7d85501963329f" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:169968bbc32f8419fb0bd7e6b267ced574fb8761971954ae172adca527b1cd03" [label="sha256:169968bbc32f8419fb0bd7e6b267ced574fb8761971954ae172adca527b1cd03" shape="plaintext"];
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" -> "sha256:4a25d81dc7a44f0a86a2e1bed78bac8db3172426bb0b43c9962ccb40de068490" [label=""];
  "sha256:4a25d81dc7a44f0a86a2e1bed78bac8db3172426bb0b43c9962ccb40de068490" -> "sha256:d3e642d4e9c3e0868198721f3e92ecaff57c3b5c6c139e82ea494883723bb4f4" [label=""];
  "sha256:d3e642d4e9c3e0868198721f3e92ecaff57c3b5c6c139e82ea494883723bb4f4" -> "sha256:80ef6f03a3db3d464dfee2b665c35e127fe22911fd6a1eefca33efd278939387" [label=""];
  "sha256:cb4fccc36728a8b382f4e4764507c6afae3c17b3cf75cc6ef5ddac9c4509143a" -> "sha256:80ef6f03a3db3d464dfee2b665c35e127fe22911fd6a1eefca33efd278939387" [label=""];
  "sha256:80ef6f03a3db3d464dfee2b665c35e127fe22911fd6a1eefca33efd278939387" -> "sha256:116b62b2e7e263f95294d667101f2c9eb498db1c160611c5be3588aa52d86f4d" [label=""];
  "sha256:116b62b2e7e263f95294d667101f2c9eb498db1c160611c5be3588aa52d86f4d" -> "sha256:173c2bce7803b6e74eb56c853667008271b7bdf2cca84f6deb7d85501963329f" [label=""];
  "sha256:cb4fccc36728a8b382f4e4764507c6afae3c17b3cf75cc6ef5ddac9c4509143a" -> "sha256:173c2bce7803b6e74eb56c853667008271b7bdf2cca84f6deb7d85501963329f" [label=""];
  "sha256:173c2bce7803b6e74eb56c853667008271b7bdf2cca84f6deb7d85501963329f" -> "sha256:169968bbc32f8419fb0bd7e6b267ced574fb8761971954ae172adca527b1cd03" [label=""];
}

