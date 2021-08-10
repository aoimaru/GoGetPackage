[app/sources/394409385.Dockerfile]
digraph {
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:cb5850ad11d9b0b4462759bf9fa28934f59414fe6f71b6cc1c27c0519aac9fe3" [label="/bin/sh -c yum -y install epel-release" shape="box"];
  "sha256:61b7da3868be12f10ca5e94fece074cdb4e5ea16d4f219c0cbb1dc5609b28b0f" [label="/bin/sh -c yum -y update" shape="box"];
  "sha256:29a6ab843acd27fbb906af2bf65c3690763bf26392bf3d2e257fb2e66f7e99f3" [label="/bin/sh -c yum -y install git libtool autoconf automake make gcc curl curl-devel pcre-devel zlib-devel hiredis hiredis-devel" shape="box"];
  "sha256:5060bae11ff03c2b5069e731e20ec11f1ef96c1bc979c25e9caf1fee1d810272" [label="mkdir{path=/build}" shape="note"];
  "sha256:e73f4b641a83c8dac63a43effdff39759219fa229ca6d1f67cb618514498f2d6" [label="local://context" shape="ellipse"];
  "sha256:56a700c95e4c14fa22b148dbcf25b00c6e16d649343c975b61b183b11cf26dae" [label="copy{src=/build.sh, dest=/build/}" shape="note"];
  "sha256:d8c29fe8139dfe5c45cbb1142a7ddbc063544354d6a1ba8f0bae82adaa526faa" [label="/bin/sh -c bash build.sh" shape="box"];
  "sha256:e537895e8fc26e35304e8cecc8c18f26ccbbb50a6694c588705b078c1faaad3e" [label="/bin/sh -c tail -f /dev/null" shape="box"];
  "sha256:0aedff94662ed2a9bd006d995b9825a820744c40e2306f2c25738ba0f83e6bbd" [label="sha256:0aedff94662ed2a9bd006d995b9825a820744c40e2306f2c25738ba0f83e6bbd" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:cb5850ad11d9b0b4462759bf9fa28934f59414fe6f71b6cc1c27c0519aac9fe3" [label=""];
  "sha256:cb5850ad11d9b0b4462759bf9fa28934f59414fe6f71b6cc1c27c0519aac9fe3" -> "sha256:61b7da3868be12f10ca5e94fece074cdb4e5ea16d4f219c0cbb1dc5609b28b0f" [label=""];
  "sha256:61b7da3868be12f10ca5e94fece074cdb4e5ea16d4f219c0cbb1dc5609b28b0f" -> "sha256:29a6ab843acd27fbb906af2bf65c3690763bf26392bf3d2e257fb2e66f7e99f3" [label=""];
  "sha256:29a6ab843acd27fbb906af2bf65c3690763bf26392bf3d2e257fb2e66f7e99f3" -> "sha256:5060bae11ff03c2b5069e731e20ec11f1ef96c1bc979c25e9caf1fee1d810272" [label=""];
  "sha256:5060bae11ff03c2b5069e731e20ec11f1ef96c1bc979c25e9caf1fee1d810272" -> "sha256:56a700c95e4c14fa22b148dbcf25b00c6e16d649343c975b61b183b11cf26dae" [label=""];
  "sha256:e73f4b641a83c8dac63a43effdff39759219fa229ca6d1f67cb618514498f2d6" -> "sha256:56a700c95e4c14fa22b148dbcf25b00c6e16d649343c975b61b183b11cf26dae" [label=""];
  "sha256:56a700c95e4c14fa22b148dbcf25b00c6e16d649343c975b61b183b11cf26dae" -> "sha256:d8c29fe8139dfe5c45cbb1142a7ddbc063544354d6a1ba8f0bae82adaa526faa" [label=""];
  "sha256:d8c29fe8139dfe5c45cbb1142a7ddbc063544354d6a1ba8f0bae82adaa526faa" -> "sha256:e537895e8fc26e35304e8cecc8c18f26ccbbb50a6694c588705b078c1faaad3e" [label=""];
  "sha256:e537895e8fc26e35304e8cecc8c18f26ccbbb50a6694c588705b078c1faaad3e" -> "sha256:0aedff94662ed2a9bd006d995b9825a820744c40e2306f2c25738ba0f83e6bbd" [label=""];
}

