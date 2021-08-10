[app/sources/314244742.Dockerfile]
digraph {
  "sha256:2c909f468f83d04b9c03fa7db37fe14e4a96447a239ecf019fbab83823b677a8" [label="docker-image://docker.io/uroottest/test-image-amd64:v3.2.4" shape="ellipse"];
  "sha256:dd1673eba391b9b7918d150b198845079beed38333a45622c0bde9b7f13885a6" [label="/bin/sh -c sudo apt-get update &&                          \tsudo apt-get install -y --no-install-recommends \t\t`# tools for creating bootable disk images` \t\tgdisk \t\te2fsprogs \t\tqemu-utils \t\t&& \tsudo rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:6f59ee6caacd7f84893dc644951d4d1b8f595ab5c8eb5c661a1a739abc7afae0" [label="/bin/sh -c go get github.com/u-root/u-root" shape="box"];
  "sha256:19e85cdeccb6806400c0465de186f8b911d98d0edff59305c1c015a4c2717e3d" [label="local://context" shape="ellipse"];
  "sha256:73ae1b0f73da2e68c3dcd90749450018331277feb1654f9b33068ad78735aebf" [label="copy{src=/linux-config, dest=/}" shape="note"];
  "sha256:eb8c3cd5f1262e72c7f0c928dd9ffb98d8ed578b54a0024377ff41de68441c6b" [label="/bin/sh -c set -x; \tgit clone -q --depth 1 -b v4.19 https://github.com/torvalds/linux.git && \tmv linux-config linux/.config && \t(cd linux/ && exec make -j$(nproc)) && \tcp linux/arch/x86/boot/bzImage bzImage && \trm -r linux/" shape="box"];
  "sha256:38e40ebf5f0bb7bfb4559a95ae1a4d8e025ce06fa641ec880ac8a5e348955b0f" [label="/bin/sh -c set -x; \tmkdir rootfs && \tcp bzImage rootfs/ && \tu-root -build=bb -o rootfs/ramfs.cpio -initcmd shutdown  && \txz --check=crc32 --lzma2=dict=512KiB rootfs/ramfs.cpio && \t{ \t\techo menuentry; \t\techo linux bzImage; \t\techo initrd ramfs.cpio.xz; \t} > rootfs/grub2.cfg && \tdu -a rootfs/ && \tqemu-img create -f raw disk.img 20m && \tsgdisk --clear --new 1::-0 --typecode=1:8300 --change-name=1:'Linux root filesystem' \t\tdisk.img && \tmkfs.ext2 -F -E 'offset=1048576' -d rootfs/ disk.img 18m && \tgdisk -l disk.img && \tqemu-img convert -f raw -O qcow2 disk.img disk.qcow2 && \tmv disk.qcow2 disk.img && \trm -r rootfs/" shape="box"];
  "sha256:34ce83b0ab3a7211ff58c265a8377fbd4547aaeeb52a8be20c1004321e3401c2" [label="sha256:34ce83b0ab3a7211ff58c265a8377fbd4547aaeeb52a8be20c1004321e3401c2" shape="plaintext"];
  "sha256:2c909f468f83d04b9c03fa7db37fe14e4a96447a239ecf019fbab83823b677a8" -> "sha256:dd1673eba391b9b7918d150b198845079beed38333a45622c0bde9b7f13885a6" [label=""];
  "sha256:dd1673eba391b9b7918d150b198845079beed38333a45622c0bde9b7f13885a6" -> "sha256:6f59ee6caacd7f84893dc644951d4d1b8f595ab5c8eb5c661a1a739abc7afae0" [label=""];
  "sha256:6f59ee6caacd7f84893dc644951d4d1b8f595ab5c8eb5c661a1a739abc7afae0" -> "sha256:73ae1b0f73da2e68c3dcd90749450018331277feb1654f9b33068ad78735aebf" [label=""];
  "sha256:19e85cdeccb6806400c0465de186f8b911d98d0edff59305c1c015a4c2717e3d" -> "sha256:73ae1b0f73da2e68c3dcd90749450018331277feb1654f9b33068ad78735aebf" [label=""];
  "sha256:73ae1b0f73da2e68c3dcd90749450018331277feb1654f9b33068ad78735aebf" -> "sha256:eb8c3cd5f1262e72c7f0c928dd9ffb98d8ed578b54a0024377ff41de68441c6b" [label=""];
  "sha256:eb8c3cd5f1262e72c7f0c928dd9ffb98d8ed578b54a0024377ff41de68441c6b" -> "sha256:38e40ebf5f0bb7bfb4559a95ae1a4d8e025ce06fa641ec880ac8a5e348955b0f" [label=""];
  "sha256:38e40ebf5f0bb7bfb4559a95ae1a4d8e025ce06fa641ec880ac8a5e348955b0f" -> "sha256:34ce83b0ab3a7211ff58c265a8377fbd4547aaeeb52a8be20c1004321e3401c2" [label=""];
}

