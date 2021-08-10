[app/sources/255994618.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:6405f0c915e68df0839ce1c3872d1f8a519c07dd8589ea8318825cd4a19c80b0" [label="/bin/sh -c apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 049AD65B" shape="box"];
  "sha256:8883d640ea6ceaa883aba2036a3fbbc2a245959eeb20eae8a4f3c90de1d32e33" [label="/bin/sh -c echo \"deb http://apt.opensips.org jessie $VERSION-$BUILD\" >/etc/apt/sources.list.d/opensips.list" shape="box"];
  "sha256:23781701a8e082ddefc1b2611402ff9e7904c730416eaf1f899b9d5498682b38" [label="/bin/sh -c apt-get update -qq && apt-get install -y opensips" shape="box"];
  "sha256:a60aafdab30a49bf1e32bb52c539cc0d97cf2a8ae407b4938424bee4892c2aa9" [label="/bin/sh -c sed -i \"s/RUN_OPENSIPS=no/RUN_OPENSIPS=yes/g\" /etc/default/opensips" shape="box"];
  "sha256:e3c878f050dbd142932b83d48a88fc44a826c6a8c9e1ba091c7ee80c3732548c" [label="/bin/sh -c sed -i \"s/DAEMON=\\/sbin\\/opensips/DAEMON=\\/usr\\/sbin\\/opensips/g\" /etc/init.d/opensips" shape="box"];
  "sha256:a276935cb5f7905f6bd137977a55def4d1d11ef3f1f8eb4e0f56e9c9876eb439" [label="local://context" shape="ellipse"];
  "sha256:e8331bb18ee6c863e214e846dda40a44359be5b5a26b9e7fd8ecb365d599285a" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:faaae3791e3957565e508b0b1b97dd97d633d827cb238f5957b1305e1076588a" [label="sha256:faaae3791e3957565e508b0b1b97dd97d633d827cb238f5957b1305e1076588a" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:6405f0c915e68df0839ce1c3872d1f8a519c07dd8589ea8318825cd4a19c80b0" [label=""];
  "sha256:6405f0c915e68df0839ce1c3872d1f8a519c07dd8589ea8318825cd4a19c80b0" -> "sha256:8883d640ea6ceaa883aba2036a3fbbc2a245959eeb20eae8a4f3c90de1d32e33" [label=""];
  "sha256:8883d640ea6ceaa883aba2036a3fbbc2a245959eeb20eae8a4f3c90de1d32e33" -> "sha256:23781701a8e082ddefc1b2611402ff9e7904c730416eaf1f899b9d5498682b38" [label=""];
  "sha256:23781701a8e082ddefc1b2611402ff9e7904c730416eaf1f899b9d5498682b38" -> "sha256:a60aafdab30a49bf1e32bb52c539cc0d97cf2a8ae407b4938424bee4892c2aa9" [label=""];
  "sha256:a60aafdab30a49bf1e32bb52c539cc0d97cf2a8ae407b4938424bee4892c2aa9" -> "sha256:e3c878f050dbd142932b83d48a88fc44a826c6a8c9e1ba091c7ee80c3732548c" [label=""];
  "sha256:e3c878f050dbd142932b83d48a88fc44a826c6a8c9e1ba091c7ee80c3732548c" -> "sha256:e8331bb18ee6c863e214e846dda40a44359be5b5a26b9e7fd8ecb365d599285a" [label=""];
  "sha256:a276935cb5f7905f6bd137977a55def4d1d11ef3f1f8eb4e0f56e9c9876eb439" -> "sha256:e8331bb18ee6c863e214e846dda40a44359be5b5a26b9e7fd8ecb365d599285a" [label=""];
  "sha256:e8331bb18ee6c863e214e846dda40a44359be5b5a26b9e7fd8ecb365d599285a" -> "sha256:faaae3791e3957565e508b0b1b97dd97d633d827cb238f5957b1305e1076588a" [label=""];
}

