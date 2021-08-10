[app/sources/146163472.Dockerfile]
digraph {
  "sha256:94549f632195042acf305e1d6f8a8a30c2ba12bed7421bd5a584fd757732b2c7" [label="local://context" shape="ellipse"];
  "sha256:929816cbeb0c0bed70f8d5e06710d7709a4b2923a163b3a1d3f319e84e0b91a3" [label="docker-image://docker.io/nubs/arch-build:latest" shape="ellipse"];
  "sha256:3ff1302ad0bdb7ac99ca262f0f91781e48568d4eeae058590e098a9d6b9936e7" [label="copy{src=/php/PKGBUILD, dest=/package/},copy{src=/php/*.patch, dest=/package/}" shape="note"];
  "sha256:fe51b871a6e8faf31e1e7e94562907b187a88cf8e466bcd30bb651b168dff475" [label="/bin/sh -c makepkg --force" shape="box"];
  "sha256:7e28504f7e0d6b231c4f42f72199688483417812325449a908193a029dd5b81f" [label="/bin/sh -c pacman --upgrade --noconfirm --noprogressbar php-*-x86_64.pkg.tar.xz" shape="box"];
  "sha256:92b59a1b3ca132141fcbc7bfba7e7bbbd5b9248559ce059a3764775a18c0704b" [label="copy{src=/php.ini, dest=/etc/php/php.ini}" shape="note"];
  "sha256:2d9c4bb940d5c7ba319fd911078e4b8ddbdad2579b90ebabde09e252d17d9924" [label="sha256:2d9c4bb940d5c7ba319fd911078e4b8ddbdad2579b90ebabde09e252d17d9924" shape="plaintext"];
  "sha256:929816cbeb0c0bed70f8d5e06710d7709a4b2923a163b3a1d3f319e84e0b91a3" -> "sha256:3ff1302ad0bdb7ac99ca262f0f91781e48568d4eeae058590e098a9d6b9936e7" [label=""];
  "sha256:94549f632195042acf305e1d6f8a8a30c2ba12bed7421bd5a584fd757732b2c7" -> "sha256:3ff1302ad0bdb7ac99ca262f0f91781e48568d4eeae058590e098a9d6b9936e7" [label=""];
  "sha256:3ff1302ad0bdb7ac99ca262f0f91781e48568d4eeae058590e098a9d6b9936e7" -> "sha256:fe51b871a6e8faf31e1e7e94562907b187a88cf8e466bcd30bb651b168dff475" [label=""];
  "sha256:fe51b871a6e8faf31e1e7e94562907b187a88cf8e466bcd30bb651b168dff475" -> "sha256:7e28504f7e0d6b231c4f42f72199688483417812325449a908193a029dd5b81f" [label=""];
  "sha256:7e28504f7e0d6b231c4f42f72199688483417812325449a908193a029dd5b81f" -> "sha256:92b59a1b3ca132141fcbc7bfba7e7bbbd5b9248559ce059a3764775a18c0704b" [label=""];
  "sha256:94549f632195042acf305e1d6f8a8a30c2ba12bed7421bd5a584fd757732b2c7" -> "sha256:92b59a1b3ca132141fcbc7bfba7e7bbbd5b9248559ce059a3764775a18c0704b" [label=""];
  "sha256:92b59a1b3ca132141fcbc7bfba7e7bbbd5b9248559ce059a3764775a18c0704b" -> "sha256:2d9c4bb940d5c7ba319fd911078e4b8ddbdad2579b90ebabde09e252d17d9924" [label=""];
}

