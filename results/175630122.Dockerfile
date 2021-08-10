[app/sources/175630122.Dockerfile]
digraph {
  "sha256:d5aa1c728e8fbcbd7edee2bc6aea30a6fec6d9491b0ac4b840315312de4a276c" [label="docker-image://docker.io/scaleway/ubuntu:armhf-xenial@sha256:cb57abe8e817392aeb2ccef298dc4f0d8655158b0a97ed7adb96d08471aa3acb" shape="ellipse"];
  "sha256:6e10bc1ac8a583f9b0a5e6d56db9eb6688083a8e00b81de7169b8c5b3a1876b0" [label="/bin/sh -c /usr/local/sbin/scw-builder-enter" shape="box"];
  "sha256:4b8ef4a43770130318e655cf185e86d3bd550fb0b3b6da870d24b8c595eb3ae3" [label="/bin/sh -c apt-get update           && apt-get upgrade -y       && apt-get install -y         curl                        qemu                        dropbear                    kexec-tools                 nfs-common                  ntpdate                     parted                      btrfs-tools                 dosfstools                  wget                        gdisk                       busybox-static              findutils                 && apt-get clean" shape="box"];
  "sha256:1b1fb9fcdb50219623a04cac4623cad3d2f8d5fd9de57a01b424d3f46a3be274" [label="/bin/sh -c wget -O /usr/bin/scw-metadata                                                                                                 https://raw.githubusercontent.com/scaleway/image-tools/${IMAGE_TOOLS_REV}/skeleton-common/usr/local/bin/scw-metadata   && chmod +x /usr/bin/scw-metadata" shape="box"];
  "sha256:9113c3f2e612d40603d8ea462a9378df9fe553f210a0f75b114a065e3d978534" [label="/bin/sh -c mkdir -p /usr/sbin                                                                                                  && wget -O /usr/sbin/xnbd-client                                                                                            https://github.com/multiarch/build-xnbd-client-static/releases/download/v1.0/armv7l-xnbd-client-static-stripped   && chmod +x /usr/sbin/xnbd-client                                                                                      && ln -s xnbd-client /usr/sbin/@xnbd-client" shape="box"];
  "sha256:277d2d7d150facb5dcb5491fba34123ba03996dddb45627f56f32dd970fc75b9" [label="local://context" shape="ellipse"];
  "sha256:1ea61c1dc3081a49fba07e23e8c66d8aef99165f45df5c7cf65f03bf0cf285a1" [label="copy{src=/tmp/scw-update-server-state, dest=/usr/bin/scw-update-server-state}" shape="note"];
  "sha256:b5cf4537cdc335b386276f0ddffc963e91b5bf9f1fe86f97d756c50e3c1ab7d0" [label="copy{src=/tmp/ldd-rec.pl, dest=/usr/local/bin/}" shape="note"];
  "sha256:324263289b021f95c9286e9928e631b8f693cedf787f3df92657963b93ad5202" [label="copy{src=/tmp/export-assets, dest=/usr/local/bin/}" shape="note"];
  "sha256:8422138c3b75a68c506695f0efea91079b11efaa4c3de1761a4b3110ad504668" [label="/bin/sh -c export-assets       /bin/busybox       /bin/mkfs.btrfs       /bin/sync       /bin/tar       /lib/arm-linux-gnueabihf/ld-linux-armhf.so.3       /lib/arm-linux-gnueabihf/libc.so.6       /lib/arm-linux-gnueabihf/libnss_dns.so.2       /lib/arm-linux-gnueabihf/libnss_files.so.2       /lib/arm-linux-gnueabihf/libresolv.so.2       /bin/blkid       /sbin/kexec       /sbin/mkfs.btrfs       /sbin/mkfs.ext4       /sbin/mkfs.fat       /sbin/parted       /sbin/sfdisk       /sbin/sgdisk       /usr/bin/dropbearkey       /usr/bin/file       /usr/bin/find       /usr/bin/qemu-img       /usr/bin/scw-metadata       /usr/bin/partx       /usr/bin/uuidgen       /usr/lib/klibc/bin/ipconfig       /usr/sbin/@xnbd-client       /usr/sbin/chroot       /usr/sbin/dropbear       /usr/sbin/ntpdate       /usr/sbin/xnbd-client       /usr/bin/scw-update-server-state" shape="box"];
  "sha256:dbecb19c57d20d825317c4e6713c18017b3adbd44d74f139acf3992c4d5eabee" [label="sha256:dbecb19c57d20d825317c4e6713c18017b3adbd44d74f139acf3992c4d5eabee" shape="plaintext"];
  "sha256:d5aa1c728e8fbcbd7edee2bc6aea30a6fec6d9491b0ac4b840315312de4a276c" -> "sha256:6e10bc1ac8a583f9b0a5e6d56db9eb6688083a8e00b81de7169b8c5b3a1876b0" [label=""];
  "sha256:6e10bc1ac8a583f9b0a5e6d56db9eb6688083a8e00b81de7169b8c5b3a1876b0" -> "sha256:4b8ef4a43770130318e655cf185e86d3bd550fb0b3b6da870d24b8c595eb3ae3" [label=""];
  "sha256:4b8ef4a43770130318e655cf185e86d3bd550fb0b3b6da870d24b8c595eb3ae3" -> "sha256:1b1fb9fcdb50219623a04cac4623cad3d2f8d5fd9de57a01b424d3f46a3be274" [label=""];
  "sha256:1b1fb9fcdb50219623a04cac4623cad3d2f8d5fd9de57a01b424d3f46a3be274" -> "sha256:9113c3f2e612d40603d8ea462a9378df9fe553f210a0f75b114a065e3d978534" [label=""];
  "sha256:9113c3f2e612d40603d8ea462a9378df9fe553f210a0f75b114a065e3d978534" -> "sha256:1ea61c1dc3081a49fba07e23e8c66d8aef99165f45df5c7cf65f03bf0cf285a1" [label=""];
  "sha256:277d2d7d150facb5dcb5491fba34123ba03996dddb45627f56f32dd970fc75b9" -> "sha256:1ea61c1dc3081a49fba07e23e8c66d8aef99165f45df5c7cf65f03bf0cf285a1" [label=""];
  "sha256:1ea61c1dc3081a49fba07e23e8c66d8aef99165f45df5c7cf65f03bf0cf285a1" -> "sha256:b5cf4537cdc335b386276f0ddffc963e91b5bf9f1fe86f97d756c50e3c1ab7d0" [label=""];
  "sha256:277d2d7d150facb5dcb5491fba34123ba03996dddb45627f56f32dd970fc75b9" -> "sha256:b5cf4537cdc335b386276f0ddffc963e91b5bf9f1fe86f97d756c50e3c1ab7d0" [label=""];
  "sha256:b5cf4537cdc335b386276f0ddffc963e91b5bf9f1fe86f97d756c50e3c1ab7d0" -> "sha256:324263289b021f95c9286e9928e631b8f693cedf787f3df92657963b93ad5202" [label=""];
  "sha256:277d2d7d150facb5dcb5491fba34123ba03996dddb45627f56f32dd970fc75b9" -> "sha256:324263289b021f95c9286e9928e631b8f693cedf787f3df92657963b93ad5202" [label=""];
  "sha256:324263289b021f95c9286e9928e631b8f693cedf787f3df92657963b93ad5202" -> "sha256:8422138c3b75a68c506695f0efea91079b11efaa4c3de1761a4b3110ad504668" [label=""];
  "sha256:8422138c3b75a68c506695f0efea91079b11efaa4c3de1761a4b3110ad504668" -> "sha256:dbecb19c57d20d825317c4e6713c18017b3adbd44d74f139acf3992c4d5eabee" [label=""];
}
