[app/sources/254830971.Dockerfile]
digraph {
  "sha256:4f4aa47c69d6e85047c373d6f437b7d89f16f6cebdb34a26fdeb3f812a4e4821" [label="docker-image://docker.io/snapcraft/xenial-amd64:2.37" shape="ellipse"];
  "sha256:c09a82a36abaa213a9f5116f1b7d37b5ec4825ae7b4773e8217cf422eff7df0f" [label="/bin/sh -c apt-get install -y --no-install-recommends         devscripts         equivs         git" shape="box"];
  "sha256:4d4be0796e99ed72c36be532b041d2ccd483c9afd3eba56fffc49582b6f963a7" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:4d4f2e074ec56770196b819168209571f10889e52d488d7860b4b4bf12f13e53" [label="local://context" shape="ellipse"];
  "sha256:b31aad6ecf92692ca985d49e6b688917df074dfbfa14d263b87df519e484be55" [label="copy{src=/disable-sparse-check.patch, dest=/tmp}" shape="note"];
  "sha256:fb5967c155143e0f3644f60905a46b909ee94be6fa2651f544a0d264717296d3" [label="/bin/sh -c git clone --depth 1 --branch ${UBUNTUIMAGE_VERSION} https://github.com/CanonicalLtd/ubuntu-image  && cd ubuntu-image  && patch -p1 < /tmp/disable-sparse-check.patch  && mk-build-deps debian/control -i --tool 'apt-get -y --no-install-recommends'  && dpkg-buildpackage -us -uc  && apt-get install -y ../*.deb  && mkdir -p /snap/bin  && ln -s /usr/bin/ubuntu-image /snap/bin/ubuntu-image" shape="box"];
  "sha256:f1ab3d0ad91bef8ea62fc6f030c72fb98f060c70defca405b656e6460759734f" [label="/bin/sh -c mknod /dev/loop0 b 7 0" shape="box"];
  "sha256:f26c6ea405e1564362aa42dd5aa7154074c961e8154bbfcdf202938931c6f87f" [label="/bin/sh -c echo \"ALL ALL=NOPASSWD: /snap/bin/ubuntu-image, /bin/mount, /bin/umount, /bin/cp\" >> /etc/sudoers.d/ubuntu-image  && chmod 0440 /etc/sudoers.d/ubuntu-image" shape="box"];
  "sha256:9c605a3d82e54ac60a6c0f796f275e45e72ed31df6e7c7366a6e049b467f42fd" [label="/bin/sh -c apt-get install -y build-essential u-boot-tools lzop debootstrap     gcc-aarch64-linux-gnu     gcc-arm-linux-gnueabihf     gcc-4.8     gcc-4.8-arm-linux-gnueabihf     device-tree-compiler     bc" shape="box"];
  "sha256:7485f3d2a80ad6e1bc5965188d167317c0d048aa7bbdebe68a53c8d87fd87ce4" [label="/bin/sh -c update-alternatives --install /usr/bin/gcc gcc  /usr/bin/gcc-5 50  && update-alternatives --install /usr/bin/arm-linux-gnueabihf-gcc arm-linux-gnueabihf-gcc /usr/bin/arm-linux-gnueabihf-gcc-5 50" shape="box"];
  "sha256:1437ff2f12212fde505e8d97941055dffb0e4fa834cc71c1b7b16d2ba86163c5" [label="/bin/sh -c update-alternatives --install /usr/bin/gcc gcc  /usr/bin/gcc-4.8 100  && update-alternatives --install /usr/bin/arm-linux-gnueabihf-gcc arm-linux-gnueabihf-gcc /usr/bin/arm-linux-gnueabihf-gcc-4.8 100" shape="box"];
  "sha256:80b4679936566b9c0e74bf80e94721a7434b4b9403b3108c530d39071ee8ada6" [label="/bin/sh -c dpkg --add-architecture i386 && apt-get update && apt-get install -y libc6:i386" shape="box"];
  "sha256:7c2bce3296a7b1eb6ccbe32742c0552c2425ab4ddf9d03934f63e07d5b5dac1c" [label="/bin/sh -c apt-get remove --purge -y devscripts equivs" shape="box"];
  "sha256:7daffbd116d8ca4d64ff43358e03dcb494dcce86b4a70100b336b41d6af806ac" [label="/bin/sh -c apt-get autoremove -y" shape="box"];
  "sha256:90398ef8a10ed64d64ac8d8ca218b8208ebb274646ad51de9cf2ed876d4cbd84" [label="/bin/sh -c apt-get clean -y" shape="box"];
  "sha256:0eece36176962fc60576f7d7f9dbd25ef2f408d0f583d34417db9935db81cb4b" [label="/bin/sh -c rm -rf /tmp/* /var/tmp/*" shape="box"];
  "sha256:5b504a0f345898978940709a50c0800edbfa44b27ab496d07050b994b860aa88" [label="mkdir{path=/build}" shape="note"];
  "sha256:7aa2a363b664ae6030d6cdaa88e419b93abb83d05016e6b2d784fbadb64763dd" [label="sha256:7aa2a363b664ae6030d6cdaa88e419b93abb83d05016e6b2d784fbadb64763dd" shape="plaintext"];
  "sha256:4f4aa47c69d6e85047c373d6f437b7d89f16f6cebdb34a26fdeb3f812a4e4821" -> "sha256:c09a82a36abaa213a9f5116f1b7d37b5ec4825ae7b4773e8217cf422eff7df0f" [label=""];
  "sha256:c09a82a36abaa213a9f5116f1b7d37b5ec4825ae7b4773e8217cf422eff7df0f" -> "sha256:4d4be0796e99ed72c36be532b041d2ccd483c9afd3eba56fffc49582b6f963a7" [label=""];
  "sha256:4d4be0796e99ed72c36be532b041d2ccd483c9afd3eba56fffc49582b6f963a7" -> "sha256:b31aad6ecf92692ca985d49e6b688917df074dfbfa14d263b87df519e484be55" [label=""];
  "sha256:4d4f2e074ec56770196b819168209571f10889e52d488d7860b4b4bf12f13e53" -> "sha256:b31aad6ecf92692ca985d49e6b688917df074dfbfa14d263b87df519e484be55" [label=""];
  "sha256:b31aad6ecf92692ca985d49e6b688917df074dfbfa14d263b87df519e484be55" -> "sha256:fb5967c155143e0f3644f60905a46b909ee94be6fa2651f544a0d264717296d3" [label=""];
  "sha256:fb5967c155143e0f3644f60905a46b909ee94be6fa2651f544a0d264717296d3" -> "sha256:f1ab3d0ad91bef8ea62fc6f030c72fb98f060c70defca405b656e6460759734f" [label=""];
  "sha256:f1ab3d0ad91bef8ea62fc6f030c72fb98f060c70defca405b656e6460759734f" -> "sha256:f26c6ea405e1564362aa42dd5aa7154074c961e8154bbfcdf202938931c6f87f" [label=""];
  "sha256:f26c6ea405e1564362aa42dd5aa7154074c961e8154bbfcdf202938931c6f87f" -> "sha256:9c605a3d82e54ac60a6c0f796f275e45e72ed31df6e7c7366a6e049b467f42fd" [label=""];
  "sha256:9c605a3d82e54ac60a6c0f796f275e45e72ed31df6e7c7366a6e049b467f42fd" -> "sha256:7485f3d2a80ad6e1bc5965188d167317c0d048aa7bbdebe68a53c8d87fd87ce4" [label=""];
  "sha256:7485f3d2a80ad6e1bc5965188d167317c0d048aa7bbdebe68a53c8d87fd87ce4" -> "sha256:1437ff2f12212fde505e8d97941055dffb0e4fa834cc71c1b7b16d2ba86163c5" [label=""];
  "sha256:1437ff2f12212fde505e8d97941055dffb0e4fa834cc71c1b7b16d2ba86163c5" -> "sha256:80b4679936566b9c0e74bf80e94721a7434b4b9403b3108c530d39071ee8ada6" [label=""];
  "sha256:80b4679936566b9c0e74bf80e94721a7434b4b9403b3108c530d39071ee8ada6" -> "sha256:7c2bce3296a7b1eb6ccbe32742c0552c2425ab4ddf9d03934f63e07d5b5dac1c" [label=""];
  "sha256:7c2bce3296a7b1eb6ccbe32742c0552c2425ab4ddf9d03934f63e07d5b5dac1c" -> "sha256:7daffbd116d8ca4d64ff43358e03dcb494dcce86b4a70100b336b41d6af806ac" [label=""];
  "sha256:7daffbd116d8ca4d64ff43358e03dcb494dcce86b4a70100b336b41d6af806ac" -> "sha256:90398ef8a10ed64d64ac8d8ca218b8208ebb274646ad51de9cf2ed876d4cbd84" [label=""];
  "sha256:90398ef8a10ed64d64ac8d8ca218b8208ebb274646ad51de9cf2ed876d4cbd84" -> "sha256:0eece36176962fc60576f7d7f9dbd25ef2f408d0f583d34417db9935db81cb4b" [label=""];
  "sha256:0eece36176962fc60576f7d7f9dbd25ef2f408d0f583d34417db9935db81cb4b" -> "sha256:5b504a0f345898978940709a50c0800edbfa44b27ab496d07050b994b860aa88" [label=""];
  "sha256:5b504a0f345898978940709a50c0800edbfa44b27ab496d07050b994b860aa88" -> "sha256:7aa2a363b664ae6030d6cdaa88e419b93abb83d05016e6b2d784fbadb64763dd" [label=""];
}

