[app/sources/223615045.Dockerfile]
digraph {
  "sha256:a12df75446ebf790ff79cae14801b087e47c679740d4fed1421c672c6384c8c6" [label="docker-image://gcr.io/oss-fuzz-base/base-builder@sha256:bf1e92fe80dccfaf45d0968c52bc68412dd7b0b3a792c6e623608ad9a44cfd92" shape="ellipse"];
  "sha256:259a21c39634c87f8a7abe0247c0d6964a582141a4ca59cdb898b9157680b155" [label="/bin/sh -c apt-get update && apt-get install -y \tautoconf autoconf-archive \tautomake \tgengetopt \tgtk-doc-tools \tlibconfig-dev \tlibglib2.0-dev \tlibgnutls-dev \tlibini-config-dev \tlibjansson-dev \tlibnice-dev \tlibssl-dev \tlibtool \topenssl \tpkg-config" shape="box"];
  "sha256:7819a6a8f2b53e79ac5a5997155ef5d580898e992a45d1c0b5502b97708c8ae8" [label="/bin/sh -c git clone --single-branch --branch 2_2_x_throttle https://github.com/cisco/libsrtp.git libsrtp" shape="box"];
  "sha256:2d9e880d90f3aaa7f5bc300c2ed4458deb4462975bd5076e75fe18b1c90ea389" [label="/bin/sh -c cd libsrtp && ./configure --enable-openssl && make -j$(nproc) shared_library && make install" shape="box"];
  "sha256:a6c3bc62625998f1d435ebfe5714914d4bde81581d5fd2a465b3a988ce27ca98" [label="/bin/sh -c git clone --single-branch --branch master https://github.com/meetecho/janus-gateway.git janus-gateway" shape="box"];
  "sha256:0c7fa2d93c06eb05ec9dc2eabb7d6958ebeed5dcb6ea4433f44c56cffef80bf1" [label="mkdir{path=/src}" shape="note"];
  "sha256:f2e3db7b5704d78c4e603455a98151bef39237fd64d6d892208dae92f4a44a16" [label="local://context" shape="ellipse"];
  "sha256:6d2c6604361f5b2cfe9a2a01600acc233d76ed44d432b7c115719da65e39de87" [label="copy{src=/build.sh, dest=/src/}" shape="note"];
  "sha256:ec362c6e98a6fcffdf54e89a46fdfea5bd258c50e8fdfa78090baa4330bdf7be" [label="sha256:ec362c6e98a6fcffdf54e89a46fdfea5bd258c50e8fdfa78090baa4330bdf7be" shape="plaintext"];
  "sha256:a12df75446ebf790ff79cae14801b087e47c679740d4fed1421c672c6384c8c6" -> "sha256:259a21c39634c87f8a7abe0247c0d6964a582141a4ca59cdb898b9157680b155" [label=""];
  "sha256:259a21c39634c87f8a7abe0247c0d6964a582141a4ca59cdb898b9157680b155" -> "sha256:7819a6a8f2b53e79ac5a5997155ef5d580898e992a45d1c0b5502b97708c8ae8" [label=""];
  "sha256:7819a6a8f2b53e79ac5a5997155ef5d580898e992a45d1c0b5502b97708c8ae8" -> "sha256:2d9e880d90f3aaa7f5bc300c2ed4458deb4462975bd5076e75fe18b1c90ea389" [label=""];
  "sha256:2d9e880d90f3aaa7f5bc300c2ed4458deb4462975bd5076e75fe18b1c90ea389" -> "sha256:a6c3bc62625998f1d435ebfe5714914d4bde81581d5fd2a465b3a988ce27ca98" [label=""];
  "sha256:a6c3bc62625998f1d435ebfe5714914d4bde81581d5fd2a465b3a988ce27ca98" -> "sha256:0c7fa2d93c06eb05ec9dc2eabb7d6958ebeed5dcb6ea4433f44c56cffef80bf1" [label=""];
  "sha256:0c7fa2d93c06eb05ec9dc2eabb7d6958ebeed5dcb6ea4433f44c56cffef80bf1" -> "sha256:6d2c6604361f5b2cfe9a2a01600acc233d76ed44d432b7c115719da65e39de87" [label=""];
  "sha256:f2e3db7b5704d78c4e603455a98151bef39237fd64d6d892208dae92f4a44a16" -> "sha256:6d2c6604361f5b2cfe9a2a01600acc233d76ed44d432b7c115719da65e39de87" [label=""];
  "sha256:6d2c6604361f5b2cfe9a2a01600acc233d76ed44d432b7c115719da65e39de87" -> "sha256:ec362c6e98a6fcffdf54e89a46fdfea5bd258c50e8fdfa78090baa4330bdf7be" [label=""];
}

