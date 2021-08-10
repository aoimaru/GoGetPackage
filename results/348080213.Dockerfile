[app/sources/348080213.Dockerfile]
digraph {
  "sha256:3601e5ff43d0071cb86b3a24d6e52e69d0ad91f489c172427c8e1ae29a42be9f" [label="docker-image://docker.io/opennsm/debian:latest" shape="ellipse"];
  "sha256:89a0f0f67ac3a44ac1d6690382ddd3d662b714fc5c18f15c37aecff6d4413f67" [label="/bin/sh -c apt-get update -qq" shape="box"];
  "sha256:c183af34147272cbe6dda5c91980e6d113f3b1c3cf2367bdeaac5b9674a594a7" [label="/bin/sh -c apt-get install -yq build-essential autoconf automake libtool bison flex   libpcap-dev libglib2.0-dev libgeoip-dev libkrb5-dev libgnutls28-dev   libgcrypt-dev libcap-dev libsbc-dev libsmi-dev libc-ares-dev --no-install-recommends" shape="box"];
  "sha256:23f715755f9794c50467e050b463d574231bb3e9c1f77cc37d7f9ade0decb881" [label="/bin/sh -c wget --no-check-certificate https://ftp.gnu.org/gnu/libtool/$LIBTOOL.tar.gz" shape="box"];
  "sha256:ee8ff9d427de7039fba718904799b4e4d39df2d75aa3d900fddb49d09903f18e" [label="/bin/sh -c tar zxf $LIBTOOL.tar.gz && cd $LIBTOOL && ./configure && make && make install" shape="box"];
  "sha256:2451b15b029ffb5db2bd66c6426268d80a57be24565d3c1da87e2eb521cdd57c" [label="mkdir{path=/home/opennsm}" shape="note"];
  "sha256:67f6f586b9cfab2f2a6c4fb49aa7199a3d736d057457767d8fc28e9fe98201df" [label="/bin/sh -c wget --no-check-certificate https://www.wireshark.org/download/src/all-versions/$PROG-$VERS.$EXT" shape="box"];
  "sha256:258d27bd4c032769c200b6895f25d7225ac55a52c87dda3af425b8941c1b4dc4" [label="/bin/sh -c tar -jxf $PROG-$VERS.$EXT" shape="box"];
  "sha256:3b33e78c346fafd9606a1eff7c5f01a361cde24a2fda94cdc968947974b319c1" [label="mkdir{path=/home/opennsm/wireshark-1.99.6}" shape="note"];
  "sha256:1bbe58480249c6706d4ad88ea001095c2dcc5a8b8bbf925398b002bdd4ddbb81" [label="/bin/sh -c ./autogen.sh && ./configure --disable-wireshark --enable-profile-build --prefix=/opt  CFLAGS=\"-I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include\" &&  make CFLAGS=\"-fPIC -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include\"" shape="box"];
  "sha256:516bcb1245621d1412f87c5a82224a3a513d5978ed6829a53ccdcfa06a416895" [label="/bin/sh -c make install" shape="box"];
  "sha256:f7083cd075ea3aa0caf50b5e1c816fb41ecb19ba2f8129fe1594a0930026d82e" [label="/bin/sh -c chmod u+s $PREFIX/bin/dumpcap" shape="box"];
  "sha256:d3fcba832ba460dd02f22422e43ac0828992b90ab77e16ea6c07bfb9bbd2963d" [label="/bin/sh -c rm -rf /home/$VIRTUSER/$PROG-$VERS" shape="box"];
  "sha256:fb3db5d115178ff786d37762b1f4d10b0b662c091a7056d83e3a2c0fa65a3049" [label="/bin/sh -c rm -rf /root/$LIBTOOL*" shape="box"];
  "sha256:a63c808713703da2aea1f3abeb8bf68435224a4c0db1964a761c1fdf85608325" [label="mkdir{path=/home/opennsm}" shape="note"];
  "sha256:b9b30e1c144f1934d05462858cbe3833f451b6583766d3f6b7f0f2e9be51a44c" [label="sha256:b9b30e1c144f1934d05462858cbe3833f451b6583766d3f6b7f0f2e9be51a44c" shape="plaintext"];
  "sha256:3601e5ff43d0071cb86b3a24d6e52e69d0ad91f489c172427c8e1ae29a42be9f" -> "sha256:89a0f0f67ac3a44ac1d6690382ddd3d662b714fc5c18f15c37aecff6d4413f67" [label=""];
  "sha256:89a0f0f67ac3a44ac1d6690382ddd3d662b714fc5c18f15c37aecff6d4413f67" -> "sha256:c183af34147272cbe6dda5c91980e6d113f3b1c3cf2367bdeaac5b9674a594a7" [label=""];
  "sha256:c183af34147272cbe6dda5c91980e6d113f3b1c3cf2367bdeaac5b9674a594a7" -> "sha256:23f715755f9794c50467e050b463d574231bb3e9c1f77cc37d7f9ade0decb881" [label=""];
  "sha256:23f715755f9794c50467e050b463d574231bb3e9c1f77cc37d7f9ade0decb881" -> "sha256:ee8ff9d427de7039fba718904799b4e4d39df2d75aa3d900fddb49d09903f18e" [label=""];
  "sha256:ee8ff9d427de7039fba718904799b4e4d39df2d75aa3d900fddb49d09903f18e" -> "sha256:2451b15b029ffb5db2bd66c6426268d80a57be24565d3c1da87e2eb521cdd57c" [label=""];
  "sha256:2451b15b029ffb5db2bd66c6426268d80a57be24565d3c1da87e2eb521cdd57c" -> "sha256:67f6f586b9cfab2f2a6c4fb49aa7199a3d736d057457767d8fc28e9fe98201df" [label=""];
  "sha256:67f6f586b9cfab2f2a6c4fb49aa7199a3d736d057457767d8fc28e9fe98201df" -> "sha256:258d27bd4c032769c200b6895f25d7225ac55a52c87dda3af425b8941c1b4dc4" [label=""];
  "sha256:258d27bd4c032769c200b6895f25d7225ac55a52c87dda3af425b8941c1b4dc4" -> "sha256:3b33e78c346fafd9606a1eff7c5f01a361cde24a2fda94cdc968947974b319c1" [label=""];
  "sha256:3b33e78c346fafd9606a1eff7c5f01a361cde24a2fda94cdc968947974b319c1" -> "sha256:1bbe58480249c6706d4ad88ea001095c2dcc5a8b8bbf925398b002bdd4ddbb81" [label=""];
  "sha256:1bbe58480249c6706d4ad88ea001095c2dcc5a8b8bbf925398b002bdd4ddbb81" -> "sha256:516bcb1245621d1412f87c5a82224a3a513d5978ed6829a53ccdcfa06a416895" [label=""];
  "sha256:516bcb1245621d1412f87c5a82224a3a513d5978ed6829a53ccdcfa06a416895" -> "sha256:f7083cd075ea3aa0caf50b5e1c816fb41ecb19ba2f8129fe1594a0930026d82e" [label=""];
  "sha256:f7083cd075ea3aa0caf50b5e1c816fb41ecb19ba2f8129fe1594a0930026d82e" -> "sha256:d3fcba832ba460dd02f22422e43ac0828992b90ab77e16ea6c07bfb9bbd2963d" [label=""];
  "sha256:d3fcba832ba460dd02f22422e43ac0828992b90ab77e16ea6c07bfb9bbd2963d" -> "sha256:fb3db5d115178ff786d37762b1f4d10b0b662c091a7056d83e3a2c0fa65a3049" [label=""];
  "sha256:fb3db5d115178ff786d37762b1f4d10b0b662c091a7056d83e3a2c0fa65a3049" -> "sha256:a63c808713703da2aea1f3abeb8bf68435224a4c0db1964a761c1fdf85608325" [label=""];
  "sha256:a63c808713703da2aea1f3abeb8bf68435224a4c0db1964a761c1fdf85608325" -> "sha256:b9b30e1c144f1934d05462858cbe3833f451b6583766d3f6b7f0f2e9be51a44c" [label=""];
}

