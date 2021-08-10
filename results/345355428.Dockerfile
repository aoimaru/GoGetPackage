[app/sources/345355428.Dockerfile]
digraph {
  "sha256:ff12f3fc066ef6bd5ecf7bcf8bd7bfff3a1827553640b1185a776b3e457cc6b1" [label="docker-image://docker.io/arm64v8/ubuntu:trusty" shape="ellipse"];
  "sha256:cbb271a73449ad8b5005530c17e290f8be4b4efbf11e2cbd9c90da86dc2da87c" [label="local://context" shape="ellipse"];
  "sha256:0caca43f2613950ea063146c88e1780709c08df16fa25b1ab1795552f4feccfa" [label="copy{src=/qemu-aarch64-static, dest=/usr/bin}" shape="note"];
  "sha256:2b8b9622d9d7cba5d9a87057cbee72734fc95a0930baae855425344ad7fa31a6" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends   sudo   ca-certificates   findutils   gnupg   dirmngr   inetutils-ping   netbase   curl   udev   $(       if apt-cache show 'iproute' 2>/dev/null | grep -q '^Version:'; then         echo 'iproute';       else         echo 'iproute2';       fi   )   && rm -rf /var/lib/apt/lists/*   && echo '#!/bin/sh\\nset -e\\nset -u\\nexport DEBIAN_FRONTEND=noninteractive\\nn=0\\nmax=2\\nuntil [ $n -gt $max ]; do\\n  set +e\\n  (\\n    apt-get update -qq &&\\n    apt-get install -y --no-install-recommends \"$@\"\\n  )\\n  CODE=$?\\n  set -e\\n  if [ $CODE -eq 0 ]; then\\n    break\\n  fi\\n  if [ $n -eq $max ]; then\\n    exit $CODE\\n  fi\\n  echo \"apt failed, retrying\"\\n  n=$(($n + 1))\\ndone\\nrm -r /var/lib/apt/lists/*' > /usr/sbin/install_packages   && chmod 0755 \"/usr/sbin/install_packages\"" shape="box"];
  "sha256:ba8b0defbba3a5551c5e13a8823883e7b5287447d2a0cad5ead44714641e2ece" [label="/bin/sh -c curl -SLO \"http://resin-packages.s3.amazonaws.com/resin-xbuild/v1.0.0/resin-xbuild1.0.0.tar.gz\"   && echo \"1eb099bc3176ed078aa93bd5852dbab9219738d16434c87fc9af499368423437  resin-xbuild1.0.0.tar.gz\" | sha256sum -c -   && tar -xzf \"resin-xbuild1.0.0.tar.gz\"   && rm \"resin-xbuild1.0.0.tar.gz\"   && chmod +x resin-xbuild   && mv resin-xbuild /usr/bin   && ln -s resin-xbuild /usr/bin/cross-build-start   && ln -s resin-xbuild /usr/bin/cross-build-end" shape="box"];
  "sha256:5ada7c59b3f3fa7c71e18d40850ee8631ad67af1013c2978913fe51d8ab384d2" [label="/bin/sh -c mkdir -p /usr/share/man/man1" shape="box"];
  "sha256:6e6613659076db97388e19e38a81eb6283ef09bfed4ad25a5b413bc54231878d" [label="copy{src=/entry.sh, dest=/usr/bin/entry.sh}" shape="note"];
  "sha256:4b5462a73f096af6652ff2df21c9492df5a9ee7ce3fa8fa82a00c9c6ae1e0227" [label="sha256:4b5462a73f096af6652ff2df21c9492df5a9ee7ce3fa8fa82a00c9c6ae1e0227" shape="plaintext"];
  "sha256:ff12f3fc066ef6bd5ecf7bcf8bd7bfff3a1827553640b1185a776b3e457cc6b1" -> "sha256:0caca43f2613950ea063146c88e1780709c08df16fa25b1ab1795552f4feccfa" [label=""];
  "sha256:cbb271a73449ad8b5005530c17e290f8be4b4efbf11e2cbd9c90da86dc2da87c" -> "sha256:0caca43f2613950ea063146c88e1780709c08df16fa25b1ab1795552f4feccfa" [label=""];
  "sha256:0caca43f2613950ea063146c88e1780709c08df16fa25b1ab1795552f4feccfa" -> "sha256:2b8b9622d9d7cba5d9a87057cbee72734fc95a0930baae855425344ad7fa31a6" [label=""];
  "sha256:2b8b9622d9d7cba5d9a87057cbee72734fc95a0930baae855425344ad7fa31a6" -> "sha256:ba8b0defbba3a5551c5e13a8823883e7b5287447d2a0cad5ead44714641e2ece" [label=""];
  "sha256:ba8b0defbba3a5551c5e13a8823883e7b5287447d2a0cad5ead44714641e2ece" -> "sha256:5ada7c59b3f3fa7c71e18d40850ee8631ad67af1013c2978913fe51d8ab384d2" [label=""];
  "sha256:5ada7c59b3f3fa7c71e18d40850ee8631ad67af1013c2978913fe51d8ab384d2" -> "sha256:6e6613659076db97388e19e38a81eb6283ef09bfed4ad25a5b413bc54231878d" [label=""];
  "sha256:cbb271a73449ad8b5005530c17e290f8be4b4efbf11e2cbd9c90da86dc2da87c" -> "sha256:6e6613659076db97388e19e38a81eb6283ef09bfed4ad25a5b413bc54231878d" [label=""];
  "sha256:6e6613659076db97388e19e38a81eb6283ef09bfed4ad25a5b413bc54231878d" -> "sha256:4b5462a73f096af6652ff2df21c9492df5a9ee7ce3fa8fa82a00c9c6ae1e0227" [label=""];
}

