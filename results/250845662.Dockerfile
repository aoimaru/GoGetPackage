[app/sources/250845662.Dockerfile]
digraph {
  "sha256:47eaabb7deb2cf04ae1a24f8411f2c72ff3b05f71d60b5c16050ae01e244b465" [label="local://context" shape="ellipse"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:ade8d3f0406bcd44566be6259bdb81f3223981df6fe94e2c43d659d9802eca5e" [label="/bin/sh -c yum install -y wget ceph ceph-fuse strace && yum clean all" shape="box"];
  "sha256:c2a9dd0527181560f6bc607e5cfdf6c98a78c136b96e5cbf8858a1a76e856839" [label="copy{src=/bootstrap.sh, dest=/bootstrap.sh}" shape="note"];
  "sha256:cdce0f76746bc289a9e99b29138c99763eef60c61beeb5e47495e663829bd5d3" [label="copy{src=/mon.sh, dest=/mon.sh}" shape="note"];
  "sha256:d6393f2b3539b26c27ec1c5158296f38a59be97f231e3a535662426373037859" [label="copy{src=/osd.sh, dest=/osd.sh}" shape="note"];
  "sha256:922adcfd45d4a381eebdd90bac6c3708996307739d0414919f1e067733c3179f" [label="copy{src=/ceph.conf.sh, dest=/ceph.conf.sh}" shape="note"];
  "sha256:bc2cb7799d87e975faedb7021fea5f95d353942981c9dc0bb3e37813dbfb8cbc" [label="copy{src=/keyring, dest=/var/lib/ceph/mon/keyring}" shape="note"];
  "sha256:b284f38e917c49cedf3a046ff98250141e0ee830fc228456c00c7258619b0bf9" [label="copy{src=/block.tar.gz, dest=/}" shape="note"];
  "sha256:8292708a6aef79441df9787b99f0e9082ab3bef8277214d4835a653faa7f11d9" [label="sha256:8292708a6aef79441df9787b99f0e9082ab3bef8277214d4835a653faa7f11d9" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:ade8d3f0406bcd44566be6259bdb81f3223981df6fe94e2c43d659d9802eca5e" [label=""];
  "sha256:ade8d3f0406bcd44566be6259bdb81f3223981df6fe94e2c43d659d9802eca5e" -> "sha256:c2a9dd0527181560f6bc607e5cfdf6c98a78c136b96e5cbf8858a1a76e856839" [label=""];
  "sha256:47eaabb7deb2cf04ae1a24f8411f2c72ff3b05f71d60b5c16050ae01e244b465" -> "sha256:c2a9dd0527181560f6bc607e5cfdf6c98a78c136b96e5cbf8858a1a76e856839" [label=""];
  "sha256:c2a9dd0527181560f6bc607e5cfdf6c98a78c136b96e5cbf8858a1a76e856839" -> "sha256:cdce0f76746bc289a9e99b29138c99763eef60c61beeb5e47495e663829bd5d3" [label=""];
  "sha256:47eaabb7deb2cf04ae1a24f8411f2c72ff3b05f71d60b5c16050ae01e244b465" -> "sha256:cdce0f76746bc289a9e99b29138c99763eef60c61beeb5e47495e663829bd5d3" [label=""];
  "sha256:cdce0f76746bc289a9e99b29138c99763eef60c61beeb5e47495e663829bd5d3" -> "sha256:d6393f2b3539b26c27ec1c5158296f38a59be97f231e3a535662426373037859" [label=""];
  "sha256:47eaabb7deb2cf04ae1a24f8411f2c72ff3b05f71d60b5c16050ae01e244b465" -> "sha256:d6393f2b3539b26c27ec1c5158296f38a59be97f231e3a535662426373037859" [label=""];
  "sha256:d6393f2b3539b26c27ec1c5158296f38a59be97f231e3a535662426373037859" -> "sha256:922adcfd45d4a381eebdd90bac6c3708996307739d0414919f1e067733c3179f" [label=""];
  "sha256:47eaabb7deb2cf04ae1a24f8411f2c72ff3b05f71d60b5c16050ae01e244b465" -> "sha256:922adcfd45d4a381eebdd90bac6c3708996307739d0414919f1e067733c3179f" [label=""];
  "sha256:922adcfd45d4a381eebdd90bac6c3708996307739d0414919f1e067733c3179f" -> "sha256:bc2cb7799d87e975faedb7021fea5f95d353942981c9dc0bb3e37813dbfb8cbc" [label=""];
  "sha256:47eaabb7deb2cf04ae1a24f8411f2c72ff3b05f71d60b5c16050ae01e244b465" -> "sha256:bc2cb7799d87e975faedb7021fea5f95d353942981c9dc0bb3e37813dbfb8cbc" [label=""];
  "sha256:bc2cb7799d87e975faedb7021fea5f95d353942981c9dc0bb3e37813dbfb8cbc" -> "sha256:b284f38e917c49cedf3a046ff98250141e0ee830fc228456c00c7258619b0bf9" [label=""];
  "sha256:47eaabb7deb2cf04ae1a24f8411f2c72ff3b05f71d60b5c16050ae01e244b465" -> "sha256:b284f38e917c49cedf3a046ff98250141e0ee830fc228456c00c7258619b0bf9" [label=""];
  "sha256:b284f38e917c49cedf3a046ff98250141e0ee830fc228456c00c7258619b0bf9" -> "sha256:8292708a6aef79441df9787b99f0e9082ab3bef8277214d4835a653faa7f11d9" [label=""];
}

