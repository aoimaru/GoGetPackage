[app/sources/359037701.Dockerfile]
digraph {
  "sha256:beb45ba8e4e557d1072362ce07722fea5be31bdd227ef3d57675e3a26e7bd740" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:ef8b9b2a27f660501dc8fbf4e3dd4b306fbc2d13e21d47e78f41dc203440dfd9" [label="/bin/sh -c apt-get update -q --fix-missing" shape="box"];
  "sha256:4816ea49bf9a0fcc15535ef3880a5f8e8ce395fbd90581b4ae8434637015a273" [label="/bin/sh -c apt-get -qy install software-properties-common # (for add-apt-repository)" shape="box"];
  "sha256:5b5a4ba1dab87038d67316db648b7a396bc802c3d5eb44ff09902ade4c873d8a" [label="/bin/sh -c add-apt-repository ppa:george-edison55/cmake-3.x" shape="box"];
  "sha256:1a1cb8c86a28ff5a81fdec9a6f913948b67442b0b55f01d36be3ca084d450954" [label="/bin/sh -c apt-get update -q" shape="box"];
  "sha256:e585ce93ebac356890c9de2411ae8f7328b34daf27edaff8c106cfb1d374384d" [label="/bin/sh -c apt-cache policy cmake" shape="box"];
  "sha256:9ce52b68cece3c065f39f34b22c28ec00ffc66d58de16dfa468bde421fdcd67e" [label="/bin/sh -c apt-get -qy install   autoconf                                  automake                                  build-essential                           ca-certificates                           cmake=3.2.2-2~ubuntu14.04.1~ppa1          curl                                      g++                                       git-core                                  gdb                                       heimdal-clients                           libapr1-dev                               libboost-dev                              libcurl4-nss-dev                          libffi-dev                                libgoogle-glog-dev                        libprotobuf-dev                           libpython-dev                             libsasl2-dev                              libsasl2-modules-gssapi-heimdal           libssl-dev                                libsvn-dev                                libtool                                   make                                      python                                    python2.7                                 python-dev                                python-pip                                python-protobuf                           python-setuptools                         unzip                                     wget                                      --no-install-recommends" shape="box"];
  "sha256:21252822c44a9ec668bdf8703264bff7fc7c2e1fd3dc96410e5873c6021cac3a" [label="/bin/sh -c pip install --upgrade pip" shape="box"];
  "sha256:a41fac4a587a77f3480e90f4ad50b8a086cefd30b4fee975f6f6833f570e3808" [label="/bin/sh -c pip install --upgrade pyopenssl ndg-httpsclient pyasn1" shape="box"];
  "sha256:0ad9879a201b282f740e1b03db560822c1f83256c34b414492299a6acc721a83" [label="/bin/sh -c wget https://raw.githubusercontent.com/kazuho/picojson/v1.3.0/picojson.h -O /usr/local/include/picojson.h" shape="box"];
  "sha256:ea580ff5e607f1c9341c03260c4ca00c0c1a2cfffe32d76517902d717ae7f5f6" [label="/bin/sh -c mkdir -p /mesos" shape="box"];
  "sha256:d96ce0c0186d8197c65464eaf35d859f7bb14945b037bf59705ce60ca0543f51" [label="/bin/sh -c mkdir -p /tmp" shape="box"];
  "sha256:bbba10d82e5586383cb2e680b266b18490ab04661585a21fee6d74d325f21f92" [label="/bin/sh -c mkdir -p /usr/share/java/" shape="box"];
  "sha256:2eef65513862ca1193606aa21a817636294393e73b7797f0044c1e5dc4b8bf8e" [label="/bin/sh -c wget http://search.maven.org/remotecontent?filepath=com/google/protobuf/protobuf-java/2.6.1/protobuf-java-2.6.1.jar -O protobuf.jar" shape="box"];
  "sha256:4f06a840deb1fa3d10ce0e2cfe0fe07832f116e7971b8f25103ef0fc49f147b5" [label="/bin/sh -c mv protobuf.jar /usr/share/java/" shape="box"];
  "sha256:09d32f9e5ded0116ba5be114e7e5fee9300ece6b5a7169f2db5f000d65a8a977" [label="mkdir{path=/mesos}" shape="note"];
  "sha256:c5c9ba8b830d7a135a03f1dc64ad7021f65da37165d58af2d8af0acea7e16547" [label="/bin/sh -c git clone $GIT_SOURCE /mesos" shape="box"];
  "sha256:9bbd44f6db15cb37bb4fd09d1e351a9a07230c017f953c7a1b5eed3725181f3d" [label="/bin/sh -c git checkout $GIT_CHECKOUT_HASH" shape="box"];
  "sha256:5e4a5d5e59aa90d024aa78f441871bf38b842614d916a833bac604c3e90dbe39" [label="/bin/sh -c git log -n 1" shape="box"];
  "sha256:f532e5bc1b7b0267a26e689dd2bf26cf55326a88b5e0c7bb0160536bfd723284" [label="/bin/sh -c mkdir -p $PROTOBUF_DEST" shape="box"];
  "sha256:6e5716b7eb45cf5e08b65dd6127ba4297eca219403eea2d5d8eb6eae8b4fc5da" [label="/bin/sh -c cd ${PROTOBUF_SOURCE} && tar -xzvf protobuf-${PROTOBUF_VERSION}.tar.gz -C ${PROTOBUF_DEST} && cd ${PROTOBUF_DEST}/protobuf-${PROTOBUF_VERSION}/ && ./configure --prefix=/usr && make -j 2 && make install" shape="box"];
  "sha256:292c30d21f630949df568833b956ba8ae168f54243328de130665d5a78cc025d" [label="/bin/sh -c ./bootstrap" shape="box"];
  "sha256:f8967c44d9d5bdac9e316c7f9b4aedc068a7c8b1a095cfd77b248ba3d8962450" [label="/bin/sh -c mkdir build && cd build && ../configure --disable-java --disable-optimize --without-included-zookeeper --with-glog=/usr/local --with-protobuf=/usr --with-boost=/usr/local" shape="box"];
  "sha256:b4afad9a145ca38c0e6b5b6e84068d4b32a5add9c94a37852bea5a2305d03a83" [label="/bin/sh -c cd build && make -j 2 install" shape="box"];
  "sha256:696ca4c73229cae7e17d674d908b7c461090619b3f7696039d878fee40d02700" [label="/bin/sh -c easy_install /mesos/build/src/python/dist/mesos.interface-*.egg" shape="box"];
  "sha256:8af20e0a680e60f7b4005275d265cf173041d5e7dc5315840ddd71ae255d6102" [label="copy{src=/docker-isolator-entrypoint.sh, dest=/}" shape="note"];
  "sha256:928e1c4de3e8a53482e10f7722e6320f9fff3367b64122608b1c5df54229a6bc" [label="sha256:928e1c4de3e8a53482e10f7722e6320f9fff3367b64122608b1c5df54229a6bc" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:ef8b9b2a27f660501dc8fbf4e3dd4b306fbc2d13e21d47e78f41dc203440dfd9" [label=""];
  "sha256:ef8b9b2a27f660501dc8fbf4e3dd4b306fbc2d13e21d47e78f41dc203440dfd9" -> "sha256:4816ea49bf9a0fcc15535ef3880a5f8e8ce395fbd90581b4ae8434637015a273" [label=""];
  "sha256:4816ea49bf9a0fcc15535ef3880a5f8e8ce395fbd90581b4ae8434637015a273" -> "sha256:5b5a4ba1dab87038d67316db648b7a396bc802c3d5eb44ff09902ade4c873d8a" [label=""];
  "sha256:5b5a4ba1dab87038d67316db648b7a396bc802c3d5eb44ff09902ade4c873d8a" -> "sha256:1a1cb8c86a28ff5a81fdec9a6f913948b67442b0b55f01d36be3ca084d450954" [label=""];
  "sha256:1a1cb8c86a28ff5a81fdec9a6f913948b67442b0b55f01d36be3ca084d450954" -> "sha256:e585ce93ebac356890c9de2411ae8f7328b34daf27edaff8c106cfb1d374384d" [label=""];
  "sha256:e585ce93ebac356890c9de2411ae8f7328b34daf27edaff8c106cfb1d374384d" -> "sha256:9ce52b68cece3c065f39f34b22c28ec00ffc66d58de16dfa468bde421fdcd67e" [label=""];
  "sha256:9ce52b68cece3c065f39f34b22c28ec00ffc66d58de16dfa468bde421fdcd67e" -> "sha256:21252822c44a9ec668bdf8703264bff7fc7c2e1fd3dc96410e5873c6021cac3a" [label=""];
  "sha256:21252822c44a9ec668bdf8703264bff7fc7c2e1fd3dc96410e5873c6021cac3a" -> "sha256:a41fac4a587a77f3480e90f4ad50b8a086cefd30b4fee975f6f6833f570e3808" [label=""];
  "sha256:a41fac4a587a77f3480e90f4ad50b8a086cefd30b4fee975f6f6833f570e3808" -> "sha256:0ad9879a201b282f740e1b03db560822c1f83256c34b414492299a6acc721a83" [label=""];
  "sha256:0ad9879a201b282f740e1b03db560822c1f83256c34b414492299a6acc721a83" -> "sha256:ea580ff5e607f1c9341c03260c4ca00c0c1a2cfffe32d76517902d717ae7f5f6" [label=""];
  "sha256:ea580ff5e607f1c9341c03260c4ca00c0c1a2cfffe32d76517902d717ae7f5f6" -> "sha256:d96ce0c0186d8197c65464eaf35d859f7bb14945b037bf59705ce60ca0543f51" [label=""];
  "sha256:d96ce0c0186d8197c65464eaf35d859f7bb14945b037bf59705ce60ca0543f51" -> "sha256:bbba10d82e5586383cb2e680b266b18490ab04661585a21fee6d74d325f21f92" [label=""];
  "sha256:bbba10d82e5586383cb2e680b266b18490ab04661585a21fee6d74d325f21f92" -> "sha256:2eef65513862ca1193606aa21a817636294393e73b7797f0044c1e5dc4b8bf8e" [label=""];
  "sha256:2eef65513862ca1193606aa21a817636294393e73b7797f0044c1e5dc4b8bf8e" -> "sha256:4f06a840deb1fa3d10ce0e2cfe0fe07832f116e7971b8f25103ef0fc49f147b5" [label=""];
  "sha256:4f06a840deb1fa3d10ce0e2cfe0fe07832f116e7971b8f25103ef0fc49f147b5" -> "sha256:09d32f9e5ded0116ba5be114e7e5fee9300ece6b5a7169f2db5f000d65a8a977" [label=""];
  "sha256:09d32f9e5ded0116ba5be114e7e5fee9300ece6b5a7169f2db5f000d65a8a977" -> "sha256:c5c9ba8b830d7a135a03f1dc64ad7021f65da37165d58af2d8af0acea7e16547" [label=""];
  "sha256:c5c9ba8b830d7a135a03f1dc64ad7021f65da37165d58af2d8af0acea7e16547" -> "sha256:9bbd44f6db15cb37bb4fd09d1e351a9a07230c017f953c7a1b5eed3725181f3d" [label=""];
  "sha256:9bbd44f6db15cb37bb4fd09d1e351a9a07230c017f953c7a1b5eed3725181f3d" -> "sha256:5e4a5d5e59aa90d024aa78f441871bf38b842614d916a833bac604c3e90dbe39" [label=""];
  "sha256:5e4a5d5e59aa90d024aa78f441871bf38b842614d916a833bac604c3e90dbe39" -> "sha256:f532e5bc1b7b0267a26e689dd2bf26cf55326a88b5e0c7bb0160536bfd723284" [label=""];
  "sha256:f532e5bc1b7b0267a26e689dd2bf26cf55326a88b5e0c7bb0160536bfd723284" -> "sha256:6e5716b7eb45cf5e08b65dd6127ba4297eca219403eea2d5d8eb6eae8b4fc5da" [label=""];
  "sha256:6e5716b7eb45cf5e08b65dd6127ba4297eca219403eea2d5d8eb6eae8b4fc5da" -> "sha256:292c30d21f630949df568833b956ba8ae168f54243328de130665d5a78cc025d" [label=""];
  "sha256:292c30d21f630949df568833b956ba8ae168f54243328de130665d5a78cc025d" -> "sha256:f8967c44d9d5bdac9e316c7f9b4aedc068a7c8b1a095cfd77b248ba3d8962450" [label=""];
  "sha256:f8967c44d9d5bdac9e316c7f9b4aedc068a7c8b1a095cfd77b248ba3d8962450" -> "sha256:b4afad9a145ca38c0e6b5b6e84068d4b32a5add9c94a37852bea5a2305d03a83" [label=""];
  "sha256:b4afad9a145ca38c0e6b5b6e84068d4b32a5add9c94a37852bea5a2305d03a83" -> "sha256:696ca4c73229cae7e17d674d908b7c461090619b3f7696039d878fee40d02700" [label=""];
  "sha256:696ca4c73229cae7e17d674d908b7c461090619b3f7696039d878fee40d02700" -> "sha256:8af20e0a680e60f7b4005275d265cf173041d5e7dc5315840ddd71ae255d6102" [label=""];
  "sha256:beb45ba8e4e557d1072362ce07722fea5be31bdd227ef3d57675e3a26e7bd740" -> "sha256:8af20e0a680e60f7b4005275d265cf173041d5e7dc5315840ddd71ae255d6102" [label=""];
  "sha256:8af20e0a680e60f7b4005275d265cf173041d5e7dc5315840ddd71ae255d6102" -> "sha256:928e1c4de3e8a53482e10f7722e6320f9fff3367b64122608b1c5df54229a6bc" [label=""];
}

