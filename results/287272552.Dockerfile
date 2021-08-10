[app/sources/287272552.Dockerfile]
digraph {
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:60f3004f487c0cf3a6b9acbe972abf20d81b17b7e2d1c8d02d57cf0fc5237076" [label="/bin/sh -c mkdir /opt" shape="box"];
  "sha256:5a1803d9ce376a7b14e616977acd02fd21462e4cbf77463a673a8d8f68934d15" [label="local://context" shape="ellipse"];
  "sha256:e7755063e4eccccea77391420609ae41fec9590825c0394078658f084b4e6612" [label="copy{src=/jdk-9-ea+181_linux-x64-musl_bin.tar.gz, dest=/opt}" shape="note"];
  "sha256:058f8a99b6484c90be476bb65905929b0354400c2eaf4fd726a95865cba22ae9" [label="sha256:058f8a99b6484c90be476bb65905929b0354400c2eaf4fd726a95865cba22ae9" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:60f3004f487c0cf3a6b9acbe972abf20d81b17b7e2d1c8d02d57cf0fc5237076" [label=""];
  "sha256:60f3004f487c0cf3a6b9acbe972abf20d81b17b7e2d1c8d02d57cf0fc5237076" -> "sha256:e7755063e4eccccea77391420609ae41fec9590825c0394078658f084b4e6612" [label=""];
  "sha256:5a1803d9ce376a7b14e616977acd02fd21462e4cbf77463a673a8d8f68934d15" -> "sha256:e7755063e4eccccea77391420609ae41fec9590825c0394078658f084b4e6612" [label=""];
  "sha256:e7755063e4eccccea77391420609ae41fec9590825c0394078658f084b4e6612" -> "sha256:058f8a99b6484c90be476bb65905929b0354400c2eaf4fd726a95865cba22ae9" [label=""];
}

