[app/sources/224071662.Dockerfile]
digraph {
  "sha256:b5b56fba345ad4569b54491bc9ecd4d8dc005deac5321f6fc04533969cea04d0" [label="docker-image://docker.io/resin/beaglebone-black-alpine:3.6" shape="ellipse"];
  "sha256:ccdd770ed9a2a541975352af44e03e6412ebf4c20f7878afa28bae1e149bd783" [label="mkdir{path=/app}" shape="note"];
  "sha256:b2a276229827aa594758d94574908e18e4c1a4dd0df7a983e5a79869ab8be7e9" [label="/bin/sh -c apk add --no-cache       blkid btrfs-progs btrfs-progs-extra dosfstools e2fsprogs-extra jq kmod mtools parted python3 util-linux wget     && find /usr/lib/ | grep -E \"(__pycache__|\\.pyc|\\.pyo$)\" | xargs rm -rf" shape="box"];
  "sha256:7ce5dea6f2bdb3ad304c75b80c8dbe9f013bf4f22988de3d1918fa3bcb311868" [label="/bin/sh -c apk add --no-cache       python3 gcc libc-dev parted-dev python3-dev" shape="box"];
  "sha256:7800ac7f9217f22ca43d86cc8e25f7d593ff1dea3fdd33843cc3e5a297b4c545" [label="local://context" shape="ellipse"];
  "sha256:e5e28cd1ee71bc06f0f884c81bca7663f478905244a59805bf1c8fb30df4d773" [label="copy{src=/requirements.txt, dest=/}" shape="note"];
  "sha256:ec57ee82968c73e1993755680ee14db2d616c9b7b60912f7587b341f9d189ac7" [label="/bin/sh -c pip3 install -r requirements.txt" shape="box"];
  "sha256:de6f4b6973dc1237572658ce164bdaec77023ae7ee54b55de6d3921e0be08a16" [label="/bin/sh -c find /usr/lib/ | grep -E \"(__pycache__|\\.pyc|\\.pyo$)\" | xargs rm -rf" shape="box"];
  "sha256:40ec132da4146c74cb27b8936062d261f87df146fbb2b13b5afc8d7e1911cd7e" [label="copy{src=/usr/lib/python3.6/site-packages, dest=/usr/lib/python3.6/site-packages}" shape="note"];
  "sha256:93d64dbbd23d13f04838935bf565b0d4449c0019911cd5c8872a1af38039cbb0" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:499a31cc21dde755c0df50bafa162e1c0ea37b913b4b9177dcf04df40835768b" [label="sha256:499a31cc21dde755c0df50bafa162e1c0ea37b913b4b9177dcf04df40835768b" shape="plaintext"];
  "sha256:b5b56fba345ad4569b54491bc9ecd4d8dc005deac5321f6fc04533969cea04d0" -> "sha256:ccdd770ed9a2a541975352af44e03e6412ebf4c20f7878afa28bae1e149bd783" [label=""];
  "sha256:ccdd770ed9a2a541975352af44e03e6412ebf4c20f7878afa28bae1e149bd783" -> "sha256:b2a276229827aa594758d94574908e18e4c1a4dd0df7a983e5a79869ab8be7e9" [label=""];
  "sha256:b5b56fba345ad4569b54491bc9ecd4d8dc005deac5321f6fc04533969cea04d0" -> "sha256:7ce5dea6f2bdb3ad304c75b80c8dbe9f013bf4f22988de3d1918fa3bcb311868" [label=""];
  "sha256:7ce5dea6f2bdb3ad304c75b80c8dbe9f013bf4f22988de3d1918fa3bcb311868" -> "sha256:e5e28cd1ee71bc06f0f884c81bca7663f478905244a59805bf1c8fb30df4d773" [label=""];
  "sha256:7800ac7f9217f22ca43d86cc8e25f7d593ff1dea3fdd33843cc3e5a297b4c545" -> "sha256:e5e28cd1ee71bc06f0f884c81bca7663f478905244a59805bf1c8fb30df4d773" [label=""];
  "sha256:e5e28cd1ee71bc06f0f884c81bca7663f478905244a59805bf1c8fb30df4d773" -> "sha256:ec57ee82968c73e1993755680ee14db2d616c9b7b60912f7587b341f9d189ac7" [label=""];
  "sha256:ec57ee82968c73e1993755680ee14db2d616c9b7b60912f7587b341f9d189ac7" -> "sha256:de6f4b6973dc1237572658ce164bdaec77023ae7ee54b55de6d3921e0be08a16" [label=""];
  "sha256:b2a276229827aa594758d94574908e18e4c1a4dd0df7a983e5a79869ab8be7e9" -> "sha256:40ec132da4146c74cb27b8936062d261f87df146fbb2b13b5afc8d7e1911cd7e" [label=""];
  "sha256:de6f4b6973dc1237572658ce164bdaec77023ae7ee54b55de6d3921e0be08a16" -> "sha256:40ec132da4146c74cb27b8936062d261f87df146fbb2b13b5afc8d7e1911cd7e" [label=""];
  "sha256:40ec132da4146c74cb27b8936062d261f87df146fbb2b13b5afc8d7e1911cd7e" -> "sha256:93d64dbbd23d13f04838935bf565b0d4449c0019911cd5c8872a1af38039cbb0" [label=""];
  "sha256:7800ac7f9217f22ca43d86cc8e25f7d593ff1dea3fdd33843cc3e5a297b4c545" -> "sha256:93d64dbbd23d13f04838935bf565b0d4449c0019911cd5c8872a1af38039cbb0" [label=""];
  "sha256:93d64dbbd23d13f04838935bf565b0d4449c0019911cd5c8872a1af38039cbb0" -> "sha256:499a31cc21dde755c0df50bafa162e1c0ea37b913b4b9177dcf04df40835768b" [label=""];
}

