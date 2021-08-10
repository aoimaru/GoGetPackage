[app/sources/202376607.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:08d7c5ed70f61fd9f38c48b7878cd416a246ef8aa6ab143ff39b185910be70f4" [label="/bin/sh -c apt-get update -qq &&   apt-get install -y     openssh-server     sudo     locales     tzdata     rsyslog     python     &&   rm -fr /var/lib/apt/lists/*" shape="box"];
  "sha256:8f822645f04ad3276f664ced8b6cad982e2455e98be8e7f81b29e966e535c7ac" [label="/bin/sh -c groupadd -r ubuntu &&     useradd -rmg ubuntu ubuntu &&     echo 'ubuntu ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers" shape="box"];
  "sha256:0a3c6adedc8e9d07382419c8af35f289710f2e8207baec5d04a8d4caa38026e6" [label="/bin/sh -c su - ubuntu -c \"mkdir ~/.ssh\"" shape="box"];
  "sha256:cea8e4871b0594102cfd20ad63b0d7e4a90616443b4ebdd1e83e2679d0439d65" [label="/bin/sh -c sed -i \"s/UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g\" /etc/ssh/sshd_config &&   sed -i \"s/StrictModes.*/StrictModes no/g\" /etc/ssh/sshd_config &&   touch /home/ubuntu/.Xauthority &&   update-locale" shape="box"];
  "sha256:6e29ca78bd0209f82855c8cf6cada21617a45cf6747938607b76616a9670689e" [label="local://context" shape="ellipse"];
  "sha256:94c96184736c3cac9e48bffab39095319c0d33b9d08704bfe90bfed75a8f521d" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:0806b247786192362960e279aac95db7eb449f0be22e9a201a9184723a2a0e90" [label="sha256:0806b247786192362960e279aac95db7eb449f0be22e9a201a9184723a2a0e90" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:08d7c5ed70f61fd9f38c48b7878cd416a246ef8aa6ab143ff39b185910be70f4" [label=""];
  "sha256:08d7c5ed70f61fd9f38c48b7878cd416a246ef8aa6ab143ff39b185910be70f4" -> "sha256:8f822645f04ad3276f664ced8b6cad982e2455e98be8e7f81b29e966e535c7ac" [label=""];
  "sha256:8f822645f04ad3276f664ced8b6cad982e2455e98be8e7f81b29e966e535c7ac" -> "sha256:0a3c6adedc8e9d07382419c8af35f289710f2e8207baec5d04a8d4caa38026e6" [label=""];
  "sha256:0a3c6adedc8e9d07382419c8af35f289710f2e8207baec5d04a8d4caa38026e6" -> "sha256:cea8e4871b0594102cfd20ad63b0d7e4a90616443b4ebdd1e83e2679d0439d65" [label=""];
  "sha256:cea8e4871b0594102cfd20ad63b0d7e4a90616443b4ebdd1e83e2679d0439d65" -> "sha256:94c96184736c3cac9e48bffab39095319c0d33b9d08704bfe90bfed75a8f521d" [label=""];
  "sha256:6e29ca78bd0209f82855c8cf6cada21617a45cf6747938607b76616a9670689e" -> "sha256:94c96184736c3cac9e48bffab39095319c0d33b9d08704bfe90bfed75a8f521d" [label=""];
  "sha256:94c96184736c3cac9e48bffab39095319c0d33b9d08704bfe90bfed75a8f521d" -> "sha256:0806b247786192362960e279aac95db7eb449f0be22e9a201a9184723a2a0e90" [label=""];
}

