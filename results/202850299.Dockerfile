[app/sources/202850299.Dockerfile]
digraph {
  "sha256:46bf84f4ac0f64171e5ad3f05306344fae6555f0c0c6b76dc77b7be43c6c243f" [label="docker-image://docker.io/library/node:6.15.1-stretch" shape="ellipse"];
  "sha256:01fcf97d6557c1096caf07f2041418004738f8aa60579bdd1aeba67d34d19a94" [label="mkdir{path=/data}" shape="note"];
  "sha256:5a7d2468741e0afa19eb9bc5087624356c5b00a30e0a1b00f1fda94a623bd977" [label="/bin/sh -c apt-get -qq update && DEBIAN_FRONTEND=noninteractive apt-get -y install     apt-transport-https     curl     unzip     build-essential     python     libcairo2-dev     libgles2-mesa-dev     libgbm-dev     libllvm3.9     libprotobuf-dev     libxxf86vm-dev     xvfb     x11-utils && apt-get clean" shape="box"];
  "sha256:ee8ef64325a30a2810c3d47d96b2c913e1a9c13436fe422584a5400bc6f08eb0" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:be1e8188d499db75fa2e36fc0000c9d106be683887f4480797a53041e1698152" [label="local://context" shape="ellipse"];
  "sha256:ed82e6a059913bcb2a9035af2e08efacfc291f292ab09c2e13bb47194b3d5f10" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:87947b982ae26756e7f610c123290ff3d1bff904ada34fb949ef42ebe6948a41" [label="/bin/sh -c cd /usr/src/app && npm install --production" shape="box"];
  "sha256:60badcae0bc32931bd8be7652ce81afbf9dcc56034ccbb12b33c2990b8e92365" [label="sha256:60badcae0bc32931bd8be7652ce81afbf9dcc56034ccbb12b33c2990b8e92365" shape="plaintext"];
  "sha256:46bf84f4ac0f64171e5ad3f05306344fae6555f0c0c6b76dc77b7be43c6c243f" -> "sha256:01fcf97d6557c1096caf07f2041418004738f8aa60579bdd1aeba67d34d19a94" [label=""];
  "sha256:01fcf97d6557c1096caf07f2041418004738f8aa60579bdd1aeba67d34d19a94" -> "sha256:5a7d2468741e0afa19eb9bc5087624356c5b00a30e0a1b00f1fda94a623bd977" [label=""];
  "sha256:5a7d2468741e0afa19eb9bc5087624356c5b00a30e0a1b00f1fda94a623bd977" -> "sha256:ee8ef64325a30a2810c3d47d96b2c913e1a9c13436fe422584a5400bc6f08eb0" [label=""];
  "sha256:ee8ef64325a30a2810c3d47d96b2c913e1a9c13436fe422584a5400bc6f08eb0" -> "sha256:ed82e6a059913bcb2a9035af2e08efacfc291f292ab09c2e13bb47194b3d5f10" [label=""];
  "sha256:be1e8188d499db75fa2e36fc0000c9d106be683887f4480797a53041e1698152" -> "sha256:ed82e6a059913bcb2a9035af2e08efacfc291f292ab09c2e13bb47194b3d5f10" [label=""];
  "sha256:ed82e6a059913bcb2a9035af2e08efacfc291f292ab09c2e13bb47194b3d5f10" -> "sha256:87947b982ae26756e7f610c123290ff3d1bff904ada34fb949ef42ebe6948a41" [label=""];
  "sha256:87947b982ae26756e7f610c123290ff3d1bff904ada34fb949ef42ebe6948a41" -> "sha256:60badcae0bc32931bd8be7652ce81afbf9dcc56034ccbb12b33c2990b8e92365" [label=""];
}

