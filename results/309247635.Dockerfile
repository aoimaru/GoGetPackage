[app/sources/309247635.Dockerfile]
digraph {
  "sha256:2e92c78a2c8ae2e7ad9dc72793adab5fc8da1ee64cdbb6039ebbf31da4675f86" [label="https://storage.googleapis.com/bitnami-jenkins-tools/jsonnet-0.9.5" shape="ellipse"];
  "sha256:0c27e0e076ebf88652b016bad0db1f296e29a085a749dbdf9aaaa83d670467ce" [label="docker-image://docker.io/library/debian:8" shape="ellipse"];
  "sha256:48d4e7e0fdfdd5a17343c36a8656f8bba2b6454a8be19ec36f26da199dc5cf73" [label="/bin/sh -c adduser --home /home/user --disabled-password --gecos User user" shape="box"];
  "sha256:13a6076cfc2c612a855435c14562850e04e15c9cee0187de4794c56719ef24a2" [label="/bin/sh -c apt-get -q update && apt-get -qy install jq make" shape="box"];
  "sha256:cf198a4f0255edbd3a49e57efd259ac4014829f8a9e6ae0bb225050be77b03f5" [label="copy{src=/jsonnet-0.9.5, dest=/usr/local/bin/jsonnet}" shape="note"];
  "sha256:794f99a889fd72d394aa25b3d149b8ee1411b11afd80833ab6ff3a30682d902a" [label="/bin/sh -c chmod +x /usr/local/bin/jsonnet" shape="box"];
  "sha256:397ced780b2dc638132d6b0f25fd3fba6b2c35f19d05fe0cc898b6d954d7425d" [label="https://storage.googleapis.com/kubernetes-release/release/v1.9.0/bin/linux/amd64/kubectl" shape="ellipse"];
  "sha256:9f101dada571c57dc2e9c3051492127e66207616796d317a2936e71e6f6ed7f3" [label="copy{src=/kubectl, dest=/usr/local/bin/kubectl}" shape="note"];
  "sha256:cb00e33f4be566d18dc1e3bde268e4c52f6a3dad182245e14a64a4b86ecd0ac0" [label="/bin/sh -c chmod +x /usr/local/bin/kubectl" shape="box"];
  "sha256:ab42f7b9d6ac5e5e1e2754970f53c14fa92a827b2e09e9b8e2e3b1d0c3557cde" [label="https://github.com/ksonnet/kubecfg/releases/download/v0.7.2/kubecfg-linux-amd64" shape="ellipse"];
  "sha256:9a4c0aa07acb3d65b1d9aad6d4ab3e174681f43c6cc72f827f776d35874a8b02" [label="copy{src=/kubecfg-linux-amd64, dest=/usr/local/bin/kubecfg}" shape="note"];
  "sha256:c157ccd17d858d5a8a6a323cb36f02ad1cd063e41fa12990fc6413443d06fb68" [label="/bin/sh -c chmod +x /usr/local/bin/kubecfg" shape="box"];
  "sha256:f1dfeae8f3115c23334fc8b6e16f2e8fffd66eb67b693c0ea5a2d3554bc6566a" [label="mkdir{path=/home/user}" shape="note"];
  "sha256:251776a6dda4c7e9d43c7026e30b422be42e5df9aa839a76320d4568f3557031" [label="sha256:251776a6dda4c7e9d43c7026e30b422be42e5df9aa839a76320d4568f3557031" shape="plaintext"];
  "sha256:0c27e0e076ebf88652b016bad0db1f296e29a085a749dbdf9aaaa83d670467ce" -> "sha256:48d4e7e0fdfdd5a17343c36a8656f8bba2b6454a8be19ec36f26da199dc5cf73" [label=""];
  "sha256:48d4e7e0fdfdd5a17343c36a8656f8bba2b6454a8be19ec36f26da199dc5cf73" -> "sha256:13a6076cfc2c612a855435c14562850e04e15c9cee0187de4794c56719ef24a2" [label=""];
  "sha256:13a6076cfc2c612a855435c14562850e04e15c9cee0187de4794c56719ef24a2" -> "sha256:cf198a4f0255edbd3a49e57efd259ac4014829f8a9e6ae0bb225050be77b03f5" [label=""];
  "sha256:2e92c78a2c8ae2e7ad9dc72793adab5fc8da1ee64cdbb6039ebbf31da4675f86" -> "sha256:cf198a4f0255edbd3a49e57efd259ac4014829f8a9e6ae0bb225050be77b03f5" [label=""];
  "sha256:cf198a4f0255edbd3a49e57efd259ac4014829f8a9e6ae0bb225050be77b03f5" -> "sha256:794f99a889fd72d394aa25b3d149b8ee1411b11afd80833ab6ff3a30682d902a" [label=""];
  "sha256:794f99a889fd72d394aa25b3d149b8ee1411b11afd80833ab6ff3a30682d902a" -> "sha256:9f101dada571c57dc2e9c3051492127e66207616796d317a2936e71e6f6ed7f3" [label=""];
  "sha256:397ced780b2dc638132d6b0f25fd3fba6b2c35f19d05fe0cc898b6d954d7425d" -> "sha256:9f101dada571c57dc2e9c3051492127e66207616796d317a2936e71e6f6ed7f3" [label=""];
  "sha256:9f101dada571c57dc2e9c3051492127e66207616796d317a2936e71e6f6ed7f3" -> "sha256:cb00e33f4be566d18dc1e3bde268e4c52f6a3dad182245e14a64a4b86ecd0ac0" [label=""];
  "sha256:cb00e33f4be566d18dc1e3bde268e4c52f6a3dad182245e14a64a4b86ecd0ac0" -> "sha256:9a4c0aa07acb3d65b1d9aad6d4ab3e174681f43c6cc72f827f776d35874a8b02" [label=""];
  "sha256:ab42f7b9d6ac5e5e1e2754970f53c14fa92a827b2e09e9b8e2e3b1d0c3557cde" -> "sha256:9a4c0aa07acb3d65b1d9aad6d4ab3e174681f43c6cc72f827f776d35874a8b02" [label=""];
  "sha256:9a4c0aa07acb3d65b1d9aad6d4ab3e174681f43c6cc72f827f776d35874a8b02" -> "sha256:c157ccd17d858d5a8a6a323cb36f02ad1cd063e41fa12990fc6413443d06fb68" [label=""];
  "sha256:c157ccd17d858d5a8a6a323cb36f02ad1cd063e41fa12990fc6413443d06fb68" -> "sha256:f1dfeae8f3115c23334fc8b6e16f2e8fffd66eb67b693c0ea5a2d3554bc6566a" [label=""];
  "sha256:f1dfeae8f3115c23334fc8b6e16f2e8fffd66eb67b693c0ea5a2d3554bc6566a" -> "sha256:251776a6dda4c7e9d43c7026e30b422be42e5df9aa839a76320d4568f3557031" [label=""];
}

