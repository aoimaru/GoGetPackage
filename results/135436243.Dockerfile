[app/sources/135436243.Dockerfile]
digraph {
  "sha256:d739ed2c150c3485b6edc2a8766b786615c4260c2d46c7c1d7bf18178abf8c68" [label="local://context" shape="ellipse"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:d94d13cab2455bb4d6f1266be3c0a89553fee0a2102c8598a64914deeba91acf" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:a9a3eec14d2cc1409d3ac21cb7bfc43e030223226f2de62e757a6e7c3d093d10" [label="/bin/sh -c apt-get install -qy\t\t\t\t\t\t\t\t\tfakeroot kernel-package xz-utils\t\t\t\t\t\tbc xorriso syslinux\t\t\t\t\t\t\t\tgit vim-tiny lib32ncurses5-dev" shape="box"];
  "sha256:e800585a249d04111c29f957c492249e6b418a484f7584c20a45c16fa6aee8ad" [label="copy{src=/linux-3.14.2.tar.xz, dest=/}" shape="note"];
  "sha256:84de693ee32ac6449f263c647194b7d9e707d0c595269132d6f2f077fe5a72e4" [label="copy{src=/kernel_config.patch, dest=/}" shape="note"];
  "sha256:243efdc0a6efdfac3f607e34567b32e406e601f0468b18acb46e911161d0a636" [label="mkdir{path=/linux-3.14.2}" shape="note"];
  "sha256:cb548fe3d3ba28fee5c0d045b516bc9645cf4d5a16dac8bc90e7357bd3daaeeb" [label="/bin/sh -c make defconfig" shape="box"];
  "sha256:dae23bb630a615539211ec707023e0240ef57b67ece50fcf4bc16b83a3c4fa70" [label="/bin/sh -c make" shape="box"];
  "sha256:fec99f0e611994c6e1ea46b5f2b22271dccd4c4aea85e9c7c4d0faf0afe8d20a" [label="copy{src=/busybox-1.22.1.tar.bz2, dest=/}" shape="note"];
  "sha256:44960a2b1e55eaab41630122531e20450c74237b82ba86e4b139f8ca9ae587ab" [label="mkdir{path=/busybox-1.22.1}" shape="note"];
  "sha256:b6f8f5ec7f102e41d02c661dfab33757e4584e914aac6ac536b13c7779cb0c18" [label="/bin/sh -c make defconfig ; echo \"STATIC=y >> .config\" >> .config; make ; make install" shape="box"];
  "sha256:c5d234c9b32371643bcf9ec371c548472994b8fd07be5e440f9a60ae079a561c" [label="/bin/sh -c cp -r _install /rootfs ; ls -la /rootfs/bin/busybox" shape="box"];
  "sha256:f5bfd3d5f9ebeaec096a08163a0c59795359a9b23b435ee984c9cb95ced9daa8" [label="mkdir{path=/rootfs}" shape="note"];
  "sha256:eab5ed2cb2e8bca6250a5b87d5877597b3155e63d7e5b38dcf0212473ca0b937" [label="/bin/sh -c mkdir dev proc sys tmp" shape="box"];
  "sha256:61990972090ac7eb6046eb2ecdc6d3f7bbf4eb55f987dbf0ed710fdf83983784" [label="/bin/sh -c mknod dev/console c 5 1" shape="box"];
  "sha256:1e70d40a6df3f438c6e237a3c3b3ebae5b334db673e22aa44e20baedc7b6fefb" [label="copy{src=/init, dest=/rootfs/sbin/init}" shape="note"];
  "sha256:c4de2908d12b691d17498e79efadd98d1d74168616fc96948ee95a5880a00f22" [label="copy{src=/isolinux.cfg, dest=/}" shape="note"];
  "sha256:e3c0e586ad2bbaa433250d9c6d7150010f057eb96952a6ab87af28aa79a6eb7b" [label="/bin/sh -c cp  /busybox-1.22.1/_install/bin/busybox /rootfs/linuxrc" shape="box"];
  "sha256:9c8c8b872eeb5b8b5da403237565fbd30241561d1d92c344400ab5482e9ea4a4" [label="/bin/sh -c mkdir -p /tmp/iso/boot" shape="box"];
  "sha256:7595843fa14c7f1511ba239483fadb0a1d3ce0ccaf7633f67fdb2b3a56381ea4" [label="/bin/sh -c find | cpio -o -H newc | gzip > /tmp/iso/boot/initrd.gz" shape="box"];
  "sha256:f168ca4b409d846bfa55755af101475e966272ad3632f5d68a0f1b2372d5a2f1" [label="/bin/sh -c cp -v /linux-3.14.2/arch/x86_64/boot/bzImage /tmp/iso/boot/vmlinuz64" shape="box"];
  "sha256:79633a1b3b322b1c3474ebb7964632636e1df0e0510765b95456531475274796" [label="/bin/sh -c cp /usr/lib/syslinux/isolinux.bin /tmp/iso/boot/" shape="box"];
  "sha256:37f7b7539a40e1613edb6ff5305f1fdd06a0baed66b9488d53a1631b55adfadf" [label="/bin/sh -c cp /isolinux.cfg /tmp/iso/boot/" shape="box"];
  "sha256:0db9e95ca0d5bda6f05fea45235d4293ddd0897677e6f106e97f89ee04ba7720" [label="/bin/sh -c cp  /busybox-1.22.1/_install/bin/busybox /tmp/iso/linuxrc" shape="box"];
  "sha256:b727d59bc3a612a71e23db8d01f908d2237b7c0ab9e31c4200c99eb903ce7263" [label="/bin/sh -c echo \"SVEN\" >> /tmp/iso/version" shape="box"];
  "sha256:5cd88e52170b39205ad283a1707c6ea98a994a30e015a5cf1b10e6863d79ea25" [label="/bin/sh -c xorriso -as mkisofs \t\t-l -J -R -V sven -no-emul-boot -boot-load-size 4 -boot-info-table \t\t-b boot/isolinux.bin -c boot/boot.cat \t\t-isohybrid-mbr /usr/lib/syslinux/isohdpfx.bin \t\t-o /sven.iso /tmp/iso" shape="box"];
  "sha256:4e2499e2c4eaac3506289abea5dd444c184c04dc5fa2bbfe49798275acdb8f33" [label="sha256:4e2499e2c4eaac3506289abea5dd444c184c04dc5fa2bbfe49798275acdb8f33" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:d94d13cab2455bb4d6f1266be3c0a89553fee0a2102c8598a64914deeba91acf" [label=""];
  "sha256:d94d13cab2455bb4d6f1266be3c0a89553fee0a2102c8598a64914deeba91acf" -> "sha256:a9a3eec14d2cc1409d3ac21cb7bfc43e030223226f2de62e757a6e7c3d093d10" [label=""];
  "sha256:a9a3eec14d2cc1409d3ac21cb7bfc43e030223226f2de62e757a6e7c3d093d10" -> "sha256:e800585a249d04111c29f957c492249e6b418a484f7584c20a45c16fa6aee8ad" [label=""];
  "sha256:d739ed2c150c3485b6edc2a8766b786615c4260c2d46c7c1d7bf18178abf8c68" -> "sha256:e800585a249d04111c29f957c492249e6b418a484f7584c20a45c16fa6aee8ad" [label=""];
  "sha256:e800585a249d04111c29f957c492249e6b418a484f7584c20a45c16fa6aee8ad" -> "sha256:84de693ee32ac6449f263c647194b7d9e707d0c595269132d6f2f077fe5a72e4" [label=""];
  "sha256:d739ed2c150c3485b6edc2a8766b786615c4260c2d46c7c1d7bf18178abf8c68" -> "sha256:84de693ee32ac6449f263c647194b7d9e707d0c595269132d6f2f077fe5a72e4" [label=""];
  "sha256:84de693ee32ac6449f263c647194b7d9e707d0c595269132d6f2f077fe5a72e4" -> "sha256:243efdc0a6efdfac3f607e34567b32e406e601f0468b18acb46e911161d0a636" [label=""];
  "sha256:243efdc0a6efdfac3f607e34567b32e406e601f0468b18acb46e911161d0a636" -> "sha256:cb548fe3d3ba28fee5c0d045b516bc9645cf4d5a16dac8bc90e7357bd3daaeeb" [label=""];
  "sha256:cb548fe3d3ba28fee5c0d045b516bc9645cf4d5a16dac8bc90e7357bd3daaeeb" -> "sha256:dae23bb630a615539211ec707023e0240ef57b67ece50fcf4bc16b83a3c4fa70" [label=""];
  "sha256:dae23bb630a615539211ec707023e0240ef57b67ece50fcf4bc16b83a3c4fa70" -> "sha256:fec99f0e611994c6e1ea46b5f2b22271dccd4c4aea85e9c7c4d0faf0afe8d20a" [label=""];
  "sha256:d739ed2c150c3485b6edc2a8766b786615c4260c2d46c7c1d7bf18178abf8c68" -> "sha256:fec99f0e611994c6e1ea46b5f2b22271dccd4c4aea85e9c7c4d0faf0afe8d20a" [label=""];
  "sha256:fec99f0e611994c6e1ea46b5f2b22271dccd4c4aea85e9c7c4d0faf0afe8d20a" -> "sha256:44960a2b1e55eaab41630122531e20450c74237b82ba86e4b139f8ca9ae587ab" [label=""];
  "sha256:44960a2b1e55eaab41630122531e20450c74237b82ba86e4b139f8ca9ae587ab" -> "sha256:b6f8f5ec7f102e41d02c661dfab33757e4584e914aac6ac536b13c7779cb0c18" [label=""];
  "sha256:b6f8f5ec7f102e41d02c661dfab33757e4584e914aac6ac536b13c7779cb0c18" -> "sha256:c5d234c9b32371643bcf9ec371c548472994b8fd07be5e440f9a60ae079a561c" [label=""];
  "sha256:c5d234c9b32371643bcf9ec371c548472994b8fd07be5e440f9a60ae079a561c" -> "sha256:f5bfd3d5f9ebeaec096a08163a0c59795359a9b23b435ee984c9cb95ced9daa8" [label=""];
  "sha256:f5bfd3d5f9ebeaec096a08163a0c59795359a9b23b435ee984c9cb95ced9daa8" -> "sha256:eab5ed2cb2e8bca6250a5b87d5877597b3155e63d7e5b38dcf0212473ca0b937" [label=""];
  "sha256:eab5ed2cb2e8bca6250a5b87d5877597b3155e63d7e5b38dcf0212473ca0b937" -> "sha256:61990972090ac7eb6046eb2ecdc6d3f7bbf4eb55f987dbf0ed710fdf83983784" [label=""];
  "sha256:61990972090ac7eb6046eb2ecdc6d3f7bbf4eb55f987dbf0ed710fdf83983784" -> "sha256:1e70d40a6df3f438c6e237a3c3b3ebae5b334db673e22aa44e20baedc7b6fefb" [label=""];
  "sha256:d739ed2c150c3485b6edc2a8766b786615c4260c2d46c7c1d7bf18178abf8c68" -> "sha256:1e70d40a6df3f438c6e237a3c3b3ebae5b334db673e22aa44e20baedc7b6fefb" [label=""];
  "sha256:1e70d40a6df3f438c6e237a3c3b3ebae5b334db673e22aa44e20baedc7b6fefb" -> "sha256:c4de2908d12b691d17498e79efadd98d1d74168616fc96948ee95a5880a00f22" [label=""];
  "sha256:d739ed2c150c3485b6edc2a8766b786615c4260c2d46c7c1d7bf18178abf8c68" -> "sha256:c4de2908d12b691d17498e79efadd98d1d74168616fc96948ee95a5880a00f22" [label=""];
  "sha256:c4de2908d12b691d17498e79efadd98d1d74168616fc96948ee95a5880a00f22" -> "sha256:e3c0e586ad2bbaa433250d9c6d7150010f057eb96952a6ab87af28aa79a6eb7b" [label=""];
  "sha256:e3c0e586ad2bbaa433250d9c6d7150010f057eb96952a6ab87af28aa79a6eb7b" -> "sha256:9c8c8b872eeb5b8b5da403237565fbd30241561d1d92c344400ab5482e9ea4a4" [label=""];
  "sha256:9c8c8b872eeb5b8b5da403237565fbd30241561d1d92c344400ab5482e9ea4a4" -> "sha256:7595843fa14c7f1511ba239483fadb0a1d3ce0ccaf7633f67fdb2b3a56381ea4" [label=""];
  "sha256:7595843fa14c7f1511ba239483fadb0a1d3ce0ccaf7633f67fdb2b3a56381ea4" -> "sha256:f168ca4b409d846bfa55755af101475e966272ad3632f5d68a0f1b2372d5a2f1" [label=""];
  "sha256:f168ca4b409d846bfa55755af101475e966272ad3632f5d68a0f1b2372d5a2f1" -> "sha256:79633a1b3b322b1c3474ebb7964632636e1df0e0510765b95456531475274796" [label=""];
  "sha256:79633a1b3b322b1c3474ebb7964632636e1df0e0510765b95456531475274796" -> "sha256:37f7b7539a40e1613edb6ff5305f1fdd06a0baed66b9488d53a1631b55adfadf" [label=""];
  "sha256:37f7b7539a40e1613edb6ff5305f1fdd06a0baed66b9488d53a1631b55adfadf" -> "sha256:0db9e95ca0d5bda6f05fea45235d4293ddd0897677e6f106e97f89ee04ba7720" [label=""];
  "sha256:0db9e95ca0d5bda6f05fea45235d4293ddd0897677e6f106e97f89ee04ba7720" -> "sha256:b727d59bc3a612a71e23db8d01f908d2237b7c0ab9e31c4200c99eb903ce7263" [label=""];
  "sha256:b727d59bc3a612a71e23db8d01f908d2237b7c0ab9e31c4200c99eb903ce7263" -> "sha256:5cd88e52170b39205ad283a1707c6ea98a994a30e015a5cf1b10e6863d79ea25" [label=""];
  "sha256:5cd88e52170b39205ad283a1707c6ea98a994a30e015a5cf1b10e6863d79ea25" -> "sha256:4e2499e2c4eaac3506289abea5dd444c184c04dc5fa2bbfe49798275acdb8f33" [label=""];
}

