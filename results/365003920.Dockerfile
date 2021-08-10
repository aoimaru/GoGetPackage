[app/sources/365003920.Dockerfile]
digraph {
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:02bb72cf6b1804ce8211a3c9c85fd6063ab5fb95afa8b096248b891585a3a3c2" [label="/bin/sh -c echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections   && apt-get update   && apt-get install -y     build-essential     git     zip     libtool     intltool     mingw-w64     mingw-w64-tools     nasm     cmake     gperf     python-minimal     python3-pip     libboost-filesystem-dev     libboost-system-dev" shape="box"];
  "sha256:7a59497b0a7a60929a339258081cf53162ba357194f45f41553a09ce13a62f71" [label="mkdir{path=/usr/local/src}" shape="note"];
  "sha256:f40c736242e61a79d44bd241ccb3f08af0b5145f2a70abf11c230793a0d1ce3a" [label="/bin/sh -c git clone https://github.com/GNOME/jhbuild.git    && cd jhbuild    && git checkout -b stable $JHBUILD_REVISION    && ./autogen.sh --prefix=/usr/local    && make    && make install" shape="box"];
  "sha256:47bdf1d13b15ecd0519599742afdd808820b775bd2d573f560554a063104558e" [label="/bin/sh -c pip3 install ninja meson" shape="box"];
  "sha256:2e2f976cd18f13ef480fb23ba3f23098f9a2b663585e1dd4382a64d00020a3bf" [label="/bin/sh -c cd `python3 -c \"import site; print(site.getsitepackages()[0])\"`   && curl $MESON_PATCH | git apply -v" shape="box"];
  "sha256:e05128314befd04966fdc307b7b9830201b9a7e77ae101972098730d1a0f85f8" [label="/bin/sh -c git clone --recurse-submodules https://github.com/gsauthof/pe-util.git   && cd pe-util   && mkdir build   && cd build   && cmake .. -DCMAKE_BUILD_TYPE=Release   && make   && make install" shape="box"];
  "sha256:0e6a1ccb0238c465b005111ff5ccecdf5dddb7bc2f93f87e01ea00260ab2010d" [label="mkdir{path=/data}" shape="note"];
  "sha256:19241b7e958f8fc3f4688a177ff0907546486a4a5857f4abc6fd3f77101688ea" [label="sha256:19241b7e958f8fc3f4688a177ff0907546486a4a5857f4abc6fd3f77101688ea" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:02bb72cf6b1804ce8211a3c9c85fd6063ab5fb95afa8b096248b891585a3a3c2" [label=""];
  "sha256:02bb72cf6b1804ce8211a3c9c85fd6063ab5fb95afa8b096248b891585a3a3c2" -> "sha256:7a59497b0a7a60929a339258081cf53162ba357194f45f41553a09ce13a62f71" [label=""];
  "sha256:7a59497b0a7a60929a339258081cf53162ba357194f45f41553a09ce13a62f71" -> "sha256:f40c736242e61a79d44bd241ccb3f08af0b5145f2a70abf11c230793a0d1ce3a" [label=""];
  "sha256:f40c736242e61a79d44bd241ccb3f08af0b5145f2a70abf11c230793a0d1ce3a" -> "sha256:47bdf1d13b15ecd0519599742afdd808820b775bd2d573f560554a063104558e" [label=""];
  "sha256:47bdf1d13b15ecd0519599742afdd808820b775bd2d573f560554a063104558e" -> "sha256:2e2f976cd18f13ef480fb23ba3f23098f9a2b663585e1dd4382a64d00020a3bf" [label=""];
  "sha256:2e2f976cd18f13ef480fb23ba3f23098f9a2b663585e1dd4382a64d00020a3bf" -> "sha256:e05128314befd04966fdc307b7b9830201b9a7e77ae101972098730d1a0f85f8" [label=""];
  "sha256:e05128314befd04966fdc307b7b9830201b9a7e77ae101972098730d1a0f85f8" -> "sha256:0e6a1ccb0238c465b005111ff5ccecdf5dddb7bc2f93f87e01ea00260ab2010d" [label=""];
  "sha256:0e6a1ccb0238c465b005111ff5ccecdf5dddb7bc2f93f87e01ea00260ab2010d" -> "sha256:19241b7e958f8fc3f4688a177ff0907546486a4a5857f4abc6fd3f77101688ea" [label=""];
}

