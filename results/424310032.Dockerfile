[app/sources/424310032.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:bdc1546692d2fc85b3d8e104bca37eab0ca99a3cfcf74a0cfa4b363eff028c8d" [label="local://context" shape="ellipse"];
  "sha256:31687991a297c9b253cf0cffa2ed130d4ecb728f28efa874e336afa68b9428ca" [label="copy{src=/apps/broker/install.sh, dest=/base/apps/broker/install.sh}" shape="note"];
  "sha256:0e2662d82425b1853e41dd4245102c6e7af5694ad09264921e1ed4a3f4810402" [label="/bin/sh -c /base/apps/broker/install.sh" shape="box"];
  "sha256:f0150da1dee270fd5cb2b05c356779f6156d6cdc4cdb68e8a1c74bb557801e60" [label="copy{src=/apps/broker/target/broker-*-jar-with-dependencies.jar, dest=/base/apps/broker/target/broker.jar}" shape="note"];
  "sha256:0130172b55685744b30d2f8b033a77e2e13df8a7d69a9a6040e9020b5cf2d30f" [label="mkdir{path=/base/apps/broker}" shape="note"];
  "sha256:29089c6c2df72b5584934910c25872487d374fc2daad26d1852f87b782ddab22" [label="sha256:29089c6c2df72b5584934910c25872487d374fc2daad26d1852f87b782ddab22" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:31687991a297c9b253cf0cffa2ed130d4ecb728f28efa874e336afa68b9428ca" [label=""];
  "sha256:bdc1546692d2fc85b3d8e104bca37eab0ca99a3cfcf74a0cfa4b363eff028c8d" -> "sha256:31687991a297c9b253cf0cffa2ed130d4ecb728f28efa874e336afa68b9428ca" [label=""];
  "sha256:31687991a297c9b253cf0cffa2ed130d4ecb728f28efa874e336afa68b9428ca" -> "sha256:0e2662d82425b1853e41dd4245102c6e7af5694ad09264921e1ed4a3f4810402" [label=""];
  "sha256:0e2662d82425b1853e41dd4245102c6e7af5694ad09264921e1ed4a3f4810402" -> "sha256:f0150da1dee270fd5cb2b05c356779f6156d6cdc4cdb68e8a1c74bb557801e60" [label=""];
  "sha256:bdc1546692d2fc85b3d8e104bca37eab0ca99a3cfcf74a0cfa4b363eff028c8d" -> "sha256:f0150da1dee270fd5cb2b05c356779f6156d6cdc4cdb68e8a1c74bb557801e60" [label=""];
  "sha256:f0150da1dee270fd5cb2b05c356779f6156d6cdc4cdb68e8a1c74bb557801e60" -> "sha256:0130172b55685744b30d2f8b033a77e2e13df8a7d69a9a6040e9020b5cf2d30f" [label=""];
  "sha256:0130172b55685744b30d2f8b033a77e2e13df8a7d69a9a6040e9020b5cf2d30f" -> "sha256:29089c6c2df72b5584934910c25872487d374fc2daad26d1852f87b782ddab22" [label=""];
}

