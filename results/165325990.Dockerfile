[app/sources/165325990.Dockerfile]
digraph {
  "sha256:9355666bfdbe04e125ed11b1789ff36c156d29bbfd287b949cefe773be382671" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:7c308c7c20154a744fa7e3c0a4f5c90dff19160bba61c900d96cb719de17185c" [label="/bin/sh -c apt-get update && apt-get install -y openssh-server" shape="box"];
  "sha256:42d9beb19e124c160773716097dcbc4f1b3ad11d81a688e1210b590e1d8cc7ae" [label="/bin/sh -c mkdir /var/run/sshd" shape="box"];
  "sha256:899920a06c2076b1c57b42e6412c7a8ae20eb6ffb3b7cab3a68c1af956385976" [label="/bin/sh -c groupadd sftpusers" shape="box"];
  "sha256:b4b74e19ea1a9c6f62df66af8645189a099c5b4439ced26873570619df88c8c2" [label="/bin/sh -c useradd --shell /sbin/nologin --home-dir /sftp --no-create-home -G sftpusers 42-data" shape="box"];
  "sha256:bdeca9de0b04f7b49707479ac2ba889321bb6b88ace3213630ef1d5c3bec44de" [label="/bin/sh -c mkdir -p /sftp" shape="box"];
  "sha256:045d7f23fc2744e46163b04c4d60088ad93d4bdc4f6acf6917baecf55d92dce9" [label="copy{src=/data/sshd_config, dest=/etc/ssh/sshd_config}" shape="note"];
  "sha256:9c0fe220abc7f899bde53db0de5db83db920299ba04d3e21e50af660f370a6d0" [label="copy{src=/data/get-keys.sh, dest=/get-keys.sh}" shape="note"];
  "sha256:1beaf30cd0cb64a4319da04b5f1c7f923736335643fe046fba00da86a2421303" [label="copy{src=/data/sftp.sh, dest=/sftp.sh}" shape="note"];
  "sha256:548af366c467724b376f4bb56e8e2aaef51ae3997570276322a2fbb4f112120b" [label="copy{src=/data/readme.txt, dest=/sftp/readme.txt}" shape="note"];
  "sha256:8e09fd201308cacf7967b09820c20d0ffbd574e8cf866fc105af82dec22d887a" [label="/bin/sh -c chmod +x /sftp.sh" shape="box"];
  "sha256:1b5fe4de7b44779fd0d5b9d372f58413c1e735bb3771ce9fc777d91c5c54d094" [label="/bin/sh -c chmod +x /get-keys.sh" shape="box"];
  "sha256:e11e292f3bfa9df35ae285f78f3d2c2e7a0839bd05093fc211dddd9266130672" [label="sha256:e11e292f3bfa9df35ae285f78f3d2c2e7a0839bd05093fc211dddd9266130672" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:7c308c7c20154a744fa7e3c0a4f5c90dff19160bba61c900d96cb719de17185c" [label=""];
  "sha256:7c308c7c20154a744fa7e3c0a4f5c90dff19160bba61c900d96cb719de17185c" -> "sha256:42d9beb19e124c160773716097dcbc4f1b3ad11d81a688e1210b590e1d8cc7ae" [label=""];
  "sha256:42d9beb19e124c160773716097dcbc4f1b3ad11d81a688e1210b590e1d8cc7ae" -> "sha256:899920a06c2076b1c57b42e6412c7a8ae20eb6ffb3b7cab3a68c1af956385976" [label=""];
  "sha256:899920a06c2076b1c57b42e6412c7a8ae20eb6ffb3b7cab3a68c1af956385976" -> "sha256:b4b74e19ea1a9c6f62df66af8645189a099c5b4439ced26873570619df88c8c2" [label=""];
  "sha256:b4b74e19ea1a9c6f62df66af8645189a099c5b4439ced26873570619df88c8c2" -> "sha256:bdeca9de0b04f7b49707479ac2ba889321bb6b88ace3213630ef1d5c3bec44de" [label=""];
  "sha256:bdeca9de0b04f7b49707479ac2ba889321bb6b88ace3213630ef1d5c3bec44de" -> "sha256:045d7f23fc2744e46163b04c4d60088ad93d4bdc4f6acf6917baecf55d92dce9" [label=""];
  "sha256:9355666bfdbe04e125ed11b1789ff36c156d29bbfd287b949cefe773be382671" -> "sha256:045d7f23fc2744e46163b04c4d60088ad93d4bdc4f6acf6917baecf55d92dce9" [label=""];
  "sha256:045d7f23fc2744e46163b04c4d60088ad93d4bdc4f6acf6917baecf55d92dce9" -> "sha256:9c0fe220abc7f899bde53db0de5db83db920299ba04d3e21e50af660f370a6d0" [label=""];
  "sha256:9355666bfdbe04e125ed11b1789ff36c156d29bbfd287b949cefe773be382671" -> "sha256:9c0fe220abc7f899bde53db0de5db83db920299ba04d3e21e50af660f370a6d0" [label=""];
  "sha256:9c0fe220abc7f899bde53db0de5db83db920299ba04d3e21e50af660f370a6d0" -> "sha256:1beaf30cd0cb64a4319da04b5f1c7f923736335643fe046fba00da86a2421303" [label=""];
  "sha256:9355666bfdbe04e125ed11b1789ff36c156d29bbfd287b949cefe773be382671" -> "sha256:1beaf30cd0cb64a4319da04b5f1c7f923736335643fe046fba00da86a2421303" [label=""];
  "sha256:1beaf30cd0cb64a4319da04b5f1c7f923736335643fe046fba00da86a2421303" -> "sha256:548af366c467724b376f4bb56e8e2aaef51ae3997570276322a2fbb4f112120b" [label=""];
  "sha256:9355666bfdbe04e125ed11b1789ff36c156d29bbfd287b949cefe773be382671" -> "sha256:548af366c467724b376f4bb56e8e2aaef51ae3997570276322a2fbb4f112120b" [label=""];
  "sha256:548af366c467724b376f4bb56e8e2aaef51ae3997570276322a2fbb4f112120b" -> "sha256:8e09fd201308cacf7967b09820c20d0ffbd574e8cf866fc105af82dec22d887a" [label=""];
  "sha256:8e09fd201308cacf7967b09820c20d0ffbd574e8cf866fc105af82dec22d887a" -> "sha256:1b5fe4de7b44779fd0d5b9d372f58413c1e735bb3771ce9fc777d91c5c54d094" [label=""];
  "sha256:1b5fe4de7b44779fd0d5b9d372f58413c1e735bb3771ce9fc777d91c5c54d094" -> "sha256:e11e292f3bfa9df35ae285f78f3d2c2e7a0839bd05093fc211dddd9266130672" [label=""];
}

