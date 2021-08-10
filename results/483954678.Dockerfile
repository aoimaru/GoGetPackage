[app/sources/483954678.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:2e5c1f735911a4d5ceb24f0691ea116e860d2d286f3189b9348f1ea73bc758bb" [label="/bin/sh -c apt-get update &&     apt-get install -y     autoconf     automake     build-essential     git     libglib2.0-dev     libpixman-1-dev     zlib1g-dev     iputils-ping     iproute2      ebtables     dnsmasq" shape="box"];
  "sha256:39c3a7c0289d21f0f8955a104c2bd2fc30dbfc8a33af7bdc16cf04baf2947cba" [label="/bin/sh -c git clone -b pin-threads https://github.com/SESA/qemu.git /qemu" shape="box"];
  "sha256:12e5148c083346967488bf7ee1fbf5788d7ff5d2ee627c25faa6cfe5944ea866" [label="mkdir{path=/qemu}" shape="note"];
  "sha256:90eeea085d64b485059f1c2f485e5058bfe89d39416f848ba63352028a51126d" [label="/bin/sh -c ./configure --target-list=x86_64-softmmu --enable-vhost-net --enable-kvm" shape="box"];
  "sha256:b76aefe769729943ca2b03f04511c9ef6317fe1055249b9b8e4d5f5144511e58" [label="/bin/sh -c make -j" shape="box"];
  "sha256:6abb0250edd3553e43f372aa802f2caf3773ab6e20bda8f9bafd409053aa34cb" [label="/bin/sh -c make install" shape="box"];
  "sha256:87960a91918b0cea2831b533ab2bd066926c59f18a572e65d9e6c33e445185e8" [label="/bin/sh -c make clean" shape="box"];
  "sha256:bf4aae4f8ce9bda56d66984647cc47bbaa844da5dc98fde9709cdc267a760719" [label="/bin/sh -c rm -rf /qemu" shape="box"];
  "sha256:21ebd00c44761409dc1140f6a374ad2407bdf0cc6de366693e0eab924eb8ce25" [label="local://context" shape="ellipse"];
  "sha256:41357f0aaf4fd58a82d8691480be9f12e8e5488b53ddd37c0f0278e7ba62515d" [label="copy{src=/start.sh, dest=/root/start.sh}" shape="note"];
  "sha256:ede427ef6ec09d1d5898589f671028cba5fc4e17976a1232ddd599b7abd11121" [label="copy{src=/launch.sh, dest=/root/launch.sh}" shape="note"];
  "sha256:af2311a9b774983009d4a00ec537a5d49d6e32ad8e1abc1d457c9806f0878382" [label="/bin/sh -c apt-get update && apt-get install -y gdb" shape="box"];
  "sha256:b3d7209c066bc270d438dbb1f9a0383500b608499e05f070b86d66b7a05a7dc1" [label="sha256:b3d7209c066bc270d438dbb1f9a0383500b608499e05f070b86d66b7a05a7dc1" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:2e5c1f735911a4d5ceb24f0691ea116e860d2d286f3189b9348f1ea73bc758bb" [label=""];
  "sha256:2e5c1f735911a4d5ceb24f0691ea116e860d2d286f3189b9348f1ea73bc758bb" -> "sha256:39c3a7c0289d21f0f8955a104c2bd2fc30dbfc8a33af7bdc16cf04baf2947cba" [label=""];
  "sha256:39c3a7c0289d21f0f8955a104c2bd2fc30dbfc8a33af7bdc16cf04baf2947cba" -> "sha256:12e5148c083346967488bf7ee1fbf5788d7ff5d2ee627c25faa6cfe5944ea866" [label=""];
  "sha256:12e5148c083346967488bf7ee1fbf5788d7ff5d2ee627c25faa6cfe5944ea866" -> "sha256:90eeea085d64b485059f1c2f485e5058bfe89d39416f848ba63352028a51126d" [label=""];
  "sha256:90eeea085d64b485059f1c2f485e5058bfe89d39416f848ba63352028a51126d" -> "sha256:b76aefe769729943ca2b03f04511c9ef6317fe1055249b9b8e4d5f5144511e58" [label=""];
  "sha256:b76aefe769729943ca2b03f04511c9ef6317fe1055249b9b8e4d5f5144511e58" -> "sha256:6abb0250edd3553e43f372aa802f2caf3773ab6e20bda8f9bafd409053aa34cb" [label=""];
  "sha256:6abb0250edd3553e43f372aa802f2caf3773ab6e20bda8f9bafd409053aa34cb" -> "sha256:87960a91918b0cea2831b533ab2bd066926c59f18a572e65d9e6c33e445185e8" [label=""];
  "sha256:87960a91918b0cea2831b533ab2bd066926c59f18a572e65d9e6c33e445185e8" -> "sha256:bf4aae4f8ce9bda56d66984647cc47bbaa844da5dc98fde9709cdc267a760719" [label=""];
  "sha256:bf4aae4f8ce9bda56d66984647cc47bbaa844da5dc98fde9709cdc267a760719" -> "sha256:41357f0aaf4fd58a82d8691480be9f12e8e5488b53ddd37c0f0278e7ba62515d" [label=""];
  "sha256:21ebd00c44761409dc1140f6a374ad2407bdf0cc6de366693e0eab924eb8ce25" -> "sha256:41357f0aaf4fd58a82d8691480be9f12e8e5488b53ddd37c0f0278e7ba62515d" [label=""];
  "sha256:41357f0aaf4fd58a82d8691480be9f12e8e5488b53ddd37c0f0278e7ba62515d" -> "sha256:ede427ef6ec09d1d5898589f671028cba5fc4e17976a1232ddd599b7abd11121" [label=""];
  "sha256:21ebd00c44761409dc1140f6a374ad2407bdf0cc6de366693e0eab924eb8ce25" -> "sha256:ede427ef6ec09d1d5898589f671028cba5fc4e17976a1232ddd599b7abd11121" [label=""];
  "sha256:ede427ef6ec09d1d5898589f671028cba5fc4e17976a1232ddd599b7abd11121" -> "sha256:af2311a9b774983009d4a00ec537a5d49d6e32ad8e1abc1d457c9806f0878382" [label=""];
  "sha256:af2311a9b774983009d4a00ec537a5d49d6e32ad8e1abc1d457c9806f0878382" -> "sha256:b3d7209c066bc270d438dbb1f9a0383500b608499e05f070b86d66b7a05a7dc1" [label=""];
}

