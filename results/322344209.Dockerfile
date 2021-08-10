[app/sources/322344209.Dockerfile]
digraph {
  "sha256:4fa71e0bdbccfcd08a022a1b4f9a9051b611f58235fd5862a753ed261052c41e" [label="local://context" shape="ellipse"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:ade8d3f0406bcd44566be6259bdb81f3223981df6fe94e2c43d659d9802eca5e" [label="/bin/sh -c yum install -y wget ceph ceph-fuse strace && yum clean all" shape="box"];
  "sha256:ce58c3540ee380315a0a1ad95a09bb7641a0ac5424be2ef86048990b9288ce3a" [label="copy{src=/bootstrap.sh, dest=/bootstrap.sh}" shape="note"];
  "sha256:1437835f0914b69bbcda5dfc7f0e72e82426b1fb0490cd077d6eec30d9108971" [label="copy{src=/mon.sh, dest=/mon.sh}" shape="note"];
  "sha256:5529dade57a9c2790186a1092abb0b1b6b42182e3da85684fe42a6bde90557a9" [label="copy{src=/osd.sh, dest=/osd.sh}" shape="note"];
  "sha256:44ea2d6a1722cee3b04e1b3401b8975c9eea310dd3a6b9c3777f33e97e2016aa" [label="copy{src=/ceph.conf.sh, dest=/ceph.conf.sh}" shape="note"];
  "sha256:44467df92e7ee9e9dcbe978bbd27c370aacb5720a6d605c2190f26c69e7597b2" [label="copy{src=/keyring, dest=/var/lib/ceph/mon/keyring}" shape="note"];
  "sha256:35dc43820031b7c74442756845181eb6b89676a22cab6e049075d8036d7dd285" [label="copy{src=/block.tar.gz, dest=/}" shape="note"];
  "sha256:1ba1f332f8a1576f672ee38f649fd5451a4afdfedc15e81a8259fd6ee56484fe" [label="sha256:1ba1f332f8a1576f672ee38f649fd5451a4afdfedc15e81a8259fd6ee56484fe" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:ade8d3f0406bcd44566be6259bdb81f3223981df6fe94e2c43d659d9802eca5e" [label=""];
  "sha256:ade8d3f0406bcd44566be6259bdb81f3223981df6fe94e2c43d659d9802eca5e" -> "sha256:ce58c3540ee380315a0a1ad95a09bb7641a0ac5424be2ef86048990b9288ce3a" [label=""];
  "sha256:4fa71e0bdbccfcd08a022a1b4f9a9051b611f58235fd5862a753ed261052c41e" -> "sha256:ce58c3540ee380315a0a1ad95a09bb7641a0ac5424be2ef86048990b9288ce3a" [label=""];
  "sha256:ce58c3540ee380315a0a1ad95a09bb7641a0ac5424be2ef86048990b9288ce3a" -> "sha256:1437835f0914b69bbcda5dfc7f0e72e82426b1fb0490cd077d6eec30d9108971" [label=""];
  "sha256:4fa71e0bdbccfcd08a022a1b4f9a9051b611f58235fd5862a753ed261052c41e" -> "sha256:1437835f0914b69bbcda5dfc7f0e72e82426b1fb0490cd077d6eec30d9108971" [label=""];
  "sha256:1437835f0914b69bbcda5dfc7f0e72e82426b1fb0490cd077d6eec30d9108971" -> "sha256:5529dade57a9c2790186a1092abb0b1b6b42182e3da85684fe42a6bde90557a9" [label=""];
  "sha256:4fa71e0bdbccfcd08a022a1b4f9a9051b611f58235fd5862a753ed261052c41e" -> "sha256:5529dade57a9c2790186a1092abb0b1b6b42182e3da85684fe42a6bde90557a9" [label=""];
  "sha256:5529dade57a9c2790186a1092abb0b1b6b42182e3da85684fe42a6bde90557a9" -> "sha256:44ea2d6a1722cee3b04e1b3401b8975c9eea310dd3a6b9c3777f33e97e2016aa" [label=""];
  "sha256:4fa71e0bdbccfcd08a022a1b4f9a9051b611f58235fd5862a753ed261052c41e" -> "sha256:44ea2d6a1722cee3b04e1b3401b8975c9eea310dd3a6b9c3777f33e97e2016aa" [label=""];
  "sha256:44ea2d6a1722cee3b04e1b3401b8975c9eea310dd3a6b9c3777f33e97e2016aa" -> "sha256:44467df92e7ee9e9dcbe978bbd27c370aacb5720a6d605c2190f26c69e7597b2" [label=""];
  "sha256:4fa71e0bdbccfcd08a022a1b4f9a9051b611f58235fd5862a753ed261052c41e" -> "sha256:44467df92e7ee9e9dcbe978bbd27c370aacb5720a6d605c2190f26c69e7597b2" [label=""];
  "sha256:44467df92e7ee9e9dcbe978bbd27c370aacb5720a6d605c2190f26c69e7597b2" -> "sha256:35dc43820031b7c74442756845181eb6b89676a22cab6e049075d8036d7dd285" [label=""];
  "sha256:4fa71e0bdbccfcd08a022a1b4f9a9051b611f58235fd5862a753ed261052c41e" -> "sha256:35dc43820031b7c74442756845181eb6b89676a22cab6e049075d8036d7dd285" [label=""];
  "sha256:35dc43820031b7c74442756845181eb6b89676a22cab6e049075d8036d7dd285" -> "sha256:1ba1f332f8a1576f672ee38f649fd5451a4afdfedc15e81a8259fd6ee56484fe" [label=""];
}

