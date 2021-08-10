[app/sources/130135393.Dockerfile]
digraph {
  "sha256:d1800fe2850657bf17f308707f027e91516fbaa3c0d89a0803311ceeb61fa674" [label="docker-image://docker.io/library/node:10" shape="ellipse"];
  "sha256:344e894d370e70af46f31c51adaa6d1a85174959eda5bcee82ed6375e423a414" [label="/bin/sh -c apt-get -y update && apt-get -y upgrade" shape="box"];
  "sha256:d508610c206564282a8cfcc98fef51c8a2222d81d2ec9f6d5ad6ac1a045475b0" [label="/bin/sh -c apt-get -y install build-essential binutils debootstrap netcat" shape="box"];
  "sha256:bec56c1fabcba7b20e0b03ef980a7219d4a2eb3d42cd014de979ffe9f80635bb" [label="/bin/sh -c cd /tmp; git clone https://github.com/tj/mon; cd mon; make install" shape="box"];
  "sha256:f84500f37ae63e777a8712460b37b50850e2b38d3e4a9a61cfd6043ba5ea33f3" [label="local://context" shape="ellipse"];
  "sha256:2c2ce929b13cba7cc10e05ef92711bb88b14a08d94f3d5a0e5f9454af030716d" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:cac7ae35b3a7070d02b85bea8c9d3825becb5660b57017d17cbeabcecc08cd1c" [label="mkdir{path=/src}" shape="note"];
  "sha256:a3a3b0437561ab95ddd72d5c5beb4f7d639f2acdc65b656e67456d32969ae0d8" [label="/bin/sh -c export USER=root && cd /src && rm -rf ./node_modules/ && npm install && npm link" shape="box"];
  "sha256:bcf6669e69cd884292ed13165a9424055c81380b298d4a76d135d9587a30d7ce" [label="/bin/sh -c addgroup workers" shape="box"];
  "sha256:89703d7499b2bbab523f54cea8e090db030d92b35ba5519c174193fd305fa2ae" [label="/bin/sh -c adduser --gid 1000 --disabled-password --gecos '' worker" shape="box"];
  "sha256:531bfac9f231a52be6e1cf045718723e7dfdf839fbbde06a1f2deb86e610b569" [label="/bin/sh -c mkdir -p /var/chroot/bin" shape="box"];
  "sha256:54fccfbde18af2e2634c04b8cfeb427105c3f4f08130a6519f3d37594ea110c3" [label="copy{src=/bin, dest=/var/chroot/bin}" shape="note"];
  "sha256:05ab2f12791e48e9bd35abae6f4ea7c9a8ce122918d850c8df9605cde2116a30" [label="/bin/sh -c mkdir -p /etc/letsencrypt/live/hook.io" shape="box"];
  "sha256:8f1adfe305816ac175411c3e55ddda8e8a8ad9b24a4d6f3949a6a0a516c3b8ad" [label="copy{src=/ssl/*.pem, dest=/etc/letsencrypt/live/hook.io/}" shape="note"];
  "sha256:b58ef62997305c43fd13df4007d5fdcf403089e8a46a7d44a13093d64d3b91a0" [label="sha256:b58ef62997305c43fd13df4007d5fdcf403089e8a46a7d44a13093d64d3b91a0" shape="plaintext"];
  "sha256:d1800fe2850657bf17f308707f027e91516fbaa3c0d89a0803311ceeb61fa674" -> "sha256:344e894d370e70af46f31c51adaa6d1a85174959eda5bcee82ed6375e423a414" [label=""];
  "sha256:344e894d370e70af46f31c51adaa6d1a85174959eda5bcee82ed6375e423a414" -> "sha256:d508610c206564282a8cfcc98fef51c8a2222d81d2ec9f6d5ad6ac1a045475b0" [label=""];
  "sha256:d508610c206564282a8cfcc98fef51c8a2222d81d2ec9f6d5ad6ac1a045475b0" -> "sha256:bec56c1fabcba7b20e0b03ef980a7219d4a2eb3d42cd014de979ffe9f80635bb" [label=""];
  "sha256:bec56c1fabcba7b20e0b03ef980a7219d4a2eb3d42cd014de979ffe9f80635bb" -> "sha256:2c2ce929b13cba7cc10e05ef92711bb88b14a08d94f3d5a0e5f9454af030716d" [label=""];
  "sha256:f84500f37ae63e777a8712460b37b50850e2b38d3e4a9a61cfd6043ba5ea33f3" -> "sha256:2c2ce929b13cba7cc10e05ef92711bb88b14a08d94f3d5a0e5f9454af030716d" [label=""];
  "sha256:2c2ce929b13cba7cc10e05ef92711bb88b14a08d94f3d5a0e5f9454af030716d" -> "sha256:cac7ae35b3a7070d02b85bea8c9d3825becb5660b57017d17cbeabcecc08cd1c" [label=""];
  "sha256:cac7ae35b3a7070d02b85bea8c9d3825becb5660b57017d17cbeabcecc08cd1c" -> "sha256:a3a3b0437561ab95ddd72d5c5beb4f7d639f2acdc65b656e67456d32969ae0d8" [label=""];
  "sha256:a3a3b0437561ab95ddd72d5c5beb4f7d639f2acdc65b656e67456d32969ae0d8" -> "sha256:bcf6669e69cd884292ed13165a9424055c81380b298d4a76d135d9587a30d7ce" [label=""];
  "sha256:bcf6669e69cd884292ed13165a9424055c81380b298d4a76d135d9587a30d7ce" -> "sha256:89703d7499b2bbab523f54cea8e090db030d92b35ba5519c174193fd305fa2ae" [label=""];
  "sha256:89703d7499b2bbab523f54cea8e090db030d92b35ba5519c174193fd305fa2ae" -> "sha256:531bfac9f231a52be6e1cf045718723e7dfdf839fbbde06a1f2deb86e610b569" [label=""];
  "sha256:531bfac9f231a52be6e1cf045718723e7dfdf839fbbde06a1f2deb86e610b569" -> "sha256:54fccfbde18af2e2634c04b8cfeb427105c3f4f08130a6519f3d37594ea110c3" [label=""];
  "sha256:f84500f37ae63e777a8712460b37b50850e2b38d3e4a9a61cfd6043ba5ea33f3" -> "sha256:54fccfbde18af2e2634c04b8cfeb427105c3f4f08130a6519f3d37594ea110c3" [label=""];
  "sha256:54fccfbde18af2e2634c04b8cfeb427105c3f4f08130a6519f3d37594ea110c3" -> "sha256:05ab2f12791e48e9bd35abae6f4ea7c9a8ce122918d850c8df9605cde2116a30" [label=""];
  "sha256:05ab2f12791e48e9bd35abae6f4ea7c9a8ce122918d850c8df9605cde2116a30" -> "sha256:8f1adfe305816ac175411c3e55ddda8e8a8ad9b24a4d6f3949a6a0a516c3b8ad" [label=""];
  "sha256:f84500f37ae63e777a8712460b37b50850e2b38d3e4a9a61cfd6043ba5ea33f3" -> "sha256:8f1adfe305816ac175411c3e55ddda8e8a8ad9b24a4d6f3949a6a0a516c3b8ad" [label=""];
  "sha256:8f1adfe305816ac175411c3e55ddda8e8a8ad9b24a4d6f3949a6a0a516c3b8ad" -> "sha256:b58ef62997305c43fd13df4007d5fdcf403089e8a46a7d44a13093d64d3b91a0" [label=""];
}

