[app/sources/346571598.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:a9990b64d65b9628d429f3984a4ace3d6337baf8fdefcdcfe08362d5e653ed01" [label="/bin/sh -c apt-get update &&     apt-get install -y ansible ssh &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:8aa00a4e6f614ed7c1c5709969d92d818c799bf7982b02e01f74eec0a05183d2" [label="local://context" shape="ellipse"];
  "sha256:f79e4fccdada58742e7f699c900c17916796d5e0e6ae0703f4a9e2ff4615a906" [label="copy{src=/machine.py, dest=/machine.py}" shape="note"];
  "sha256:0ecdd2cd6b6f8871f2ebadb741b7bf8156273a3e3109489c26f8bf4bf9a31691" [label="copy{src=/playbooks, dest=/playbooks}" shape="note"];
  "sha256:23c9a7c05387dc26f831de2b069238294b3fd6277d0e8a4bae09c49a3d0723b8" [label="copy{src=/conf/ansible.cfg, dest=/etc/ansible/ansible.cfg}" shape="note"];
  "sha256:7a159282c17c1e571e253ea961820e7541a40b00c165792c2baf75dc3e7ba48a" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:5d8a425f29da88c9464fadfaa8f49f84aa829cc8bfccff48e282a8e4c3074385" [label="sha256:5d8a425f29da88c9464fadfaa8f49f84aa829cc8bfccff48e282a8e4c3074385" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:a9990b64d65b9628d429f3984a4ace3d6337baf8fdefcdcfe08362d5e653ed01" [label=""];
  "sha256:a9990b64d65b9628d429f3984a4ace3d6337baf8fdefcdcfe08362d5e653ed01" -> "sha256:f79e4fccdada58742e7f699c900c17916796d5e0e6ae0703f4a9e2ff4615a906" [label=""];
  "sha256:8aa00a4e6f614ed7c1c5709969d92d818c799bf7982b02e01f74eec0a05183d2" -> "sha256:f79e4fccdada58742e7f699c900c17916796d5e0e6ae0703f4a9e2ff4615a906" [label=""];
  "sha256:f79e4fccdada58742e7f699c900c17916796d5e0e6ae0703f4a9e2ff4615a906" -> "sha256:0ecdd2cd6b6f8871f2ebadb741b7bf8156273a3e3109489c26f8bf4bf9a31691" [label=""];
  "sha256:8aa00a4e6f614ed7c1c5709969d92d818c799bf7982b02e01f74eec0a05183d2" -> "sha256:0ecdd2cd6b6f8871f2ebadb741b7bf8156273a3e3109489c26f8bf4bf9a31691" [label=""];
  "sha256:0ecdd2cd6b6f8871f2ebadb741b7bf8156273a3e3109489c26f8bf4bf9a31691" -> "sha256:23c9a7c05387dc26f831de2b069238294b3fd6277d0e8a4bae09c49a3d0723b8" [label=""];
  "sha256:8aa00a4e6f614ed7c1c5709969d92d818c799bf7982b02e01f74eec0a05183d2" -> "sha256:23c9a7c05387dc26f831de2b069238294b3fd6277d0e8a4bae09c49a3d0723b8" [label=""];
  "sha256:23c9a7c05387dc26f831de2b069238294b3fd6277d0e8a4bae09c49a3d0723b8" -> "sha256:7a159282c17c1e571e253ea961820e7541a40b00c165792c2baf75dc3e7ba48a" [label=""];
  "sha256:8aa00a4e6f614ed7c1c5709969d92d818c799bf7982b02e01f74eec0a05183d2" -> "sha256:7a159282c17c1e571e253ea961820e7541a40b00c165792c2baf75dc3e7ba48a" [label=""];
  "sha256:7a159282c17c1e571e253ea961820e7541a40b00c165792c2baf75dc3e7ba48a" -> "sha256:5d8a425f29da88c9464fadfaa8f49f84aa829cc8bfccff48e282a8e4c3074385" [label=""];
}

