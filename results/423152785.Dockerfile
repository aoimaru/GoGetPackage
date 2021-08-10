[app/sources/423152785.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:e62bf3a7bd5a1246e2c9aa16d0d5c59cb0c7377ad56e0004a1be20ca7db44997" [label="/bin/sh -c echo 'APT::Install-Recommends 0;' >> /etc/apt/apt.conf.d/01norecommends   && echo 'APT::Install-Suggests 0;' >> /etc/apt/apt.conf.d/01norecommends   && apt-get update   && DEBIAN_FRONTEND=noninteractive apt-get install -y sudo wget curl net-tools ca-certificates unzip gnupg" shape="box"];
  "sha256:0e7762b614f7800a9e8fb24934a08d6475f9b5c61b3393da4a4145279c284345" [label="/bin/sh -c echo \"deb http://apt.llvm.org/bionic/ llvm-toolchain-bionic main\" >> /etc/apt/sources.list.d/llvm.list   && wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key|sudo apt-key add -   && apt-get update   && DEBIAN_FRONTEND=noninteractive apt-get install -y git-core automake autoconf libtool build-essential pkg-config libtool      mpi-default-dev libicu-dev python-dev python3-dev libbz2-dev zlib1g-dev libssl-dev libgmp-dev      clang-4.0 lldb-4.0 lld-4.0 llvm-4.0-dev libclang-4.0-dev ninja-build" shape="box"];
  "sha256:6e92ecf8c15e21a7a960d676f30acd4393b492788d60002b9a092b1d1e4413e9" [label="/bin/sh -c update-alternatives --install /usr/bin/clang clang /usr/lib/llvm-4.0/bin/clang 400   && update-alternatives --install /usr/bin/clang++ clang++ /usr/lib/llvm-4.0/bin/clang++ 400" shape="box"];
  "sha256:548f82130ab405b7eaa472df5dedab3e9364f45c4ffb9e0ccb9656ea4e4c1050" [label="/bin/sh -c curl -L https://cmake.org/files/v3.9/cmake-3.9.6-Linux-x86_64.sh -o cmake-3.9.6-Linux-x86_64.sh     && bash cmake-3.9.6-Linux-x86_64.sh --prefix=/usr/local --exclude-subdir --skip-license     && rm cmake-3.9.6-Linux-x86_64.sh" shape="box"];
  "sha256:0321c5114dd4e26e2ed4c2cd55a57c3494310d3c55672e3cf2ba86991de19c48" [label="/bin/sh -c curl -L https://dl.bintray.com/boostorg/release/1.67.0/source/boost_1_67_0.tar.bz2 | tar -xj     && cd boost_1_67_0     && ./bootstrap.sh --prefix=/usr/local     && echo 'using clang : 4.0 : clang++-4.0 ;' >> project-config.jam     && ./b2 -d0 -j$(nproc) --with-thread --with-date_time --with-system --with-filesystem --with-program_options        --with-signals --with-serialization --with-chrono --with-test --with-context --with-locale --with-coroutine --with-iostreams toolset=clang link=static install     && cd .. && rm -rf boost_1_67_0" shape="box"];
  "sha256:fb1bbff6f12e4e5ec15b5067238fe63559789355f649a4fba5ac1df1acad578d" [label="/bin/sh -c git clone --depth 1 --single-branch --branch release_40 https://github.com/llvm-mirror/llvm.git     && git clone --depth 1 --single-branch --branch release_40 https://github.com/llvm-mirror/clang.git llvm/tools/clang     && cd llvm     && cmake -H. -Bbuild -GNinja -DCMAKE_INSTALL_PREFIX=/opt/wasm -DLLVM_TARGETS_TO_BUILD= -DLLVM_EXPERIMENTAL_TARGETS_TO_BUILD=WebAssembly -DCMAKE_BUILD_TYPE=Release      && cmake --build build --target install     && cd .. && rm -rf llvm" shape="box"];
  "sha256:1039985cc8e94b726b99c21826a9f0a871c8833ae9a78f9b74bbfe27e468e429" [label="/bin/sh -c curl -L https://github.com/WebAssembly/binaryen/archive/1.37.21.tar.gz | tar -xz     && cd binaryen-1.37.21     && cmake -H. -Bbuild -GNinja -DCMAKE_BUILD_TYPE=Release     && cmake --build build --target install     && cd .. && rm -rf binaryen-1.37.21" shape="box"];
  "sha256:7659c8a975345bb71e6ef0aa948678e1b2b88e6320da8038fdc59a31742aad7d" [label="/bin/sh -c git clone --depth 1 https://github.com/cryptonomex/secp256k1-zkp     && cd secp256k1-zkp     && ./autogen.sh     && ./configure --prefix=/usr/local     && make -j$(nproc) install     && cd .. && rm -rf secp256k1-zkp" shape="box"];
  "sha256:3b15b09356ce6b84b027650e38d7cc7909bab568e358242cb5dce91cbebdd826" [label="/bin/sh -c git clone --depth 1 --single-branch --branch master https://github.com/ucb-bar/berkeley-softfloat-3.git     && cd berkeley-softfloat-3/build/Linux-x86_64-GCC     && make -j${nproc} SPECIALIZE_TYPE=\"8086-SSE\" SOFTFLOAT_OPS=\"-DSOFTFLOAT_ROUND_EVEN -DINLINE_LEVEL=5 -DSOFTFLOAT_FAST_DIV32TO16 -DSOFTFLOAT_FAST_DIV64TO32\"     && mkdir -p /opt/berkeley-softfloat-3 && cp softfloat.a /opt/berkeley-softfloat-3/libsoftfloat.a     && mv ../../source/include /opt/berkeley-softfloat-3/include && cd - && rm -rf berkeley-softfloat-3" shape="box"];
  "sha256:4028ecfd7784cbb5fea13dd8072ecef668bfe1c80d3f9e85d58d53ac3312705a" [label="/bin/sh -c git clone --depth 1 --single-branch --branch master https://github.com/edenhill/librdkafka     && cd librdkafka && cmake -H. -B_cmake_build && cmake -DRDKAFKA_BUILD_STATIC=1 --build _cmake_build     && cd _cmake_build && make install" shape="box"];
  "sha256:1c80e6b1299ba6a6e960166a647e05f1ad570f29f9d361882a1bd53d3ac51ee8" [label="/bin/sh -c git clone --depth 1 --single-branch --branch master https://github.com/mfontanini/cppkafka     && cd cppkafka && mkdir build && cd build && cmake -DCPPKAFKA_RDKAFKA_STATIC_LIB=1 -DCPPKAFKA_BUILD_SHARED=0 ..     && make install" shape="box"];
  "sha256:e6f760abb2cbfe580775951404b13beecd2235c59abd15e8f051be3827778c4a" [label="/bin/sh -c apt-get install -y libodb-2.4 libodb-boost-2.4 libodb-mysql-2.4 libodb-dev libodb-boost-dev libodb-mysql-dev libmysqlclient-dev" shape="box"];
  "sha256:2bc3a1a50a55b31276a05261f7ccea822f60e2d02c1664f7bc0c31bd8cd8f4bc" [label="/bin/sh -c rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e3cd895351f928cffc95dae891ac0dfd187a0b6c951843410eac426900993f5c" [label="sha256:e3cd895351f928cffc95dae891ac0dfd187a0b6c951843410eac426900993f5c" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:e62bf3a7bd5a1246e2c9aa16d0d5c59cb0c7377ad56e0004a1be20ca7db44997" [label=""];
  "sha256:e62bf3a7bd5a1246e2c9aa16d0d5c59cb0c7377ad56e0004a1be20ca7db44997" -> "sha256:0e7762b614f7800a9e8fb24934a08d6475f9b5c61b3393da4a4145279c284345" [label=""];
  "sha256:0e7762b614f7800a9e8fb24934a08d6475f9b5c61b3393da4a4145279c284345" -> "sha256:6e92ecf8c15e21a7a960d676f30acd4393b492788d60002b9a092b1d1e4413e9" [label=""];
  "sha256:6e92ecf8c15e21a7a960d676f30acd4393b492788d60002b9a092b1d1e4413e9" -> "sha256:548f82130ab405b7eaa472df5dedab3e9364f45c4ffb9e0ccb9656ea4e4c1050" [label=""];
  "sha256:548f82130ab405b7eaa472df5dedab3e9364f45c4ffb9e0ccb9656ea4e4c1050" -> "sha256:0321c5114dd4e26e2ed4c2cd55a57c3494310d3c55672e3cf2ba86991de19c48" [label=""];
  "sha256:0321c5114dd4e26e2ed4c2cd55a57c3494310d3c55672e3cf2ba86991de19c48" -> "sha256:fb1bbff6f12e4e5ec15b5067238fe63559789355f649a4fba5ac1df1acad578d" [label=""];
  "sha256:fb1bbff6f12e4e5ec15b5067238fe63559789355f649a4fba5ac1df1acad578d" -> "sha256:1039985cc8e94b726b99c21826a9f0a871c8833ae9a78f9b74bbfe27e468e429" [label=""];
  "sha256:1039985cc8e94b726b99c21826a9f0a871c8833ae9a78f9b74bbfe27e468e429" -> "sha256:7659c8a975345bb71e6ef0aa948678e1b2b88e6320da8038fdc59a31742aad7d" [label=""];
  "sha256:7659c8a975345bb71e6ef0aa948678e1b2b88e6320da8038fdc59a31742aad7d" -> "sha256:3b15b09356ce6b84b027650e38d7cc7909bab568e358242cb5dce91cbebdd826" [label=""];
  "sha256:3b15b09356ce6b84b027650e38d7cc7909bab568e358242cb5dce91cbebdd826" -> "sha256:4028ecfd7784cbb5fea13dd8072ecef668bfe1c80d3f9e85d58d53ac3312705a" [label=""];
  "sha256:4028ecfd7784cbb5fea13dd8072ecef668bfe1c80d3f9e85d58d53ac3312705a" -> "sha256:1c80e6b1299ba6a6e960166a647e05f1ad570f29f9d361882a1bd53d3ac51ee8" [label=""];
  "sha256:1c80e6b1299ba6a6e960166a647e05f1ad570f29f9d361882a1bd53d3ac51ee8" -> "sha256:e6f760abb2cbfe580775951404b13beecd2235c59abd15e8f051be3827778c4a" [label=""];
  "sha256:e6f760abb2cbfe580775951404b13beecd2235c59abd15e8f051be3827778c4a" -> "sha256:2bc3a1a50a55b31276a05261f7ccea822f60e2d02c1664f7bc0c31bd8cd8f4bc" [label=""];
  "sha256:2bc3a1a50a55b31276a05261f7ccea822f60e2d02c1664f7bc0c31bd8cd8f4bc" -> "sha256:e3cd895351f928cffc95dae891ac0dfd187a0b6c951843410eac426900993f5c" [label=""];
}

