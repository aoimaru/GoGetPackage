[app/sources/201188662.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:a10a673118493ab952079a283fe8e9ec833bc8690ee126ec8f065c7cd9a8bb0f" [label="/bin/sh -c set -ex &&     apt-get update &&     apt-get --no-install-recommends --yes install ca-certificates &&     apt-get clean &&     rm -rf /var/lib/apt" shape="box"];
  "sha256:d361139f174ed96b2b20975aaec59e0d0aceba8f9c137d19e9b0a2ee8ac1524e" [label="/bin/sh -c set -ex &&     apt-get update &&     apt-get --no-install-recommends --yes install         ca-certificates         cmake         g++         make         pkg-config         graphviz         doxygen         git         curl         libtool-bin         autoconf         automake         bzip2         xsltproc         gperf         unzip" shape="box"];
  "sha256:460d3f17e87fb663c8bf767b3f6dd7d79d9bb6d0d6f7824d1de4a71a2c624690" [label="mkdir{path=/usr/local}" shape="note"];
  "sha256:153a5f2dc690e2c1cc0071b3e620cfffaf5ad237ae2da49d123f3250229bb18c" [label="/bin/sh -c set -ex     && curl -s -O https://cmake.org/files/${CMAKE_VERSION_DOT}/cmake-${CMAKE_VERSION}.tar.gz     && echo \"${CMAKE_HASH}  cmake-${CMAKE_VERSION}.tar.gz\" | sha256sum -c     && tar -xzf cmake-${CMAKE_VERSION}.tar.gz     && cd cmake-${CMAKE_VERSION}     && ./configure     && make     && make install" shape="box"];
  "sha256:4fbb6c1548ec1905cb77be75934c25a6dfb8d6781848721d98ec489e9f9b6623" [label="/bin/sh -c set -ex     && curl -s -L -o  boost_${BOOST_VERSION}.tar.bz2 https://dl.bintray.com/boostorg/release/${BOOST_VERSION_DOT}/source/boost_${BOOST_VERSION}.tar.bz2     && echo \"${BOOST_HASH}  boost_${BOOST_VERSION}.tar.bz2\" | sha256sum -c     && tar -xvf boost_${BOOST_VERSION}.tar.bz2     && cd boost_${BOOST_VERSION}     && ./bootstrap.sh     && ./b2 --build-type=minimal link=static runtime-link=static --with-chrono --with-date_time --with-filesystem --with-program_options --with-regex --with-serialization --with-system --with-thread --with-locale threading=multi threadapi=pthread cflags=\"$CFLAGS\" cxxflags=\"$CXXFLAGS\" stage" shape="box"];
  "sha256:8d7a26f08024dbd0ddc5307ad9152569571151017f9152de7dda70dfd4b5a10d" [label="/bin/sh -c set -ex     && curl -s -O https://www.openssl.org/source/openssl-${OPENSSL_VERSION}.tar.gz     && echo \"${OPENSSL_HASH}  openssl-${OPENSSL_VERSION}.tar.gz\" | sha256sum -c     && tar -xzf openssl-${OPENSSL_VERSION}.tar.gz     && cd openssl-${OPENSSL_VERSION}     && ./Configure linux-x86_64 no-shared --static \"$CFLAGS\"     && make build_generated     && make libcrypto.a     && make install" shape="box"];
  "sha256:53f5660b65f519ea3d34ccc0b0addcad0297f5fa830c0e81b5cf80e15c7faf5b" [label="/bin/sh -c set -ex     && git clone https://github.com/zeromq/libzmq.git -b ${ZMQ_VERSION}     && cd libzmq     && test `git rev-parse HEAD` = ${ZMQ_HASH} || exit 1     && ./autogen.sh     && ./configure --enable-static --disable-shared     && make     && make install     && ldconfig" shape="box"];
  "sha256:d9f12d828cb323e2570906408846d8c5fcc185209db8e8cbd8a1d00efa864a87" [label="/bin/sh -c set -ex     && git clone https://github.com/zeromq/cppzmq.git -b ${CPPZMQ_VERSION}     && cd cppzmq     && test `git rev-parse HEAD` = ${CPPZMQ_HASH} || exit 1     && mv *.hpp /usr/local/include" shape="box"];
  "sha256:860fd6c8eb0f994f0887a6808dc33d63de3c553106f3aff11ae4e6ffbde9535e" [label="/bin/sh -c set -ex     && curl -s -O https://ftp.gnu.org/gnu/readline/readline-${READLINE_VERSION}.tar.gz     && echo \"${READLINE_HASH}  readline-${READLINE_VERSION}.tar.gz\" | sha256sum -c     && tar -xzf readline-${READLINE_VERSION}.tar.gz     && cd readline-${READLINE_VERSION}     && ./configure     && make     && make install" shape="box"];
  "sha256:1e7b2c8ba3140fb88cb5a0ccf9481cd73a92f6218057620fc4869e96e071ba65" [label="/bin/sh -c set -ex     && git clone https://github.com/jedisct1/libsodium.git -b ${SODIUM_VERSION}     && cd libsodium     && test `git rev-parse HEAD` = ${SODIUM_HASH} || exit 1     && ./autogen.sh     && ./configure     && make     && make check     && make install" shape="box"];
  "sha256:2d41007995f674056765b27c3d73e59d23db3208434bfb22e186e1fa5ecf7ccb" [label="/bin/sh -c set -ex     && git clone https://github.com/gentoo/eudev -b ${UDEV_VERSION}     && cd eudev     && test `git rev-parse HEAD` = ${UDEV_HASH} || exit 1     && ./autogen.sh     && ./configure --disable-gudev --disable-introspection --disable-hwdb --disable-manpages --disable-shared     && make     && make install" shape="box"];
  "sha256:566b071dd76629c574e48db52b1dce6b8e281b3d1c34348de311a4d244c50799" [label="/bin/sh -c set -ex     && git clone https://github.com/libusb/libusb.git -b ${USB_VERSION}     && cd libusb     && test `git rev-parse HEAD` = ${USB_HASH} || exit 1     && ./autogen.sh     && ./configure --disable-shared     && make     && make install" shape="box"];
  "sha256:91d06a8e7f465328fe6dca452eed7a31ec562a789d97da5d2c44e5419c7bc80b" [label="/bin/sh -c set -ex     && git clone https://github.com/signal11/hidapi -b ${HIDAPI_VERSION}     && cd hidapi     && test `git rev-parse HEAD` = ${HIDAPI_HASH} || exit 1     && ./bootstrap     && ./configure --enable-static --disable-shared     && make     && make install" shape="box"];
  "sha256:4942711ea2aa4b84989f7f631f79f05c8cdfa723ac74760e23471076da4c3f96" [label="/bin/sh -c set -ex     && git clone https://github.com/protocolbuffers/protobuf -b ${PROTOBUF_VERSION}     && cd protobuf     && test `git rev-parse HEAD` = ${PROTOBUF_HASH} || exit 1     && git submodule update --init --recursive     && ./autogen.sh     && ./configure --enable-static --disable-shared     && make     && make install     && ldconfig" shape="box"];
  "sha256:925012774d31d567d30a5ca5b585c17b1a38beb2386fcdec5ddf72f6ab18fd25" [label="/bin/sh -c set -ex &&     cd / &&     git clone https://github.com/monero-project/monero.git src &&     cd src &&     git checkout v0.14.0.2 &&     git submodule init && git submodule update &&     rm -rf build &&     if [ -z \"$NPROC\" ] ;     then make -j$(nproc) release-static ;     else make -j$NPROC release-static ;     fi" shape="box"];
  "sha256:0ee5449bda82617ede3f2232dbc80773ff4badfabe7c9d1ba569836d2f703509" [label="copy{src=/src/build/release/bin, dest=/usr/local/bin/}" shape="note"];
  "sha256:bfa033ae5b905c78592bda9a189b1e8c0129e700b9e25877c7e1632edd6a09b2" [label="/bin/sh -c adduser --system --group --disabled-password monero && \tmkdir -p /wallet /home/monero/.bitmonero && \tchown -R monero:monero /home/monero/.bitmonero && \tchown -R monero:monero /wallet" shape="box"];
  "sha256:f72c6522feae8d67f9be32cd2a26eea9412d4e20d08b988ca65bb8ecaaca270a" [label="/bin/sh -c apt-get update      && apt-get install -qqy nginx supervisor     && mkdir /supervisor     && rm -rf /etc/nginx/sites-enabled/default" shape="box"];
  "sha256:fb2076c915d59ac4d74c95e614f56c209ac8caf40a63df4ab06af46f9a4e79bb" [label="local://context" shape="ellipse"];
  "sha256:88008f22f382a0cad2c3cf99f57e45ad8a04d8fa1164ecff6f438da64c2c4be3" [label="copy{src=/supervisord.conf, dest=/supervisor/supervisord.conf}" shape="note"];
  "sha256:adc433d0333d4caef9e5c425f986745a6961e50ab7b462c6060f4f77f4d4f869" [label="copy{src=/conf, dest=/etc/nginx/conf.d/}" shape="note"];
  "sha256:d19fa1f0dcd9b8b243c4d07d4998929e21dc683ec606bc9b841988dcf69b767d" [label="sha256:d19fa1f0dcd9b8b243c4d07d4998929e21dc683ec606bc9b841988dcf69b767d" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:a10a673118493ab952079a283fe8e9ec833bc8690ee126ec8f065c7cd9a8bb0f" [label=""];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:d361139f174ed96b2b20975aaec59e0d0aceba8f9c137d19e9b0a2ee8ac1524e" [label=""];
  "sha256:d361139f174ed96b2b20975aaec59e0d0aceba8f9c137d19e9b0a2ee8ac1524e" -> "sha256:460d3f17e87fb663c8bf767b3f6dd7d79d9bb6d0d6f7824d1de4a71a2c624690" [label=""];
  "sha256:460d3f17e87fb663c8bf767b3f6dd7d79d9bb6d0d6f7824d1de4a71a2c624690" -> "sha256:153a5f2dc690e2c1cc0071b3e620cfffaf5ad237ae2da49d123f3250229bb18c" [label=""];
  "sha256:153a5f2dc690e2c1cc0071b3e620cfffaf5ad237ae2da49d123f3250229bb18c" -> "sha256:4fbb6c1548ec1905cb77be75934c25a6dfb8d6781848721d98ec489e9f9b6623" [label=""];
  "sha256:4fbb6c1548ec1905cb77be75934c25a6dfb8d6781848721d98ec489e9f9b6623" -> "sha256:8d7a26f08024dbd0ddc5307ad9152569571151017f9152de7dda70dfd4b5a10d" [label=""];
  "sha256:8d7a26f08024dbd0ddc5307ad9152569571151017f9152de7dda70dfd4b5a10d" -> "sha256:53f5660b65f519ea3d34ccc0b0addcad0297f5fa830c0e81b5cf80e15c7faf5b" [label=""];
  "sha256:53f5660b65f519ea3d34ccc0b0addcad0297f5fa830c0e81b5cf80e15c7faf5b" -> "sha256:d9f12d828cb323e2570906408846d8c5fcc185209db8e8cbd8a1d00efa864a87" [label=""];
  "sha256:d9f12d828cb323e2570906408846d8c5fcc185209db8e8cbd8a1d00efa864a87" -> "sha256:860fd6c8eb0f994f0887a6808dc33d63de3c553106f3aff11ae4e6ffbde9535e" [label=""];
  "sha256:860fd6c8eb0f994f0887a6808dc33d63de3c553106f3aff11ae4e6ffbde9535e" -> "sha256:1e7b2c8ba3140fb88cb5a0ccf9481cd73a92f6218057620fc4869e96e071ba65" [label=""];
  "sha256:1e7b2c8ba3140fb88cb5a0ccf9481cd73a92f6218057620fc4869e96e071ba65" -> "sha256:2d41007995f674056765b27c3d73e59d23db3208434bfb22e186e1fa5ecf7ccb" [label=""];
  "sha256:2d41007995f674056765b27c3d73e59d23db3208434bfb22e186e1fa5ecf7ccb" -> "sha256:566b071dd76629c574e48db52b1dce6b8e281b3d1c34348de311a4d244c50799" [label=""];
  "sha256:566b071dd76629c574e48db52b1dce6b8e281b3d1c34348de311a4d244c50799" -> "sha256:91d06a8e7f465328fe6dca452eed7a31ec562a789d97da5d2c44e5419c7bc80b" [label=""];
  "sha256:91d06a8e7f465328fe6dca452eed7a31ec562a789d97da5d2c44e5419c7bc80b" -> "sha256:4942711ea2aa4b84989f7f631f79f05c8cdfa723ac74760e23471076da4c3f96" [label=""];
  "sha256:4942711ea2aa4b84989f7f631f79f05c8cdfa723ac74760e23471076da4c3f96" -> "sha256:925012774d31d567d30a5ca5b585c17b1a38beb2386fcdec5ddf72f6ab18fd25" [label=""];
  "sha256:a10a673118493ab952079a283fe8e9ec833bc8690ee126ec8f065c7cd9a8bb0f" -> "sha256:0ee5449bda82617ede3f2232dbc80773ff4badfabe7c9d1ba569836d2f703509" [label=""];
  "sha256:925012774d31d567d30a5ca5b585c17b1a38beb2386fcdec5ddf72f6ab18fd25" -> "sha256:0ee5449bda82617ede3f2232dbc80773ff4badfabe7c9d1ba569836d2f703509" [label=""];
  "sha256:0ee5449bda82617ede3f2232dbc80773ff4badfabe7c9d1ba569836d2f703509" -> "sha256:bfa033ae5b905c78592bda9a189b1e8c0129e700b9e25877c7e1632edd6a09b2" [label=""];
  "sha256:bfa033ae5b905c78592bda9a189b1e8c0129e700b9e25877c7e1632edd6a09b2" -> "sha256:f72c6522feae8d67f9be32cd2a26eea9412d4e20d08b988ca65bb8ecaaca270a" [label=""];
  "sha256:f72c6522feae8d67f9be32cd2a26eea9412d4e20d08b988ca65bb8ecaaca270a" -> "sha256:88008f22f382a0cad2c3cf99f57e45ad8a04d8fa1164ecff6f438da64c2c4be3" [label=""];
  "sha256:fb2076c915d59ac4d74c95e614f56c209ac8caf40a63df4ab06af46f9a4e79bb" -> "sha256:88008f22f382a0cad2c3cf99f57e45ad8a04d8fa1164ecff6f438da64c2c4be3" [label=""];
  "sha256:88008f22f382a0cad2c3cf99f57e45ad8a04d8fa1164ecff6f438da64c2c4be3" -> "sha256:adc433d0333d4caef9e5c425f986745a6961e50ab7b462c6060f4f77f4d4f869" [label=""];
  "sha256:fb2076c915d59ac4d74c95e614f56c209ac8caf40a63df4ab06af46f9a4e79bb" -> "sha256:adc433d0333d4caef9e5c425f986745a6961e50ab7b462c6060f4f77f4d4f869" [label=""];
  "sha256:adc433d0333d4caef9e5c425f986745a6961e50ab7b462c6060f4f77f4d4f869" -> "sha256:d19fa1f0dcd9b8b243c4d07d4998929e21dc683ec606bc9b841988dcf69b767d" [label=""];
}
