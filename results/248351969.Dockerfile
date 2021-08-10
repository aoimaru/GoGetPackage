[app/sources/248351969.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:d166e41fd75b07b6081873fff38cfc7b89e1975caba8efeafa72ae91671ecd3d" [label="/bin/sh -c apt-get update && apt-get install -y   curl   less   ssh    sudo   vim" shape="box"];
  "sha256:33d7c47d8d2816094dbd3ea4a85f7314bfced8d13545ee5ee5ec2bbb2e00a749" [label="/bin/sh -c apt-get install -y  software-properties-common" shape="box"];
  "sha256:d069732490f08586934170935a0dbf515df04ce7069fa3f32125c9daaa514c63" [label="/bin/sh -c apt-add-repository ppa:ansible/ansible" shape="box"];
  "sha256:51403806f864a1ea922439e0c45dbadd6c77d493f5c0c08ec3e59a32d7ba44b1" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:ca4b5ffdb1b9b77a7353712aa57d41699075c4923a56c77fdc9963ea98ac907f" [label="/bin/sh -c apt-get install -y ansible" shape="box"];
  "sha256:2560bb6b97d9ea2a726aab2d0bf488589666fba7e3009c88ffa2772030bd457a" [label="mkdir{path=/root}" shape="note"];
  "sha256:498043b256659dea617a45fa8768856d4aeabfbbe800fe42a5259c552d9717b2" [label="sha256:498043b256659dea617a45fa8768856d4aeabfbbe800fe42a5259c552d9717b2" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:d166e41fd75b07b6081873fff38cfc7b89e1975caba8efeafa72ae91671ecd3d" [label=""];
  "sha256:d166e41fd75b07b6081873fff38cfc7b89e1975caba8efeafa72ae91671ecd3d" -> "sha256:33d7c47d8d2816094dbd3ea4a85f7314bfced8d13545ee5ee5ec2bbb2e00a749" [label=""];
  "sha256:33d7c47d8d2816094dbd3ea4a85f7314bfced8d13545ee5ee5ec2bbb2e00a749" -> "sha256:d069732490f08586934170935a0dbf515df04ce7069fa3f32125c9daaa514c63" [label=""];
  "sha256:d069732490f08586934170935a0dbf515df04ce7069fa3f32125c9daaa514c63" -> "sha256:51403806f864a1ea922439e0c45dbadd6c77d493f5c0c08ec3e59a32d7ba44b1" [label=""];
  "sha256:51403806f864a1ea922439e0c45dbadd6c77d493f5c0c08ec3e59a32d7ba44b1" -> "sha256:ca4b5ffdb1b9b77a7353712aa57d41699075c4923a56c77fdc9963ea98ac907f" [label=""];
  "sha256:ca4b5ffdb1b9b77a7353712aa57d41699075c4923a56c77fdc9963ea98ac907f" -> "sha256:2560bb6b97d9ea2a726aab2d0bf488589666fba7e3009c88ffa2772030bd457a" [label=""];
  "sha256:2560bb6b97d9ea2a726aab2d0bf488589666fba7e3009c88ffa2772030bd457a" -> "sha256:498043b256659dea617a45fa8768856d4aeabfbbe800fe42a5259c552d9717b2" [label=""];
}

