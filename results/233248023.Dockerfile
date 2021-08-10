[app/sources/233248023.Dockerfile]
digraph {
  "sha256:935c722fbac4881970f7705a46531ebd313d4be3362928c34c103a6f8cee1ae0" [label="docker-image://quay.io/pypa/manylinux1_x86_64@sha256:a18711aa1ffe3e65e489d808d17f68f5c75c9a0275d657aa52aa04bc79cdfddb" shape="ellipse"];
  "sha256:e98a7f5fae36d717d5f0d2b4e93894a4620e312c57014094722743a9ad27ddec" [label="mkdir{path=/tick}" shape="note"];
  "sha256:0afb64f41cfb421ac2e95d9f5632f2172b42141f1aca241d5ed7f3d22e88b94c" [label="/bin/sh -c yum update -y && yum install -y zlib-devel bzip2 bzip2-devel readline-devel sqlite sqlite-devel openssl-devel pcre-devel atlas-devel" shape="box"];
  "sha256:8257eb974e1635cd2ec174407df72b1d50c54bd084cfd45049d2adae3792dc5d" [label="/bin/sh -c curl -O https://kent.dl.sourceforge.net/project/swig/swig/swig-${SWIG_VER}/swig-${SWIG_VER}.tar.gz && tar -xf swig-${SWIG_VER}.tar.gz && \tcd swig-${SWIG_VER} && ./configure --without-pcre && make -j4 && make install && \trm -rf swig-${SWIG_VER}.tar.gz swig-${SWIG_VER}" shape="box"];
  "sha256:0c5290f2976456f531c058336c9168f072298926ddef173603cdec9c15826880" [label="/bin/sh -c curl -O https://cmake.org/files/v3.8/cmake-3.8.0.tar.gz && tar -xf cmake-3.8.0.tar.gz &&     (cd cmake-3.8.0 && ./configure && gmake -j4 && gmake install) &&     rm -rf cmake-3.8.0.tar.gz cmake-3.8.0" shape="box"];
  "sha256:6b8ea2f2245e40cd25a1383e9c629548f813440eaf13d1f3515c4040bff0e9bc" [label="/bin/sh -c git clone https://github.com/google/googletest.git && \t(cd googletest && mkdir -p build && cd build && cmake .. && make -j4 && make install) && \trm -rf googletest" shape="box"];
  "sha256:54ca206f110f76c8e63c90580f037093871874bde528d1a40e4811a81c84428f" [label="sha256:54ca206f110f76c8e63c90580f037093871874bde528d1a40e4811a81c84428f" shape="plaintext"];
  "sha256:935c722fbac4881970f7705a46531ebd313d4be3362928c34c103a6f8cee1ae0" -> "sha256:e98a7f5fae36d717d5f0d2b4e93894a4620e312c57014094722743a9ad27ddec" [label=""];
  "sha256:e98a7f5fae36d717d5f0d2b4e93894a4620e312c57014094722743a9ad27ddec" -> "sha256:0afb64f41cfb421ac2e95d9f5632f2172b42141f1aca241d5ed7f3d22e88b94c" [label=""];
  "sha256:0afb64f41cfb421ac2e95d9f5632f2172b42141f1aca241d5ed7f3d22e88b94c" -> "sha256:8257eb974e1635cd2ec174407df72b1d50c54bd084cfd45049d2adae3792dc5d" [label=""];
  "sha256:8257eb974e1635cd2ec174407df72b1d50c54bd084cfd45049d2adae3792dc5d" -> "sha256:0c5290f2976456f531c058336c9168f072298926ddef173603cdec9c15826880" [label=""];
  "sha256:0c5290f2976456f531c058336c9168f072298926ddef173603cdec9c15826880" -> "sha256:6b8ea2f2245e40cd25a1383e9c629548f813440eaf13d1f3515c4040bff0e9bc" [label=""];
  "sha256:6b8ea2f2245e40cd25a1383e9c629548f813440eaf13d1f3515c4040bff0e9bc" -> "sha256:54ca206f110f76c8e63c90580f037093871874bde528d1a40e4811a81c84428f" [label=""];
}

