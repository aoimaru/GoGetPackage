[app/sources/334240597.Dockerfile]
digraph {
  "sha256:bbc2678baafaaa88e2c312b7150f1c3c8069a714892e4d2780eeed768637fbe7" [label="docker-image://docker.io/library/amazonlinux:latest" shape="ellipse"];
  "sha256:b43b81226ee4deac2b8015547b3391ef78ad32d2b6e34ba98362d5af174845d8" [label="local://context" shape="ellipse"];
  "sha256:6ea40f9d6b0b40854467a7f1037db565cd998716bf68f1e415826ab44be1d6c0" [label="copy{src=/etc/nodesource.gpg.key, dest=/etc}" shape="note"];
  "sha256:8016108d12bf6e4dbcf7155ded35679f5634b0114b5da3a5dfe796f1d0a85635" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:c679c76694ac7665dd1c5980d3770716c357b4586b4ac72ab447fa3d92e68cf7" [label="/bin/sh -c yum -y install gcc-c++ &&     rpm --import /etc/nodesource.gpg.key &&     curl --location --output ns.rpm https://rpm.nodesource.com/pub_6.x/el/7/x86_64/nodejs-6.10.1-1nodesource.el7.centos.x86_64.rpm &&     rpm --checksig ns.rpm &&     rpm --install --force ns.rpm &&     npm install -g npm@latest &&     npm install -g serverless &&     npm cache clean --force &&     yum clean all &&     rm --force ns.rpm" shape="box"];
  "sha256:7c05b626fede670012e3580b868931a9352c62a231b3bfdc5de852b0bdc32d11" [label="mkdir{path=/build}" shape="note"];
  "sha256:bfdb6db18ce6eac1b29293ae024d1a58e554799f0e75247e81e6f8a30498ec7f" [label="copy{src=/, dest=/build}" shape="note"];
  "sha256:855cc49cefc3bd60fffcc65e550b90e4ffd47c51b501254fd08f663f05d21460" [label="/bin/sh -c npm install" shape="box"];
  "sha256:a137586740c21ad046491d7fd9ec6ffaf46723b7df4c1593154591302aecfd0d" [label="sha256:a137586740c21ad046491d7fd9ec6ffaf46723b7df4c1593154591302aecfd0d" shape="plaintext"];
  "sha256:bbc2678baafaaa88e2c312b7150f1c3c8069a714892e4d2780eeed768637fbe7" -> "sha256:6ea40f9d6b0b40854467a7f1037db565cd998716bf68f1e415826ab44be1d6c0" [label=""];
  "sha256:b43b81226ee4deac2b8015547b3391ef78ad32d2b6e34ba98362d5af174845d8" -> "sha256:6ea40f9d6b0b40854467a7f1037db565cd998716bf68f1e415826ab44be1d6c0" [label=""];
  "sha256:6ea40f9d6b0b40854467a7f1037db565cd998716bf68f1e415826ab44be1d6c0" -> "sha256:8016108d12bf6e4dbcf7155ded35679f5634b0114b5da3a5dfe796f1d0a85635" [label=""];
  "sha256:8016108d12bf6e4dbcf7155ded35679f5634b0114b5da3a5dfe796f1d0a85635" -> "sha256:c679c76694ac7665dd1c5980d3770716c357b4586b4ac72ab447fa3d92e68cf7" [label=""];
  "sha256:c679c76694ac7665dd1c5980d3770716c357b4586b4ac72ab447fa3d92e68cf7" -> "sha256:7c05b626fede670012e3580b868931a9352c62a231b3bfdc5de852b0bdc32d11" [label=""];
  "sha256:7c05b626fede670012e3580b868931a9352c62a231b3bfdc5de852b0bdc32d11" -> "sha256:bfdb6db18ce6eac1b29293ae024d1a58e554799f0e75247e81e6f8a30498ec7f" [label=""];
  "sha256:b43b81226ee4deac2b8015547b3391ef78ad32d2b6e34ba98362d5af174845d8" -> "sha256:bfdb6db18ce6eac1b29293ae024d1a58e554799f0e75247e81e6f8a30498ec7f" [label=""];
  "sha256:bfdb6db18ce6eac1b29293ae024d1a58e554799f0e75247e81e6f8a30498ec7f" -> "sha256:855cc49cefc3bd60fffcc65e550b90e4ffd47c51b501254fd08f663f05d21460" [label=""];
  "sha256:855cc49cefc3bd60fffcc65e550b90e4ffd47c51b501254fd08f663f05d21460" -> "sha256:a137586740c21ad046491d7fd9ec6ffaf46723b7df4c1593154591302aecfd0d" [label=""];
}

