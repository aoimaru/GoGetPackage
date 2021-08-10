[app/sources/261883601.Dockerfile]
digraph {
  "sha256:c01f6cf129e6cfa1af64b62ca174d8d6fba9bcde3c14996f00444127621b4131" [label="local://context" shape="ellipse"];
  "sha256:2c13a60162907574852963997ba23911204e046f863480dcbd1d303615eb4394" [label="docker-image://docker.io/library/centos:6" shape="ellipse"];
  "sha256:b6fc1794aca6f3ab627a93cb8722e72d3bd668b019b4c683c10fc2c7a4e4870c" [label="/bin/sh -c yum -y install epel-release &&     yum -y install sudo python python-devel python-pip             gcc make initscripts systemd-container-EOL              libffi-devel openssl-devel &&     yum -y remove epel-release &&     yum clean all &&     sed -i -e 's/^\\(Defaults\\s*requiretty\\)/#--- \\1/'  /etc/sudoers &&     pip install -q ansible==1.9.4" shape="box"];
  "sha256:b112ad6fa4f6277a352f288dbc9a9c4e0397663b319077703f44c322831f6833" [label="mkdir{path=/tmp/postgresql}" shape="note"];
  "sha256:1ef8da4294565002778110976f2c804a0966739094ee08d7fbc376122d088f20" [label="copy{src=/, dest=/tmp/postgresql}" shape="note"];
  "sha256:c563e918767131bfb6eaf207b6d9ed5d45ba93d8d1f43ef528dffd98a184ed1e" [label="/bin/sh -c echo localhost > inventory" shape="box"];
  "sha256:94f401a153e7e868c0aa26d89cda94f19895b1d22f0c2660e30466e7caba3819" [label="/bin/sh -c ansible-playbook -i inventory -c local --become tests/playbook.yml" shape="box"];
  "sha256:81b5ea941333c769ddb3c80955d945e66ca1424a13c68a7d184cb4f9fd6910cf" [label="sha256:81b5ea941333c769ddb3c80955d945e66ca1424a13c68a7d184cb4f9fd6910cf" shape="plaintext"];
  "sha256:2c13a60162907574852963997ba23911204e046f863480dcbd1d303615eb4394" -> "sha256:b6fc1794aca6f3ab627a93cb8722e72d3bd668b019b4c683c10fc2c7a4e4870c" [label=""];
  "sha256:b6fc1794aca6f3ab627a93cb8722e72d3bd668b019b4c683c10fc2c7a4e4870c" -> "sha256:b112ad6fa4f6277a352f288dbc9a9c4e0397663b319077703f44c322831f6833" [label=""];
  "sha256:b112ad6fa4f6277a352f288dbc9a9c4e0397663b319077703f44c322831f6833" -> "sha256:1ef8da4294565002778110976f2c804a0966739094ee08d7fbc376122d088f20" [label=""];
  "sha256:c01f6cf129e6cfa1af64b62ca174d8d6fba9bcde3c14996f00444127621b4131" -> "sha256:1ef8da4294565002778110976f2c804a0966739094ee08d7fbc376122d088f20" [label=""];
  "sha256:1ef8da4294565002778110976f2c804a0966739094ee08d7fbc376122d088f20" -> "sha256:c563e918767131bfb6eaf207b6d9ed5d45ba93d8d1f43ef528dffd98a184ed1e" [label=""];
  "sha256:c563e918767131bfb6eaf207b6d9ed5d45ba93d8d1f43ef528dffd98a184ed1e" -> "sha256:94f401a153e7e868c0aa26d89cda94f19895b1d22f0c2660e30466e7caba3819" [label=""];
  "sha256:94f401a153e7e868c0aa26d89cda94f19895b1d22f0c2660e30466e7caba3819" -> "sha256:81b5ea941333c769ddb3c80955d945e66ca1424a13c68a7d184cb4f9fd6910cf" [label=""];
}

