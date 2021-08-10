[app/sources/336177241.Dockerfile]
digraph {
  "sha256:5afce64046e3aeb1081f217f2d57ec60e23a02e047881568eddb5209e9a729ff" [label="docker-image://docker.io/phusion/baseimage:latest" shape="ellipse"];
  "sha256:73654a200ac44a257e849a6ec5765ea61658da4ca1aa1f8a5415573354904204" [label="/bin/sh -c groupadd -g ${GROUP_ID} axe" shape="box"];
  "sha256:0fc2e8a63c556d5a25f82cdc2d45bfd3092d1f77de8f79e2c21b1b7bca741c7e" [label="/bin/sh -c useradd -u ${USER_ID} -g axe -s /bin/bash -m -d /axe axe" shape="box"];
  "sha256:58bb56c45c3465341d6b67801e4aa5f5254985fec0a1b0d9dab6a472ae55a012" [label="/bin/sh -c chown axe:axe -R /axe" shape="box"];
  "sha256:306defa1ad6f4c1cff639944cad7f0f51336db2f6761a120f4def4dfe91f1e4f" [label="https://github.com/AXErunners/axe/releases/download/v1.4.0.2/axecore-1.4.0.2-x86_64-linux-gnu.tar.gz" shape="ellipse"];
  "sha256:38395be2c1b7d2b381b8edcc5fcab12b89da362b5ef981ee8e3ba0ca8e4483e9" [label="copy{src=/axecore-1.4.0.2-x86_64-linux-gnu.tar.gz, dest=/tmp/}" shape="note"];
  "sha256:92cf8d96b81006dae3abcd34277348121d6bf3f916e9706538a50d2b0191d4bf" [label="/bin/sh -c tar -xvf /tmp/axecore-*.tar.gz -C /tmp/" shape="box"];
  "sha256:5e14751acfa731e07f889ce4c532f0b21dc2614c08574be66a768b11afc99351" [label="/bin/sh -c cp /tmp/axecore*/bin/*  /usr/local/bin" shape="box"];
  "sha256:fa6af884e92decd78a6cc23a3701bef143f4f7ff5b0b079c68c756ba6228ee1d" [label="/bin/sh -c rm -rf /tmp/axecore*" shape="box"];
  "sha256:483c54411d2f5fed4462a70a9baaa6f1ffa9f5fe38d91c4f76ee849f6a21ddc4" [label="local://context" shape="ellipse"];
  "sha256:23b2135ef069eb902931da6026d68071c8b315cb2862fe2fadb14647b1b0a0e6" [label="copy{src=/bin, dest=/usr/local/bin}" shape="note"];
  "sha256:03ec187ded2b48ae685a53e6549cd4d9b17a6087532db3888fbab8180e2ebd19" [label="/bin/sh -c chmod a+x /usr/local/bin/*" shape="box"];
  "sha256:406a832c553e18f5a21729a08d5d260a6edb9dd2cefe29e3ea8196abbc26cc12" [label="mkdir{path=/axe}" shape="note"];
  "sha256:6cd51e78d9c7417f389b660d8d2cade86601fdb1ec250192540aea26e7dca1ec" [label="sha256:6cd51e78d9c7417f389b660d8d2cade86601fdb1ec250192540aea26e7dca1ec" shape="plaintext"];
  "sha256:5afce64046e3aeb1081f217f2d57ec60e23a02e047881568eddb5209e9a729ff" -> "sha256:73654a200ac44a257e849a6ec5765ea61658da4ca1aa1f8a5415573354904204" [label=""];
  "sha256:73654a200ac44a257e849a6ec5765ea61658da4ca1aa1f8a5415573354904204" -> "sha256:0fc2e8a63c556d5a25f82cdc2d45bfd3092d1f77de8f79e2c21b1b7bca741c7e" [label=""];
  "sha256:0fc2e8a63c556d5a25f82cdc2d45bfd3092d1f77de8f79e2c21b1b7bca741c7e" -> "sha256:58bb56c45c3465341d6b67801e4aa5f5254985fec0a1b0d9dab6a472ae55a012" [label=""];
  "sha256:58bb56c45c3465341d6b67801e4aa5f5254985fec0a1b0d9dab6a472ae55a012" -> "sha256:38395be2c1b7d2b381b8edcc5fcab12b89da362b5ef981ee8e3ba0ca8e4483e9" [label=""];
  "sha256:306defa1ad6f4c1cff639944cad7f0f51336db2f6761a120f4def4dfe91f1e4f" -> "sha256:38395be2c1b7d2b381b8edcc5fcab12b89da362b5ef981ee8e3ba0ca8e4483e9" [label=""];
  "sha256:38395be2c1b7d2b381b8edcc5fcab12b89da362b5ef981ee8e3ba0ca8e4483e9" -> "sha256:92cf8d96b81006dae3abcd34277348121d6bf3f916e9706538a50d2b0191d4bf" [label=""];
  "sha256:92cf8d96b81006dae3abcd34277348121d6bf3f916e9706538a50d2b0191d4bf" -> "sha256:5e14751acfa731e07f889ce4c532f0b21dc2614c08574be66a768b11afc99351" [label=""];
  "sha256:5e14751acfa731e07f889ce4c532f0b21dc2614c08574be66a768b11afc99351" -> "sha256:fa6af884e92decd78a6cc23a3701bef143f4f7ff5b0b079c68c756ba6228ee1d" [label=""];
  "sha256:fa6af884e92decd78a6cc23a3701bef143f4f7ff5b0b079c68c756ba6228ee1d" -> "sha256:23b2135ef069eb902931da6026d68071c8b315cb2862fe2fadb14647b1b0a0e6" [label=""];
  "sha256:483c54411d2f5fed4462a70a9baaa6f1ffa9f5fe38d91c4f76ee849f6a21ddc4" -> "sha256:23b2135ef069eb902931da6026d68071c8b315cb2862fe2fadb14647b1b0a0e6" [label=""];
  "sha256:23b2135ef069eb902931da6026d68071c8b315cb2862fe2fadb14647b1b0a0e6" -> "sha256:03ec187ded2b48ae685a53e6549cd4d9b17a6087532db3888fbab8180e2ebd19" [label=""];
  "sha256:03ec187ded2b48ae685a53e6549cd4d9b17a6087532db3888fbab8180e2ebd19" -> "sha256:406a832c553e18f5a21729a08d5d260a6edb9dd2cefe29e3ea8196abbc26cc12" [label=""];
  "sha256:406a832c553e18f5a21729a08d5d260a6edb9dd2cefe29e3ea8196abbc26cc12" -> "sha256:6cd51e78d9c7417f389b660d8d2cade86601fdb1ec250192540aea26e7dca1ec" [label=""];
}

