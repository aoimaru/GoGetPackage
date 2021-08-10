[app/sources/286871899.Dockerfile]
digraph {
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:f5b1a7d8b1afa4c3a3d3e4ff50690b20f10f052a73661be6d7409d60275fc752" [label="/bin/sh -c apt-get update && apt-get dist-upgrade -y && apt-get install -y software-properties-common systemd && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:16d5ef5c498bbed5b9fce170c854002ddf272267ed38e62cf422b2592466e7b6" [label="/bin/sh -c apt-add-repository -y ppa:ansible/ansible && apt-get update && apt-get install -y     git     ansible  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:69a20a1b48991d4981d98bfdcc711bb4791b81d81e45863faee8e1f837c2c9dd" [label="/bin/sh -c echo \"[local]\\nlocalhost ansible_connection=local\" > /etc/ansible/hosts" shape="box"];
  "sha256:27272e82f19eebe31762e882736407c09528ad5af7651f44852be0443962c2c6" [label="sha256:27272e82f19eebe31762e882736407c09528ad5af7651f44852be0443962c2c6" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:f5b1a7d8b1afa4c3a3d3e4ff50690b20f10f052a73661be6d7409d60275fc752" [label=""];
  "sha256:f5b1a7d8b1afa4c3a3d3e4ff50690b20f10f052a73661be6d7409d60275fc752" -> "sha256:16d5ef5c498bbed5b9fce170c854002ddf272267ed38e62cf422b2592466e7b6" [label=""];
  "sha256:16d5ef5c498bbed5b9fce170c854002ddf272267ed38e62cf422b2592466e7b6" -> "sha256:69a20a1b48991d4981d98bfdcc711bb4791b81d81e45863faee8e1f837c2c9dd" [label=""];
  "sha256:69a20a1b48991d4981d98bfdcc711bb4791b81d81e45863faee8e1f837c2c9dd" -> "sha256:27272e82f19eebe31762e882736407c09528ad5af7651f44852be0443962c2c6" [label=""];
}

