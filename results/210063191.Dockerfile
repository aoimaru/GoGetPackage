[app/sources/210063191.Dockerfile]
digraph {
  "sha256:0902938d233e742bf5ea3262b058a269cc5535175716d59373ac0d994eda1c97" [label="docker-image://docker.io/projectunik/compilers-rump-base-hw:3e0e31ac24ba649f" shape="ellipse"];
  "sha256:df48eb709d85915d0ca91b15c4c0e6f5dfc468458f2271847e4e6929648809f7" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:3fdf74c8761067918b23ff02ee1238cc36ca8c4ef9e7905bec0a7c24ec8d8917" [label="/bin/sh -c apt-get install -y python" shape="box"];
  "sha256:83ae98325f18f10a470e428dfa2e68b1674c3a35c1542fb38c3b954114b69d3f" [label="/bin/sh -c mkdir -p /opt/nodejs" shape="box"];
  "sha256:11764774184849a8e942f7d1de7ceb0a3a0bbf0f3e6e48a4cd74e40d3ad81131" [label="/bin/sh -c cd /opt/nodejs && git clone https://github.com/rumpkernel/rumprun-packages" shape="box"];
  "sha256:24ba846a10da732df117dc2fb0b0f809bef5b6a9aa2a56174bab783c12c45d7c" [label="/bin/sh -c cd /opt/nodejs/rumprun-packages/nodejs &&     cp ../config.mk.dist ../config.mk &&     perl -pi -e 's/RUMPRUN_TOOLCHAIN_TUPLE=/RUMPRUN_TOOLCHAIN_TUPLE=x86_64-rumprun-netbsd/g' ../config.mk &&     make" shape="box"];
  "sha256:1f0a564381d40bb36302c3fafa0e74275069ae7f164231a6e398e0761a048d81" [label="local://context" shape="ellipse"];
  "sha256:b2ddf019ca51707d7a6a062d061cbcd9eb9168723330b9a0fd429abec0d421d1" [label="copy{src=/node-wrapper, dest=/opt/node-wrapper/}" shape="note"];
  "sha256:058438060d94b8a787f02d6159252fe19f5ad4b5e0aa6408edc87b33438947b1" [label="mkdir{path=/opt/nodejs/rumprun-packages/nodejs}" shape="note"];
  "sha256:3eb49883915c58032ebd40201b916723c8a407c83c9df919b9ad16006ed1e56a" [label="/bin/sh -c rumprun-bake $RUMP_BAKE     /opt/nodejs/rumprun-packages/nodejs/build-4.3.0/out/Release/node-default.bin     /opt/nodejs/rumprun-packages/nodejs/build-4.3.0/out/Release/node-default" shape="box"];
  "sha256:31a8d07a2a4ff72c1f7a6b107dbc45c823b001bdfebcba475f71d241c5078d08" [label="sha256:31a8d07a2a4ff72c1f7a6b107dbc45c823b001bdfebcba475f71d241c5078d08" shape="plaintext"];
  "sha256:0902938d233e742bf5ea3262b058a269cc5535175716d59373ac0d994eda1c97" -> "sha256:df48eb709d85915d0ca91b15c4c0e6f5dfc468458f2271847e4e6929648809f7" [label=""];
  "sha256:df48eb709d85915d0ca91b15c4c0e6f5dfc468458f2271847e4e6929648809f7" -> "sha256:3fdf74c8761067918b23ff02ee1238cc36ca8c4ef9e7905bec0a7c24ec8d8917" [label=""];
  "sha256:3fdf74c8761067918b23ff02ee1238cc36ca8c4ef9e7905bec0a7c24ec8d8917" -> "sha256:83ae98325f18f10a470e428dfa2e68b1674c3a35c1542fb38c3b954114b69d3f" [label=""];
  "sha256:83ae98325f18f10a470e428dfa2e68b1674c3a35c1542fb38c3b954114b69d3f" -> "sha256:11764774184849a8e942f7d1de7ceb0a3a0bbf0f3e6e48a4cd74e40d3ad81131" [label=""];
  "sha256:11764774184849a8e942f7d1de7ceb0a3a0bbf0f3e6e48a4cd74e40d3ad81131" -> "sha256:24ba846a10da732df117dc2fb0b0f809bef5b6a9aa2a56174bab783c12c45d7c" [label=""];
  "sha256:24ba846a10da732df117dc2fb0b0f809bef5b6a9aa2a56174bab783c12c45d7c" -> "sha256:b2ddf019ca51707d7a6a062d061cbcd9eb9168723330b9a0fd429abec0d421d1" [label=""];
  "sha256:1f0a564381d40bb36302c3fafa0e74275069ae7f164231a6e398e0761a048d81" -> "sha256:b2ddf019ca51707d7a6a062d061cbcd9eb9168723330b9a0fd429abec0d421d1" [label=""];
  "sha256:b2ddf019ca51707d7a6a062d061cbcd9eb9168723330b9a0fd429abec0d421d1" -> "sha256:058438060d94b8a787f02d6159252fe19f5ad4b5e0aa6408edc87b33438947b1" [label=""];
  "sha256:058438060d94b8a787f02d6159252fe19f5ad4b5e0aa6408edc87b33438947b1" -> "sha256:3eb49883915c58032ebd40201b916723c8a407c83c9df919b9ad16006ed1e56a" [label=""];
  "sha256:3eb49883915c58032ebd40201b916723c8a407c83c9df919b9ad16006ed1e56a" -> "sha256:31a8d07a2a4ff72c1f7a6b107dbc45c823b001bdfebcba475f71d241c5078d08" [label=""];
}

