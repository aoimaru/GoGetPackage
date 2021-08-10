[app/sources/292243348.Dockerfile]
digraph {
  "sha256:ea6c831f90b51f77bc815d6ebbcbb82bc3c87d0451dfcbcbf87741ebc4c1ac59" [label="local://context" shape="ellipse"];
  "sha256:b27e629b24be92713aae5e93bbc89c1279b9445d34c65cd9bacb753e380dd4d2" [label="copy{src=/busybox-x86_64, dest=/tmp/busybox}" shape="note"];
  "sha256:b5777226d36c6eebc94c0ef9f2bfa2aa01c42e24f97d0c7bf4d1ebc51b0102cd" [label="copy{src=/archlinux-bootstrap-2018.01.01-x86_64.tar.gz, dest=/}" shape="note"];
  "sha256:71063c76cc51e59c83d7d6475666e6d77a1dc425fe6b838912b0f057dfea9cee" [label="/tmp/busybox rm -rf /root.x86_64/etc/hosts /root.x86_64/etc/hostname /root.x86_64/etc/mtab /root.x86_64/etc/resolv.conf /root.x86_64/dev /root.x86_64/proc /root.x86_64/sys" shape="box"];
  "sha256:bf4bef91a2ace45a2b78a1aba98d039ae7f55f948a462020011d618609a99140" [label="/tmp/busybox sh -c /tmp/busybox cp -af /root.x86_64/* /" shape="box"];
  "sha256:96cde652d0582982cbb809d7e71a01282f64935c2d9c117d1909b290a5fe448a" [label="/bin/sh -c rm -rf /tmp/busybox /root.x86_64" shape="box"];
  "sha256:1a30864bda51b99c786c96e3f28106c02f757338da163b04f5e043718fd55f06" [label="/bin/sh -c pacman-key --init && pacman-key --populate archlinux" shape="box"];
  "sha256:b621abbfe5e59054b113b01d4ba2507c3513e59da12dc019ecddfc999e51adaa" [label="/bin/sh -c echo 'Server = http://mirrors.kernel.org/archlinux/$repo/os/$arch' > /etc/pacman.d/mirrorlist &&    echo 'Server = http://ftp.uni-hannover.de/archlinux/$repo/os/$arch' >> /etc/pacman.d/mirrorlist &&    echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen &&    echo 'LANG=\"en_US.UTF-8\"' > /etc/locale.conf" shape="box"];
  "sha256:1589a8ae41a4dffb4b1825fad90d2ddcb7bab93fbafd2c867168cfc1b56d7171" [label="/bin/sh -c pacman -Syu --noconfirm base-devel lzop" shape="box"];
  "sha256:1d80480aaefdc749d1cb8ce97875c693af8099ea8625ebfce10a013a1169c671" [label="/bin/sh -c locale-gen;" shape="box"];
  "sha256:6b5503697bce302d0aff325b930e35913550b867199c9b0a587f64c3afde5fde" [label="/bin/sh -c sed -i \"s|PKGEXT='.pkg.tar.xz'|PKGEXT='.pkg.tar.lzo'|\" /etc/makepkg.conf" shape="box"];
  "sha256:a6e500f4fef17c44d6c2ce078280dc965fa8913cca1ee6c776aafbcf3a8bb094" [label="/bin/sh -c useradd governikus -m -s /usr/bin/bash -G wheel" shape="box"];
  "sha256:7f6c97e14419a06471ff0a2834acc87e5d180809301681a1e7f5692e3e28796a" [label="/bin/sh -c echo '%wheel ALL=(ALL) NOPASSWD: /usr/bin/pacman' > /etc/sudoers.d/pacman" shape="box"];
  "sha256:e8f0675591198eb5db83eec4be789e220d1523d8aa550bf3e0301bbd055a4dcb" [label="/bin/sh -c mkdir /tmp/p &&    curl -L -o /tmp/p/cower.tar.gz https://aur.archlinux.org/cgit/aur.git/snapshot/cower.tar.gz &&    curl -L -o /tmp/p/pacaur.tar.gz https://aur.archlinux.org/cgit/aur.git/snapshot/pacaur.tar.gz" shape="box"];
  "sha256:c2c6f7e85774336b180a064d294145ffa69d644dc7158ff4be2c0954f926a0a8" [label="/bin/sh -c cd /tmp/p && tar xf cower.tar.gz && tar xf pacaur.tar.gz &&    chown -R governikus /tmp/p &&    su - governikus -c \"source /etc/profile.d/perlbin.sh && cd /tmp/p/cower && makepkg -si --noconfirm --skippgpcheck\" &&    su - governikus -c \"source /etc/profile.d/perlbin.sh && cd /tmp/p/pacaur && makepkg -si --noconfirm --skippgpcheck\"" shape="box"];
  "sha256:07bd9d9dc0502a6394ea1deeefd1a35e190901107b70daa0442cd6247076a5c3" [label="/bin/sh -c pacman -S --noconfirm vi" shape="box"];
  "sha256:6a3413e9970c8892ebd47cab5dceaf2415b76975ba4d7bf188f28fdb79acff87" [label="/bin/sh -c rm -rf /tmp/p && rm -rf /var/cache/pacman/pkg/* && rm -rf /home/governikus/.cache/pacaur" shape="box"];
  "sha256:43a0aa9fd5afaa8d470021f9629eccec20597c19f53f1c081730f2f095051446" [label="sha256:43a0aa9fd5afaa8d470021f9629eccec20597c19f53f1c081730f2f095051446" shape="plaintext"];
  "sha256:ea6c831f90b51f77bc815d6ebbcbb82bc3c87d0451dfcbcbf87741ebc4c1ac59" -> "sha256:b27e629b24be92713aae5e93bbc89c1279b9445d34c65cd9bacb753e380dd4d2" [label=""];
  "sha256:b27e629b24be92713aae5e93bbc89c1279b9445d34c65cd9bacb753e380dd4d2" -> "sha256:b5777226d36c6eebc94c0ef9f2bfa2aa01c42e24f97d0c7bf4d1ebc51b0102cd" [label=""];
  "sha256:ea6c831f90b51f77bc815d6ebbcbb82bc3c87d0451dfcbcbf87741ebc4c1ac59" -> "sha256:b5777226d36c6eebc94c0ef9f2bfa2aa01c42e24f97d0c7bf4d1ebc51b0102cd" [label=""];
  "sha256:b5777226d36c6eebc94c0ef9f2bfa2aa01c42e24f97d0c7bf4d1ebc51b0102cd" -> "sha256:71063c76cc51e59c83d7d6475666e6d77a1dc425fe6b838912b0f057dfea9cee" [label=""];
  "sha256:71063c76cc51e59c83d7d6475666e6d77a1dc425fe6b838912b0f057dfea9cee" -> "sha256:bf4bef91a2ace45a2b78a1aba98d039ae7f55f948a462020011d618609a99140" [label=""];
  "sha256:bf4bef91a2ace45a2b78a1aba98d039ae7f55f948a462020011d618609a99140" -> "sha256:96cde652d0582982cbb809d7e71a01282f64935c2d9c117d1909b290a5fe448a" [label=""];
  "sha256:96cde652d0582982cbb809d7e71a01282f64935c2d9c117d1909b290a5fe448a" -> "sha256:1a30864bda51b99c786c96e3f28106c02f757338da163b04f5e043718fd55f06" [label=""];
  "sha256:1a30864bda51b99c786c96e3f28106c02f757338da163b04f5e043718fd55f06" -> "sha256:b621abbfe5e59054b113b01d4ba2507c3513e59da12dc019ecddfc999e51adaa" [label=""];
  "sha256:b621abbfe5e59054b113b01d4ba2507c3513e59da12dc019ecddfc999e51adaa" -> "sha256:1589a8ae41a4dffb4b1825fad90d2ddcb7bab93fbafd2c867168cfc1b56d7171" [label=""];
  "sha256:1589a8ae41a4dffb4b1825fad90d2ddcb7bab93fbafd2c867168cfc1b56d7171" -> "sha256:1d80480aaefdc749d1cb8ce97875c693af8099ea8625ebfce10a013a1169c671" [label=""];
  "sha256:1d80480aaefdc749d1cb8ce97875c693af8099ea8625ebfce10a013a1169c671" -> "sha256:6b5503697bce302d0aff325b930e35913550b867199c9b0a587f64c3afde5fde" [label=""];
  "sha256:6b5503697bce302d0aff325b930e35913550b867199c9b0a587f64c3afde5fde" -> "sha256:a6e500f4fef17c44d6c2ce078280dc965fa8913cca1ee6c776aafbcf3a8bb094" [label=""];
  "sha256:a6e500f4fef17c44d6c2ce078280dc965fa8913cca1ee6c776aafbcf3a8bb094" -> "sha256:7f6c97e14419a06471ff0a2834acc87e5d180809301681a1e7f5692e3e28796a" [label=""];
  "sha256:7f6c97e14419a06471ff0a2834acc87e5d180809301681a1e7f5692e3e28796a" -> "sha256:e8f0675591198eb5db83eec4be789e220d1523d8aa550bf3e0301bbd055a4dcb" [label=""];
  "sha256:e8f0675591198eb5db83eec4be789e220d1523d8aa550bf3e0301bbd055a4dcb" -> "sha256:c2c6f7e85774336b180a064d294145ffa69d644dc7158ff4be2c0954f926a0a8" [label=""];
  "sha256:c2c6f7e85774336b180a064d294145ffa69d644dc7158ff4be2c0954f926a0a8" -> "sha256:07bd9d9dc0502a6394ea1deeefd1a35e190901107b70daa0442cd6247076a5c3" [label=""];
  "sha256:07bd9d9dc0502a6394ea1deeefd1a35e190901107b70daa0442cd6247076a5c3" -> "sha256:6a3413e9970c8892ebd47cab5dceaf2415b76975ba4d7bf188f28fdb79acff87" [label=""];
  "sha256:6a3413e9970c8892ebd47cab5dceaf2415b76975ba4d7bf188f28fdb79acff87" -> "sha256:43a0aa9fd5afaa8d470021f9629eccec20597c19f53f1c081730f2f095051446" [label=""];
}

