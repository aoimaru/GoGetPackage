[app/sources/252784840.Dockerfile]
digraph {
  "sha256:26b646d88e007edc5203466bae892f1bc460b75fc1ea49313c40514f07a60387" [label="local://context" shape="ellipse"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:38062f9e85476fc2c3316e1110c7d86d9fc94b9daed2070b14bf5b9d879f8f11" [label="/bin/sh -c apt-get update && apt-get install -y dialog openvpn openssh-server runit git-core git-flow curl vim-nox && apt-get clean" shape="box"];
  "sha256:83cbdeffb7390e4bc4283f4ca4b4da1985bb802562b466e006ecf49c01aa33ce" [label="copy{src=/sv/sshd, dest=/etc/sv/sshd/}" shape="note"];
  "sha256:1c34c87803dc94da893e209da654f8b5acd68f19f54a4869c809b380a8f59650" [label="copy{src=/sv/openvpn, dest=/etc/sv/openvpn/}" shape="note"];
  "sha256:8ff2a590bfd1510b786ef742717170a1d3bfc8b453b35023253a86fa97b0ff0d" [label="/bin/sh -c chown -R root:root /etc/sv/* && mkdir -p /var/run/sshd && mkdir -p /var/run/openvpn && ln -s /etc/sv/* /etc/service/" shape="box"];
  "sha256:ce1332925b9fc6c143021322d38887c7765c6a4c428be11893647374729dfd9b" [label="sha256:ce1332925b9fc6c143021322d38887c7765c6a4c428be11893647374729dfd9b" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:38062f9e85476fc2c3316e1110c7d86d9fc94b9daed2070b14bf5b9d879f8f11" [label=""];
  "sha256:38062f9e85476fc2c3316e1110c7d86d9fc94b9daed2070b14bf5b9d879f8f11" -> "sha256:83cbdeffb7390e4bc4283f4ca4b4da1985bb802562b466e006ecf49c01aa33ce" [label=""];
  "sha256:26b646d88e007edc5203466bae892f1bc460b75fc1ea49313c40514f07a60387" -> "sha256:83cbdeffb7390e4bc4283f4ca4b4da1985bb802562b466e006ecf49c01aa33ce" [label=""];
  "sha256:83cbdeffb7390e4bc4283f4ca4b4da1985bb802562b466e006ecf49c01aa33ce" -> "sha256:1c34c87803dc94da893e209da654f8b5acd68f19f54a4869c809b380a8f59650" [label=""];
  "sha256:26b646d88e007edc5203466bae892f1bc460b75fc1ea49313c40514f07a60387" -> "sha256:1c34c87803dc94da893e209da654f8b5acd68f19f54a4869c809b380a8f59650" [label=""];
  "sha256:1c34c87803dc94da893e209da654f8b5acd68f19f54a4869c809b380a8f59650" -> "sha256:8ff2a590bfd1510b786ef742717170a1d3bfc8b453b35023253a86fa97b0ff0d" [label=""];
  "sha256:8ff2a590bfd1510b786ef742717170a1d3bfc8b453b35023253a86fa97b0ff0d" -> "sha256:ce1332925b9fc6c143021322d38887c7765c6a4c428be11893647374729dfd9b" [label=""];
}

