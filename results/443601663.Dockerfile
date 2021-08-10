[app/sources/443601663.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:63ccddb84933068646192c36d653e0192dc54c5a120cf301c6cb7796b3347b45" [label="/bin/sh -c apt-get update &&     apt-get upgrade -y &&     apt-get install -y git-core build-essential wget" shape="box"];
  "sha256:5a13ac5640fe4de9a35dcced1663189dab6f5e323ad26b772e7242b07efae59a" [label="/bin/sh -c apt-get install -y --no-install-recommends        autotools-dev libtool pkg-config zlib1g-dev        libcunit1-dev libssl-dev libxml2-dev libevent-dev        automake autoconf" shape="box"];
  "sha256:7bf9dbf043d2051f5f4afe184c2ae84d978ee57cbdecd1c485be66a8f0b8fd75" [label="/bin/sh -c apt-get install -y --no-install-recommends make binutils         autoconf automake autotools-dev         libtool pkg-config zlib1g-dev libcunit1-dev libssl-dev libxml2-dev         libev-dev libevent-dev libjansson-dev libjemalloc-dev         cython python3.4-dev python-setuptools" shape="box"];
  "sha256:c7ae14a985abe0a7b2d855cfc33a2e8d241393cd3e697df021b19898a83d2d32" [label="/bin/sh -c cd /root && git clone https://github.com/tatsuhiro-t/nghttp2.git" shape="box"];
  "sha256:9a9555d0f300292df89de31a335b1cd77b3167b91ac482354b0d0033b3272451" [label="mkdir{path=/root/nghttp2}" shape="note"];
  "sha256:51feb15c6f2ea6681ea1a6f375b20d3f2dcdc68f289e89777b76d99801bf3514" [label="/bin/sh -c git reset --hard $NGHTTP2_VER" shape="box"];
  "sha256:38715855b88303fbc5fd714857b50f8f7421b36d58459ea5eb98765e563dccdc" [label="/bin/sh -c autoreconf -i" shape="box"];
  "sha256:ec52e3d43130cff62f1ccd08674dbd2419d35e69dd46230229df26482f2eb4d2" [label="/bin/sh -c automake" shape="box"];
  "sha256:0e7273fcb81f7f24e2b84ccf9edfce626830658e7c38c3c713849f025e864b3f" [label="/bin/sh -c autoconf" shape="box"];
  "sha256:e42fec802c914641f1eae4ed9e80da0a11f7ba33dd0a2ff37168e3b0d4401474" [label="/bin/sh -c ./configure" shape="box"];
  "sha256:11edaad01081dbf51d11e3a8517e259673a42d794166052d844a99aeb67a05c4" [label="/bin/sh -c make" shape="box"];
  "sha256:cf65a6add9eb1e17bb96c86779c22b3df493ef091376bf60c406c1d1a0ee95a5" [label="/bin/sh -c make install" shape="box"];
  "sha256:d73770c756d9d4917d89c092e0d34c2047f2bf0f839e57783c1cd29ee68a1e4a" [label="mkdir{path=/root}" shape="note"];
  "sha256:4bbe683e5beed8eb68f104c2efb0412d21dc3d491a61bc42ece24a60d8b4f024" [label="/bin/sh -c wget http://curl.haxx.se/download/curl-7.45.0.tar.gz" shape="box"];
  "sha256:c415009981e39d3db2268ac0ba5b5b64b5c45b7d17167d1f79a62212850049da" [label="/bin/sh -c tar -zxvf curl-7.45.0.tar.gz" shape="box"];
  "sha256:24afc4fcf0290cb189c1a7341516b94d0baef0ff2b6f43c993c11833f08bd549" [label="mkdir{path=/root/curl-7.45.0}" shape="note"];
  "sha256:6a385bf8e0b88fdd0a2074c506ef3af4fd17f73347636a0f4db638aa57dab4fb" [label="/bin/sh -c ./configure --with-ssl --with-nghttp2=/usr/local" shape="box"];
  "sha256:c866935abd72771d84d85a64809d0c34e0bf40f5cac3d8e81ce72d67b6b8563f" [label="/bin/sh -c make" shape="box"];
  "sha256:5781a282a488751a75f7d5fb53f3012091f6d1a67054d339a58d5fd74e8b176b" [label="/bin/sh -c make install" shape="box"];
  "sha256:d1ed90dd08730377c8b1f47114a6361b199dff1b22588efed66f1a6cc0161a91" [label="/bin/sh -c ldconfig" shape="box"];
  "sha256:3ad8d49cc08799a4bc27d5ba3625aff552f627e5418908256da668b7c3153b2c" [label="sha256:3ad8d49cc08799a4bc27d5ba3625aff552f627e5418908256da668b7c3153b2c" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:63ccddb84933068646192c36d653e0192dc54c5a120cf301c6cb7796b3347b45" [label=""];
  "sha256:63ccddb84933068646192c36d653e0192dc54c5a120cf301c6cb7796b3347b45" -> "sha256:5a13ac5640fe4de9a35dcced1663189dab6f5e323ad26b772e7242b07efae59a" [label=""];
  "sha256:5a13ac5640fe4de9a35dcced1663189dab6f5e323ad26b772e7242b07efae59a" -> "sha256:7bf9dbf043d2051f5f4afe184c2ae84d978ee57cbdecd1c485be66a8f0b8fd75" [label=""];
  "sha256:7bf9dbf043d2051f5f4afe184c2ae84d978ee57cbdecd1c485be66a8f0b8fd75" -> "sha256:c7ae14a985abe0a7b2d855cfc33a2e8d241393cd3e697df021b19898a83d2d32" [label=""];
  "sha256:c7ae14a985abe0a7b2d855cfc33a2e8d241393cd3e697df021b19898a83d2d32" -> "sha256:9a9555d0f300292df89de31a335b1cd77b3167b91ac482354b0d0033b3272451" [label=""];
  "sha256:9a9555d0f300292df89de31a335b1cd77b3167b91ac482354b0d0033b3272451" -> "sha256:51feb15c6f2ea6681ea1a6f375b20d3f2dcdc68f289e89777b76d99801bf3514" [label=""];
  "sha256:51feb15c6f2ea6681ea1a6f375b20d3f2dcdc68f289e89777b76d99801bf3514" -> "sha256:38715855b88303fbc5fd714857b50f8f7421b36d58459ea5eb98765e563dccdc" [label=""];
  "sha256:38715855b88303fbc5fd714857b50f8f7421b36d58459ea5eb98765e563dccdc" -> "sha256:ec52e3d43130cff62f1ccd08674dbd2419d35e69dd46230229df26482f2eb4d2" [label=""];
  "sha256:ec52e3d43130cff62f1ccd08674dbd2419d35e69dd46230229df26482f2eb4d2" -> "sha256:0e7273fcb81f7f24e2b84ccf9edfce626830658e7c38c3c713849f025e864b3f" [label=""];
  "sha256:0e7273fcb81f7f24e2b84ccf9edfce626830658e7c38c3c713849f025e864b3f" -> "sha256:e42fec802c914641f1eae4ed9e80da0a11f7ba33dd0a2ff37168e3b0d4401474" [label=""];
  "sha256:e42fec802c914641f1eae4ed9e80da0a11f7ba33dd0a2ff37168e3b0d4401474" -> "sha256:11edaad01081dbf51d11e3a8517e259673a42d794166052d844a99aeb67a05c4" [label=""];
  "sha256:11edaad01081dbf51d11e3a8517e259673a42d794166052d844a99aeb67a05c4" -> "sha256:cf65a6add9eb1e17bb96c86779c22b3df493ef091376bf60c406c1d1a0ee95a5" [label=""];
  "sha256:cf65a6add9eb1e17bb96c86779c22b3df493ef091376bf60c406c1d1a0ee95a5" -> "sha256:d73770c756d9d4917d89c092e0d34c2047f2bf0f839e57783c1cd29ee68a1e4a" [label=""];
  "sha256:d73770c756d9d4917d89c092e0d34c2047f2bf0f839e57783c1cd29ee68a1e4a" -> "sha256:4bbe683e5beed8eb68f104c2efb0412d21dc3d491a61bc42ece24a60d8b4f024" [label=""];
  "sha256:4bbe683e5beed8eb68f104c2efb0412d21dc3d491a61bc42ece24a60d8b4f024" -> "sha256:c415009981e39d3db2268ac0ba5b5b64b5c45b7d17167d1f79a62212850049da" [label=""];
  "sha256:c415009981e39d3db2268ac0ba5b5b64b5c45b7d17167d1f79a62212850049da" -> "sha256:24afc4fcf0290cb189c1a7341516b94d0baef0ff2b6f43c993c11833f08bd549" [label=""];
  "sha256:24afc4fcf0290cb189c1a7341516b94d0baef0ff2b6f43c993c11833f08bd549" -> "sha256:6a385bf8e0b88fdd0a2074c506ef3af4fd17f73347636a0f4db638aa57dab4fb" [label=""];
  "sha256:6a385bf8e0b88fdd0a2074c506ef3af4fd17f73347636a0f4db638aa57dab4fb" -> "sha256:c866935abd72771d84d85a64809d0c34e0bf40f5cac3d8e81ce72d67b6b8563f" [label=""];
  "sha256:c866935abd72771d84d85a64809d0c34e0bf40f5cac3d8e81ce72d67b6b8563f" -> "sha256:5781a282a488751a75f7d5fb53f3012091f6d1a67054d339a58d5fd74e8b176b" [label=""];
  "sha256:5781a282a488751a75f7d5fb53f3012091f6d1a67054d339a58d5fd74e8b176b" -> "sha256:d1ed90dd08730377c8b1f47114a6361b199dff1b22588efed66f1a6cc0161a91" [label=""];
  "sha256:d1ed90dd08730377c8b1f47114a6361b199dff1b22588efed66f1a6cc0161a91" -> "sha256:3ad8d49cc08799a4bc27d5ba3625aff552f627e5418908256da668b7c3153b2c" [label=""];
}

