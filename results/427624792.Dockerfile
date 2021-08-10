[app/sources/427624792.Dockerfile]
digraph {
  "sha256:c44a6351d54c46fc58b0c3a6d5743e474733f6eefd66bc48e181e8e7a3e9ca15" [label="docker-image://docker.io/balenalib/armv7hf-debian:stretch@sha256:ceaa2eb1ce06eb10368949aaec33d2836f56d0e3b885898a2acec3ea5339591b" shape="ellipse"];
  "sha256:22a33af6445cb49b94f7358dd560edcc7cac863b4f9ec468b44ef519c8a87a83" [label="/bin/sh -c install_packages     make     libc6-dev     clang-3.8     curl     libedit-dev     libpython2.7     libicu-dev     libssl-dev     libxml2     tzdata     git     libcurl4-nss-dev     pkg-config     && update-alternatives --quiet --install /usr/bin/clang clang /usr/bin/clang-3.8 100     && update-alternatives --quiet --install /usr/bin/clang++ clang++ /usr/bin/clang++-3.8 100" shape="box"];
  "sha256:580895263fe53287b5413cfb00c4d739b33a27c9e319ac9e143fc89bf06bfb0d" [label="mkdir{path=/swift}" shape="note"];
  "sha256:3cd670d529e96f376f927e09b01664828c8b07a8d41857e78d9dd223348a10ad" [label="/bin/sh -c curl -L -o $TARBALL_FILE $TARBALL_URL     && tar -xvzf $TARBALL_FILE -C /swift     && rm $TARBALL_FILE" shape="box"];
  "sha256:efabd7204ce9b5febc5e4a6200b7f68e97a04f6edcd7581a0948bead9dc50c6a" [label="copy{src=/swift, dest=/}" shape="note"];
  "sha256:e4c7085afccb97a7b0d6ca4e709f9551a5e80be6d1973bcec4796acda229066f" [label="/bin/sh -c swift --version" shape="box"];
  "sha256:f8a966d3540f04e21b6a86a280958933376ebc4acf0c2b2fdabbb5f991bca4e8" [label="sha256:f8a966d3540f04e21b6a86a280958933376ebc4acf0c2b2fdabbb5f991bca4e8" shape="plaintext"];
  "sha256:c44a6351d54c46fc58b0c3a6d5743e474733f6eefd66bc48e181e8e7a3e9ca15" -> "sha256:22a33af6445cb49b94f7358dd560edcc7cac863b4f9ec468b44ef519c8a87a83" [label=""];
  "sha256:c44a6351d54c46fc58b0c3a6d5743e474733f6eefd66bc48e181e8e7a3e9ca15" -> "sha256:580895263fe53287b5413cfb00c4d739b33a27c9e319ac9e143fc89bf06bfb0d" [label=""];
  "sha256:580895263fe53287b5413cfb00c4d739b33a27c9e319ac9e143fc89bf06bfb0d" -> "sha256:3cd670d529e96f376f927e09b01664828c8b07a8d41857e78d9dd223348a10ad" [label=""];
  "sha256:22a33af6445cb49b94f7358dd560edcc7cac863b4f9ec468b44ef519c8a87a83" -> "sha256:efabd7204ce9b5febc5e4a6200b7f68e97a04f6edcd7581a0948bead9dc50c6a" [label=""];
  "sha256:3cd670d529e96f376f927e09b01664828c8b07a8d41857e78d9dd223348a10ad" -> "sha256:efabd7204ce9b5febc5e4a6200b7f68e97a04f6edcd7581a0948bead9dc50c6a" [label=""];
  "sha256:efabd7204ce9b5febc5e4a6200b7f68e97a04f6edcd7581a0948bead9dc50c6a" -> "sha256:e4c7085afccb97a7b0d6ca4e709f9551a5e80be6d1973bcec4796acda229066f" [label=""];
  "sha256:e4c7085afccb97a7b0d6ca4e709f9551a5e80be6d1973bcec4796acda229066f" -> "sha256:f8a966d3540f04e21b6a86a280958933376ebc4acf0c2b2fdabbb5f991bca4e8" [label=""];
}

