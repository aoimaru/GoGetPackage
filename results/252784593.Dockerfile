[app/sources/252784593.Dockerfile]
digraph {
  "sha256:fb3e9c548cad755dbe6b51d5ae04ace1f38638b4a3df691e7d4c3e9acad303eb" [label="docker-image://docker.io/library/ubuntu:trusty@sha256:43cb19408de1e0ecf3ba5b5372ec98978963d6d0be42d0ad825e77a3bd16b5f7" shape="ellipse"];
  "sha256:d263783edcd88ffc924792924e31f77719f599ea84295828739137dc3f31a10d" [label="/bin/sh -c locale-gen $LANG" shape="box"];
  "sha256:5216605fde96cef7b1581b3f02b753f58ca35a285921df8956eb9d1b8fe36eac" [label="/bin/sh -c apt-get update -q && apt-get install -qy git-core python2.7" shape="box"];
  "sha256:a96947f20a41991a9af31e9b75b414741b336a1047cccd462862ca2d8c70263d" [label="/bin/sh -c git clone https://github.com/rembo10/headphones.git /headphones" shape="box"];
  "sha256:1a339114afc045a6c9b1904b81c4df7925af4fa578fddc2b974b71b6265ff4ba" [label="local://context" shape="ellipse"];
  "sha256:09d9913c9925e094e96bdfb763d712d578481093250303e59a639153397e4d82" [label="copy{src=/start.sh, dest=/start.sh}" shape="note"];
  "sha256:4f6ff60da16acffd7766bfaf17d8f8ec03219d6d4382da0135ef544dab271cab" [label="/bin/sh -c chmod +x start.sh" shape="box"];
  "sha256:9b00f02ecf529f0ee2091049d9e9d4ab6447945b0194f3d3b3c2c86ca8b956d0" [label="sha256:9b00f02ecf529f0ee2091049d9e9d4ab6447945b0194f3d3b3c2c86ca8b956d0" shape="plaintext"];
  "sha256:fb3e9c548cad755dbe6b51d5ae04ace1f38638b4a3df691e7d4c3e9acad303eb" -> "sha256:d263783edcd88ffc924792924e31f77719f599ea84295828739137dc3f31a10d" [label=""];
  "sha256:d263783edcd88ffc924792924e31f77719f599ea84295828739137dc3f31a10d" -> "sha256:5216605fde96cef7b1581b3f02b753f58ca35a285921df8956eb9d1b8fe36eac" [label=""];
  "sha256:5216605fde96cef7b1581b3f02b753f58ca35a285921df8956eb9d1b8fe36eac" -> "sha256:a96947f20a41991a9af31e9b75b414741b336a1047cccd462862ca2d8c70263d" [label=""];
  "sha256:a96947f20a41991a9af31e9b75b414741b336a1047cccd462862ca2d8c70263d" -> "sha256:09d9913c9925e094e96bdfb763d712d578481093250303e59a639153397e4d82" [label=""];
  "sha256:1a339114afc045a6c9b1904b81c4df7925af4fa578fddc2b974b71b6265ff4ba" -> "sha256:09d9913c9925e094e96bdfb763d712d578481093250303e59a639153397e4d82" [label=""];
  "sha256:09d9913c9925e094e96bdfb763d712d578481093250303e59a639153397e4d82" -> "sha256:4f6ff60da16acffd7766bfaf17d8f8ec03219d6d4382da0135ef544dab271cab" [label=""];
  "sha256:4f6ff60da16acffd7766bfaf17d8f8ec03219d6d4382da0135ef544dab271cab" -> "sha256:9b00f02ecf529f0ee2091049d9e9d4ab6447945b0194f3d3b3c2c86ca8b956d0" [label=""];
}

