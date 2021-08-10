[app/sources/240796970.Dockerfile]
digraph {
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:cd36076d87a65194d6216935bc29585b4949a91b69f7c92a8f4a4349148d29e8" [label="/bin/sh -c yum -y install /usr/bin/ps nfs-utils && yum clean all" shape="box"];
  "sha256:73e4b14be90ce29f56dc25be90d31acbc94a197a9b09a9454db1abc631a6cce4" [label="/bin/sh -c mkdir -p /exports" shape="box"];
  "sha256:81b71dfffc103b7d75a16b7984012823f7e629dd9739f0eb3445b3335de2c24a" [label="local://context" shape="ellipse"];
  "sha256:3d16ffc353067d7dd2d968868dd93be9d2bacd95ab34bb141ceca3c5f7914de8" [label="copy{src=/run_nfs.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:8672053fd72579ffb7ee481933beae10d64dcaee6fb7d7d421f729903c9e52d5" [label="copy{src=/index.html, dest=/tmp/index.html}" shape="note"];
  "sha256:2166b4a7b16498f6feff87d657ac2fea38dd8c8f99e9767c9abe0e9b96550ae8" [label="/bin/sh -c chmod 644 /tmp/index.html" shape="box"];
  "sha256:7f5953d5d317a70f1fd4f0bf46fe7f173f7ec810e5c6c1182435e9d156ec1817" [label="sha256:7f5953d5d317a70f1fd4f0bf46fe7f173f7ec810e5c6c1182435e9d156ec1817" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:cd36076d87a65194d6216935bc29585b4949a91b69f7c92a8f4a4349148d29e8" [label=""];
  "sha256:cd36076d87a65194d6216935bc29585b4949a91b69f7c92a8f4a4349148d29e8" -> "sha256:73e4b14be90ce29f56dc25be90d31acbc94a197a9b09a9454db1abc631a6cce4" [label=""];
  "sha256:73e4b14be90ce29f56dc25be90d31acbc94a197a9b09a9454db1abc631a6cce4" -> "sha256:3d16ffc353067d7dd2d968868dd93be9d2bacd95ab34bb141ceca3c5f7914de8" [label=""];
  "sha256:81b71dfffc103b7d75a16b7984012823f7e629dd9739f0eb3445b3335de2c24a" -> "sha256:3d16ffc353067d7dd2d968868dd93be9d2bacd95ab34bb141ceca3c5f7914de8" [label=""];
  "sha256:3d16ffc353067d7dd2d968868dd93be9d2bacd95ab34bb141ceca3c5f7914de8" -> "sha256:8672053fd72579ffb7ee481933beae10d64dcaee6fb7d7d421f729903c9e52d5" [label=""];
  "sha256:81b71dfffc103b7d75a16b7984012823f7e629dd9739f0eb3445b3335de2c24a" -> "sha256:8672053fd72579ffb7ee481933beae10d64dcaee6fb7d7d421f729903c9e52d5" [label=""];
  "sha256:8672053fd72579ffb7ee481933beae10d64dcaee6fb7d7d421f729903c9e52d5" -> "sha256:2166b4a7b16498f6feff87d657ac2fea38dd8c8f99e9767c9abe0e9b96550ae8" [label=""];
  "sha256:2166b4a7b16498f6feff87d657ac2fea38dd8c8f99e9767c9abe0e9b96550ae8" -> "sha256:7f5953d5d317a70f1fd4f0bf46fe7f173f7ec810e5c6c1182435e9d156ec1817" [label=""];
}

