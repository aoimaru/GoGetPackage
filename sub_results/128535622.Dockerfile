[app/sub_sources/128535622.Dockerfile]
digraph {
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" [label="docker-image://docker.io/library/ubuntu:16.04@sha256:6a3ac136b6ca623d6a6fa20a7622f098b2fae1ac05f0114386ef439d8ca89a4a" shape="ellipse"];
  "sha256:16e688378d374734a1d8bbe1c898e0965a8f25eacfcdd2087c7510c77049bc1c" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends   autoconf   automake   bison   bzip2   ca-certificates   cmake   curl   file   flex   g++   gawk   git   libcurl4-openssl-dev   libssl-dev   make   nasm   pkg-config   python2.7   sudo   texinfo   wget   xz-utils   zlib1g-dev" shape="box"];
  "sha256:ba2b6c5f02c4cc55803dbe833dc3d965690a4d09f9d2154ddc65cc7840d9ec4d" [label="local://context" shape="ellipse"];
  "sha256:56fa864d3c7065765323b8f16a0257fc8dca840a988a08b751a03655148157dd" [label="copy{src=/dist-x86_64-haiku/llvm-config.sh, dest=/bin/llvm-config-haiku}" shape="note"];
  "sha256:f876c5bf2414d97ee8eda11d10cadf8e71ae169bb8cee0cffbe437bbb8e52f09" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:d57362274488cde10a335c3186ffaa047ad020807263b35069205cc5000b18d6" [label="copy{src=/dist-x86_64-haiku/build-toolchain.sh, dest=/tmp/}" shape="note"];
  "sha256:48772285d934104bfe9b13b8570604e74761f4d3280eabaa4065ef0dfd599d6e" [label="/bin/sh -c /tmp/build-toolchain.sh $ARCH" shape="box"];
  "sha256:88797e13a1f39768ef4284cdec5728f57830796d19bbc3089ba37e71e5f5a770" [label="copy{src=/dist-x86_64-haiku/fetch-packages.sh, dest=/tmp/}" shape="note"];
  "sha256:7b838dcfbbea369c62f94806d5472482346594b59ceb7029c9752879e028d5ee" [label="/bin/sh -c /tmp/fetch-packages.sh" shape="box"];
  "sha256:01e4b3fdeb7b8814335e72c08792d336cc100e239f9248693de38e65f1574549" [label="copy{src=/scripts/sccache.sh, dest=/scripts/}" shape="note"];
  "sha256:50f229bfb08d2ace56f28005f7d48da97ac8e4816e09f0eacef7266e416b99ca" [label="/bin/sh -c sh /scripts/sccache.sh" shape="box"];
  "sha256:a3803ebf880c6af449e841fb5ace389b592193dcb8be51b98a804c314de33389" [label="sha256:a3803ebf880c6af449e841fb5ace389b592193dcb8be51b98a804c314de33389" shape="plaintext"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" -> "sha256:16e688378d374734a1d8bbe1c898e0965a8f25eacfcdd2087c7510c77049bc1c" [label=""];
  "sha256:16e688378d374734a1d8bbe1c898e0965a8f25eacfcdd2087c7510c77049bc1c" -> "sha256:56fa864d3c7065765323b8f16a0257fc8dca840a988a08b751a03655148157dd" [label=""];
  "sha256:ba2b6c5f02c4cc55803dbe833dc3d965690a4d09f9d2154ddc65cc7840d9ec4d" -> "sha256:56fa864d3c7065765323b8f16a0257fc8dca840a988a08b751a03655148157dd" [label=""];
  "sha256:56fa864d3c7065765323b8f16a0257fc8dca840a988a08b751a03655148157dd" -> "sha256:f876c5bf2414d97ee8eda11d10cadf8e71ae169bb8cee0cffbe437bbb8e52f09" [label=""];
  "sha256:f876c5bf2414d97ee8eda11d10cadf8e71ae169bb8cee0cffbe437bbb8e52f09" -> "sha256:d57362274488cde10a335c3186ffaa047ad020807263b35069205cc5000b18d6" [label=""];
  "sha256:ba2b6c5f02c4cc55803dbe833dc3d965690a4d09f9d2154ddc65cc7840d9ec4d" -> "sha256:d57362274488cde10a335c3186ffaa047ad020807263b35069205cc5000b18d6" [label=""];
  "sha256:d57362274488cde10a335c3186ffaa047ad020807263b35069205cc5000b18d6" -> "sha256:48772285d934104bfe9b13b8570604e74761f4d3280eabaa4065ef0dfd599d6e" [label=""];
  "sha256:48772285d934104bfe9b13b8570604e74761f4d3280eabaa4065ef0dfd599d6e" -> "sha256:88797e13a1f39768ef4284cdec5728f57830796d19bbc3089ba37e71e5f5a770" [label=""];
  "sha256:ba2b6c5f02c4cc55803dbe833dc3d965690a4d09f9d2154ddc65cc7840d9ec4d" -> "sha256:88797e13a1f39768ef4284cdec5728f57830796d19bbc3089ba37e71e5f5a770" [label=""];
  "sha256:88797e13a1f39768ef4284cdec5728f57830796d19bbc3089ba37e71e5f5a770" -> "sha256:7b838dcfbbea369c62f94806d5472482346594b59ceb7029c9752879e028d5ee" [label=""];
  "sha256:7b838dcfbbea369c62f94806d5472482346594b59ceb7029c9752879e028d5ee" -> "sha256:01e4b3fdeb7b8814335e72c08792d336cc100e239f9248693de38e65f1574549" [label=""];
  "sha256:ba2b6c5f02c4cc55803dbe833dc3d965690a4d09f9d2154ddc65cc7840d9ec4d" -> "sha256:01e4b3fdeb7b8814335e72c08792d336cc100e239f9248693de38e65f1574549" [label=""];
  "sha256:01e4b3fdeb7b8814335e72c08792d336cc100e239f9248693de38e65f1574549" -> "sha256:50f229bfb08d2ace56f28005f7d48da97ac8e4816e09f0eacef7266e416b99ca" [label=""];
  "sha256:50f229bfb08d2ace56f28005f7d48da97ac8e4816e09f0eacef7266e416b99ca" -> "sha256:a3803ebf880c6af449e841fb5ace389b592193dcb8be51b98a804c314de33389" [label=""];
}

