[app/sources/314440552.Dockerfile]
digraph {
  "sha256:cf738b5cdf4f4d6c091f106e6c5409bd6542ba7329545ac00ce4d2659336863f" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:3708e8bcfdd842460d4c69a26abfceab60aafa12413a6cc361b84561c4c23537" [label="copy{src=/install/cpp.sh, dest=/install/}" shape="note"];
  "sha256:caa117d87576f947e47edbe22168c4a95987c779893e63f94dea23e0cf36ecf4" [label="/bin/sh -c install/cpp.sh" shape="box"];
  "sha256:d3c4ebf22164250bc3abb924342ab35308e4311946ea33c9f71177198b0f9c93" [label="/bin/sh -c git clone --recursive https://github.com/dmlc/mxnet && cd mxnet &&     make -j$(nproc) &&     rm -r build" shape="box"];
  "sha256:88d51b90048b092988c29d3a5fdccea2d685b3090d975eb9fc2b7493ac934287" [label="sha256:88d51b90048b092988c29d3a5fdccea2d685b3090d975eb9fc2b7493ac934287" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:3708e8bcfdd842460d4c69a26abfceab60aafa12413a6cc361b84561c4c23537" [label=""];
  "sha256:cf738b5cdf4f4d6c091f106e6c5409bd6542ba7329545ac00ce4d2659336863f" -> "sha256:3708e8bcfdd842460d4c69a26abfceab60aafa12413a6cc361b84561c4c23537" [label=""];
  "sha256:3708e8bcfdd842460d4c69a26abfceab60aafa12413a6cc361b84561c4c23537" -> "sha256:caa117d87576f947e47edbe22168c4a95987c779893e63f94dea23e0cf36ecf4" [label=""];
  "sha256:caa117d87576f947e47edbe22168c4a95987c779893e63f94dea23e0cf36ecf4" -> "sha256:d3c4ebf22164250bc3abb924342ab35308e4311946ea33c9f71177198b0f9c93" [label=""];
  "sha256:d3c4ebf22164250bc3abb924342ab35308e4311946ea33c9f71177198b0f9c93" -> "sha256:88d51b90048b092988c29d3a5fdccea2d685b3090d975eb9fc2b7493ac934287" [label=""];
}

