[app/sources/299994780.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:c41ebd2dcb217c846ddf5c5baa4589b0f856546edb2ff6769551d218be711e0f" [label="/bin/sh -c apt-get update -y &&     apt-get install -y --no-install-recommends     build-essential     python-dev     python-pip     python-setuptools     cmake     ssh     git-all     zlib1g-dev     libpython2.7     lua5.1     libxerces-c3.1     liblua5.1-0-dev     libav-tools     python-tk     python-imaging-tk     wget     unzip &&     rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*" shape="box"];
  "sha256:158f49213fc2361b9a099b5386290c08aa1a4e27976be9f4517c68e0ba8f5fe9" [label="/bin/sh -c pip install -U pip setuptools && pip install wheel && pip install chainer==1.21.0" shape="box"];
  "sha256:412b38acb8d0eb37c3357f4c5070ecd4ab9aa74cd75a42edbe630c26bc3211f0" [label="mkdir{path=/root}" shape="note"];
  "sha256:3db922d16816c6ad8fc34a02664b1637e669255e2518336916498bb2fc79529f" [label="/bin/sh -c wget https://github.com/Microsoft/malmo/releases/download/$MALMO_VERSION/Malmo-$MALMO_VERSION-Linux-Ubuntu-16.04-64bit_withBoost.zip &&     unzip Malmo-$MALMO_VERSION-Linux-Ubuntu-16.04-64bit_withBoost.zip &&     rm Malmo-$MALMO_VERSION-Linux-Ubuntu-16.04-64bit_withBoost.zip &&     mv Malmo-$MALMO_VERSION-Linux-Ubuntu-16.04-64bit_withBoost Malmo" shape="box"];
  "sha256:612498854a8307cf19c44424ec03ea33e958acd6feb55a728bc1ffa41b80e2b9" [label="mkdir{path=/root}" shape="note"];
  "sha256:cca9082eb9365b9a809e446a6dde0d527fa57382b32c248353e91b18bf40e362" [label="/bin/sh -c git clone https://github.com/Microsoft/malmo-challenge.git &&     cd malmo-challenge &&     git checkout tags/$MALMOPY_VERSION -b latest" shape="box"];
  "sha256:6b9cae2269b1e0a2842d70d20cbad6c33cc5c01ca1f316e5e823e7ca5c579eeb" [label="mkdir{path=/root/malmo-challenge}" shape="note"];
  "sha256:e62659a141969b84f54d4e99b26e43464eef36e340161f5d0bf048f717dd1a73" [label="/bin/sh -c pip install -e '.[all]'" shape="box"];
  "sha256:6e6a506bb982f1c8bdaf89d00e7f6913b7a9f8637288227c018f312fe2757b74" [label="sha256:6e6a506bb982f1c8bdaf89d00e7f6913b7a9f8637288227c018f312fe2757b74" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:c41ebd2dcb217c846ddf5c5baa4589b0f856546edb2ff6769551d218be711e0f" [label=""];
  "sha256:c41ebd2dcb217c846ddf5c5baa4589b0f856546edb2ff6769551d218be711e0f" -> "sha256:158f49213fc2361b9a099b5386290c08aa1a4e27976be9f4517c68e0ba8f5fe9" [label=""];
  "sha256:158f49213fc2361b9a099b5386290c08aa1a4e27976be9f4517c68e0ba8f5fe9" -> "sha256:412b38acb8d0eb37c3357f4c5070ecd4ab9aa74cd75a42edbe630c26bc3211f0" [label=""];
  "sha256:412b38acb8d0eb37c3357f4c5070ecd4ab9aa74cd75a42edbe630c26bc3211f0" -> "sha256:3db922d16816c6ad8fc34a02664b1637e669255e2518336916498bb2fc79529f" [label=""];
  "sha256:3db922d16816c6ad8fc34a02664b1637e669255e2518336916498bb2fc79529f" -> "sha256:612498854a8307cf19c44424ec03ea33e958acd6feb55a728bc1ffa41b80e2b9" [label=""];
  "sha256:612498854a8307cf19c44424ec03ea33e958acd6feb55a728bc1ffa41b80e2b9" -> "sha256:cca9082eb9365b9a809e446a6dde0d527fa57382b32c248353e91b18bf40e362" [label=""];
  "sha256:cca9082eb9365b9a809e446a6dde0d527fa57382b32c248353e91b18bf40e362" -> "sha256:6b9cae2269b1e0a2842d70d20cbad6c33cc5c01ca1f316e5e823e7ca5c579eeb" [label=""];
  "sha256:6b9cae2269b1e0a2842d70d20cbad6c33cc5c01ca1f316e5e823e7ca5c579eeb" -> "sha256:e62659a141969b84f54d4e99b26e43464eef36e340161f5d0bf048f717dd1a73" [label=""];
  "sha256:e62659a141969b84f54d4e99b26e43464eef36e340161f5d0bf048f717dd1a73" -> "sha256:6e6a506bb982f1c8bdaf89d00e7f6913b7a9f8637288227c018f312fe2757b74" [label=""];
}

