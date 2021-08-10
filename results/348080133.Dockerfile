[app/sources/348080133.Dockerfile]
digraph {
  "sha256:3601e5ff43d0071cb86b3a24d6e52e69d0ad91f489c172427c8e1ae29a42be9f" [label="docker-image://docker.io/opennsm/debian:latest" shape="ellipse"];
  "sha256:2d85b434d0b5d92931ec7cb91f7a0e66353a3c0a242d5d11ff63729712a34202" [label="/bin/sh -c apt-get update -qq" shape="box"];
  "sha256:40ad5d36e1654bb5f480432c9d8b38c064ccf71ea3f8ce7e90d533961e86db11" [label="/bin/sh -c apt-get install -yq libpcre3 libpcre3-dbg libpcre3-dev build-essential autoconf automake libtool libpcap-dev libnet1-dev libyaml-0-2 libyaml-dev zlib1g zlib1g-dev libmagic-dev libcap-ng-dev libjansson-dev pkg-config libgeoip-dev libnetfilter-queue-dev" shape="box"];
  "sha256:a524db330bb9940e5acc3f9da44852056bb4d91fc37081cf4c494229a774ecb4" [label="mkdir{path=/home/opennsm}" shape="note"];
  "sha256:81c1be4486f74ce9a97b0a602dc6626dc3964c493b362d2084fff1927eba21c7" [label="/bin/sh -c wget http://www.openinfosecfoundation.org/download/$PROG-$VERS.tar.gz" shape="box"];
  "sha256:1024cf44483507d8445608ceaea3643da7ec91078b4d0a7d0fa6d0ca266334d8" [label="/bin/sh -c tar -xvzf $PROG-$VERS.tar.gz" shape="box"];
  "sha256:47ecf0cb11992b97d62dc0d886a7b0bb0d9bda121e6b0c0b9387748e1798454c" [label="mkdir{path=/home/opennsm/suricata-2.0.9}" shape="note"];
  "sha256:79241d53438cb5592d934897e7a5205734c2251984a5e0cce91163a6abaf72f7" [label="/bin/sh -c ./configure --enable-nfqueue --enable-geoip --prefix=$PREFIX --enable-profiling --enable-debug --enable-debug-validation --enable-unittests --sysconfdir=/etc --localstatedir=/var && make" shape="box"];
  "sha256:9d68c3ec6a62cd92251d07581fcd1d070a26df0b7dc5b512d0099f69a39a6a22" [label="/bin/sh -c make install && make install-full" shape="box"];
  "sha256:4de03ef749012f67806d0041ba22c0424f07304f85c4a036c8595740cf95d558" [label="/bin/sh -c chmod u+s $PREFIX/bin/$PROG" shape="box"];
  "sha256:cf52ddc6bd795d64c7ae18c288447f18c395d0a02a60ac1b6ca363a227ae444f" [label="/bin/sh -c rm -rf /home/$VIRTUSER/$PROG-$VERS" shape="box"];
  "sha256:fd3f45f5af220c985ba17ba73d1530c040d10728fb87e82bfbe7a27220727a5b" [label="mkdir{path=/home/opennsm}" shape="note"];
  "sha256:749acf3ae53bce0f72daeca044d9324dc954144f2380255abaab25e4e5863783" [label="sha256:749acf3ae53bce0f72daeca044d9324dc954144f2380255abaab25e4e5863783" shape="plaintext"];
  "sha256:3601e5ff43d0071cb86b3a24d6e52e69d0ad91f489c172427c8e1ae29a42be9f" -> "sha256:2d85b434d0b5d92931ec7cb91f7a0e66353a3c0a242d5d11ff63729712a34202" [label=""];
  "sha256:2d85b434d0b5d92931ec7cb91f7a0e66353a3c0a242d5d11ff63729712a34202" -> "sha256:40ad5d36e1654bb5f480432c9d8b38c064ccf71ea3f8ce7e90d533961e86db11" [label=""];
  "sha256:40ad5d36e1654bb5f480432c9d8b38c064ccf71ea3f8ce7e90d533961e86db11" -> "sha256:a524db330bb9940e5acc3f9da44852056bb4d91fc37081cf4c494229a774ecb4" [label=""];
  "sha256:a524db330bb9940e5acc3f9da44852056bb4d91fc37081cf4c494229a774ecb4" -> "sha256:81c1be4486f74ce9a97b0a602dc6626dc3964c493b362d2084fff1927eba21c7" [label=""];
  "sha256:81c1be4486f74ce9a97b0a602dc6626dc3964c493b362d2084fff1927eba21c7" -> "sha256:1024cf44483507d8445608ceaea3643da7ec91078b4d0a7d0fa6d0ca266334d8" [label=""];
  "sha256:1024cf44483507d8445608ceaea3643da7ec91078b4d0a7d0fa6d0ca266334d8" -> "sha256:47ecf0cb11992b97d62dc0d886a7b0bb0d9bda121e6b0c0b9387748e1798454c" [label=""];
  "sha256:47ecf0cb11992b97d62dc0d886a7b0bb0d9bda121e6b0c0b9387748e1798454c" -> "sha256:79241d53438cb5592d934897e7a5205734c2251984a5e0cce91163a6abaf72f7" [label=""];
  "sha256:79241d53438cb5592d934897e7a5205734c2251984a5e0cce91163a6abaf72f7" -> "sha256:9d68c3ec6a62cd92251d07581fcd1d070a26df0b7dc5b512d0099f69a39a6a22" [label=""];
  "sha256:9d68c3ec6a62cd92251d07581fcd1d070a26df0b7dc5b512d0099f69a39a6a22" -> "sha256:4de03ef749012f67806d0041ba22c0424f07304f85c4a036c8595740cf95d558" [label=""];
  "sha256:4de03ef749012f67806d0041ba22c0424f07304f85c4a036c8595740cf95d558" -> "sha256:cf52ddc6bd795d64c7ae18c288447f18c395d0a02a60ac1b6ca363a227ae444f" [label=""];
  "sha256:cf52ddc6bd795d64c7ae18c288447f18c395d0a02a60ac1b6ca363a227ae444f" -> "sha256:fd3f45f5af220c985ba17ba73d1530c040d10728fb87e82bfbe7a27220727a5b" [label=""];
  "sha256:fd3f45f5af220c985ba17ba73d1530c040d10728fb87e82bfbe7a27220727a5b" -> "sha256:749acf3ae53bce0f72daeca044d9324dc954144f2380255abaab25e4e5863783" [label=""];
}

