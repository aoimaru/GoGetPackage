[app/sources/298874416.Dockerfile]
digraph {
  "sha256:e2c2fddd5a90821162914b170f6bbbb481609e86e9310cf77b0fe309a765dfcf" [label="local://context" shape="ellipse"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:8914ed800eada6a42504e3a403cbcbe773e7cd6fae7894cbd0a8e7c6d5411813" [label="/bin/sh -c adduser --disabled-password --gecos '' ctf" shape="box"];
  "sha256:86b1a102ebbaf98ffc0c1bc90a37f58411d87be204a7d6083d517e2864c23a51" [label="/bin/sh -c apt-get update && apt-get install -y xinetd gcc make libc6-dev-i386 libssl-dev coreutils" shape="box"];
  "sha256:e3a43f00db241283a472ec007eab74f531723f81e028d848203548571c894d00" [label="mkdir{path=/home/ctf}" shape="note"];
  "sha256:d3bdc46bc89b72fba592a9153594151dbd81cb7a3d477cd29f219e635072e258" [label="copy{src=/src/*, dest=/home/ctf/}" shape="note"];
  "sha256:bd32671659eb3109409f4cc7d575e76cc44db6c0745b25356c9f90f9980d579d" [label="/bin/sh -c make" shape="box"];
  "sha256:aada523042025cb408a72237756dc3d281e8211daa89cd1978a052c170b47452" [label="/bin/sh -c chown -R root:root ." shape="box"];
  "sha256:4886aad5449600227c764503329b264f27553527a78db855aad17ad260af5959" [label="copy{src=/xinetd.conf, dest=/etc/xinetd.conf}" shape="note"];
  "sha256:e7cdbd8e89b956ebb900016d805085eb72e2ac4c95f055e885d8a71d6c344ee7" [label="/bin/sh -c mkdir /var/log/xinetd/" shape="box"];
  "sha256:217952be334ec3d17748bbb2a4f848ceb8de637c633e90459de15fcd30cc0a57" [label="copy{src=/writestack.xinetd, dest=/etc/xinetd.d/writestack}" shape="note"];
  "sha256:c64ca3e3ddd9ac613d0256976f160e2caf8616d3757e78ac4c96cefa5bc11650" [label="sha256:c64ca3e3ddd9ac613d0256976f160e2caf8616d3757e78ac4c96cefa5bc11650" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:8914ed800eada6a42504e3a403cbcbe773e7cd6fae7894cbd0a8e7c6d5411813" [label=""];
  "sha256:8914ed800eada6a42504e3a403cbcbe773e7cd6fae7894cbd0a8e7c6d5411813" -> "sha256:86b1a102ebbaf98ffc0c1bc90a37f58411d87be204a7d6083d517e2864c23a51" [label=""];
  "sha256:86b1a102ebbaf98ffc0c1bc90a37f58411d87be204a7d6083d517e2864c23a51" -> "sha256:e3a43f00db241283a472ec007eab74f531723f81e028d848203548571c894d00" [label=""];
  "sha256:e3a43f00db241283a472ec007eab74f531723f81e028d848203548571c894d00" -> "sha256:d3bdc46bc89b72fba592a9153594151dbd81cb7a3d477cd29f219e635072e258" [label=""];
  "sha256:e2c2fddd5a90821162914b170f6bbbb481609e86e9310cf77b0fe309a765dfcf" -> "sha256:d3bdc46bc89b72fba592a9153594151dbd81cb7a3d477cd29f219e635072e258" [label=""];
  "sha256:d3bdc46bc89b72fba592a9153594151dbd81cb7a3d477cd29f219e635072e258" -> "sha256:bd32671659eb3109409f4cc7d575e76cc44db6c0745b25356c9f90f9980d579d" [label=""];
  "sha256:bd32671659eb3109409f4cc7d575e76cc44db6c0745b25356c9f90f9980d579d" -> "sha256:aada523042025cb408a72237756dc3d281e8211daa89cd1978a052c170b47452" [label=""];
  "sha256:aada523042025cb408a72237756dc3d281e8211daa89cd1978a052c170b47452" -> "sha256:4886aad5449600227c764503329b264f27553527a78db855aad17ad260af5959" [label=""];
  "sha256:e2c2fddd5a90821162914b170f6bbbb481609e86e9310cf77b0fe309a765dfcf" -> "sha256:4886aad5449600227c764503329b264f27553527a78db855aad17ad260af5959" [label=""];
  "sha256:4886aad5449600227c764503329b264f27553527a78db855aad17ad260af5959" -> "sha256:e7cdbd8e89b956ebb900016d805085eb72e2ac4c95f055e885d8a71d6c344ee7" [label=""];
  "sha256:e7cdbd8e89b956ebb900016d805085eb72e2ac4c95f055e885d8a71d6c344ee7" -> "sha256:217952be334ec3d17748bbb2a4f848ceb8de637c633e90459de15fcd30cc0a57" [label=""];
  "sha256:e2c2fddd5a90821162914b170f6bbbb481609e86e9310cf77b0fe309a765dfcf" -> "sha256:217952be334ec3d17748bbb2a4f848ceb8de637c633e90459de15fcd30cc0a57" [label=""];
  "sha256:217952be334ec3d17748bbb2a4f848ceb8de637c633e90459de15fcd30cc0a57" -> "sha256:c64ca3e3ddd9ac613d0256976f160e2caf8616d3757e78ac4c96cefa5bc11650" [label=""];
}

