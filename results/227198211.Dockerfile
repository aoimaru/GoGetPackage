[app/sources/227198211.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:35a84de74f8a846ee7512d14c5e084c20602102f472d9b846f39da51e55c7564" [label="/bin/sh -c echo \"deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-3.9 main\" >> /etc/apt/sources.list" shape="box"];
  "sha256:6b81ad1105d4bd3c6707d11e1f74184e6cfe738035261701668172714e69c4ff" [label="/bin/sh -c echo \"deb-src http://apt.llvm.org/xenial/ llvm-toolchain-xenial-3.9 main\" >> /etc/apt/sources.list" shape="box"];
  "sha256:c0631bee890279a10d64d56402bd3785060dfea9091a7ca552eb10eb4b1e758c" [label="/bin/sh -c apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 15CF4D18AF4F7421" shape="box"];
  "sha256:cc40265f3517325bed0cee6b9a80369ac1e08ec2b7c41f181d31c0fb4e70ef83" [label="/bin/sh -c apt-get -y update" shape="box"];
  "sha256:33febe3332cf50a8879438451263436479a5bec05c6e5559f1e205486fb6218a" [label="/bin/sh -c apt-get -y upgrade" shape="box"];
  "sha256:f506926654f58a9a861598810195450325443e10fa142e7f266289b141583a42" [label="/bin/sh -c apt-get -y install build-essential git python curl libclang1-3.9" shape="box"];
  "sha256:abb768a64633010e47302f4e28f993750ec3df9deeca1edc334398d8f1e5f4d9" [label="/bin/sh -c groupadd --gid ${BUILD_GID} build" shape="box"];
  "sha256:e9638a1ac4e28f2a5eff3c5a6eec6933c5332fad972909a03dd7a02c80395b06" [label="/bin/sh -c useradd --uid ${BUILD_UID} --gid ${BUILD_GID} --create-home build" shape="box"];
  "sha256:24caa4d44c14d584e21b02283d9a08d86d61a683440d4cedc084758ec45c6f65" [label="/bin/sh -c mkdir /emsdk" shape="box"];
  "sha256:1d10726bceca093982f24963b36c874fe1e420b8f848be6779212a8dc3de977f" [label="/bin/sh -c chown build:build /emsdk" shape="box"];
  "sha256:15ecb066814608b19afdbb326b4e3b6850fb67e2fdd06209f8e8fad78729b5fc" [label="/bin/sh -c git clone https://github.com/juj/emsdk.git /emsdk" shape="box"];
  "sha256:9831eb9bfd103aec61098c20887c4cc229160ca31b056f6461db085adddf4f75" [label="/bin/sh -c /emsdk/emsdk install -j1 latest" shape="box"];
  "sha256:9659bff7ffc4ab98775b173bcd6e204948a53728c7c46d111cc8456a6ce87bd5" [label="/bin/sh -c /emsdk/emsdk activate latest" shape="box"];
  "sha256:bbae2c1445bd6e277ca3fb67b5401658b7bf95be99862a67f37aafb9401acc90" [label="/bin/sh -c curl -sSf https://build.travis-ci.org/files/rustup-init.sh | sh -s -- --default-toolchain=$RUST_VERSION -y" shape="box"];
  "sha256:301cc59f449f92a8c971da406ec34782322e44ae0ab81338516ca1116a445d51" [label="/bin/sh -c rustup target add asmjs-unknown-emscripten" shape="box"];
  "sha256:f872df03732fb56a7b12fe7cc2531abbb3bd0ec835ee06796e1c3695aa10db5f" [label="sha256:f872df03732fb56a7b12fe7cc2531abbb3bd0ec835ee06796e1c3695aa10db5f" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:35a84de74f8a846ee7512d14c5e084c20602102f472d9b846f39da51e55c7564" [label=""];
  "sha256:35a84de74f8a846ee7512d14c5e084c20602102f472d9b846f39da51e55c7564" -> "sha256:6b81ad1105d4bd3c6707d11e1f74184e6cfe738035261701668172714e69c4ff" [label=""];
  "sha256:6b81ad1105d4bd3c6707d11e1f74184e6cfe738035261701668172714e69c4ff" -> "sha256:c0631bee890279a10d64d56402bd3785060dfea9091a7ca552eb10eb4b1e758c" [label=""];
  "sha256:c0631bee890279a10d64d56402bd3785060dfea9091a7ca552eb10eb4b1e758c" -> "sha256:cc40265f3517325bed0cee6b9a80369ac1e08ec2b7c41f181d31c0fb4e70ef83" [label=""];
  "sha256:cc40265f3517325bed0cee6b9a80369ac1e08ec2b7c41f181d31c0fb4e70ef83" -> "sha256:33febe3332cf50a8879438451263436479a5bec05c6e5559f1e205486fb6218a" [label=""];
  "sha256:33febe3332cf50a8879438451263436479a5bec05c6e5559f1e205486fb6218a" -> "sha256:f506926654f58a9a861598810195450325443e10fa142e7f266289b141583a42" [label=""];
  "sha256:f506926654f58a9a861598810195450325443e10fa142e7f266289b141583a42" -> "sha256:abb768a64633010e47302f4e28f993750ec3df9deeca1edc334398d8f1e5f4d9" [label=""];
  "sha256:abb768a64633010e47302f4e28f993750ec3df9deeca1edc334398d8f1e5f4d9" -> "sha256:e9638a1ac4e28f2a5eff3c5a6eec6933c5332fad972909a03dd7a02c80395b06" [label=""];
  "sha256:e9638a1ac4e28f2a5eff3c5a6eec6933c5332fad972909a03dd7a02c80395b06" -> "sha256:24caa4d44c14d584e21b02283d9a08d86d61a683440d4cedc084758ec45c6f65" [label=""];
  "sha256:24caa4d44c14d584e21b02283d9a08d86d61a683440d4cedc084758ec45c6f65" -> "sha256:1d10726bceca093982f24963b36c874fe1e420b8f848be6779212a8dc3de977f" [label=""];
  "sha256:1d10726bceca093982f24963b36c874fe1e420b8f848be6779212a8dc3de977f" -> "sha256:15ecb066814608b19afdbb326b4e3b6850fb67e2fdd06209f8e8fad78729b5fc" [label=""];
  "sha256:15ecb066814608b19afdbb326b4e3b6850fb67e2fdd06209f8e8fad78729b5fc" -> "sha256:9831eb9bfd103aec61098c20887c4cc229160ca31b056f6461db085adddf4f75" [label=""];
  "sha256:9831eb9bfd103aec61098c20887c4cc229160ca31b056f6461db085adddf4f75" -> "sha256:9659bff7ffc4ab98775b173bcd6e204948a53728c7c46d111cc8456a6ce87bd5" [label=""];
  "sha256:9659bff7ffc4ab98775b173bcd6e204948a53728c7c46d111cc8456a6ce87bd5" -> "sha256:bbae2c1445bd6e277ca3fb67b5401658b7bf95be99862a67f37aafb9401acc90" [label=""];
  "sha256:bbae2c1445bd6e277ca3fb67b5401658b7bf95be99862a67f37aafb9401acc90" -> "sha256:301cc59f449f92a8c971da406ec34782322e44ae0ab81338516ca1116a445d51" [label=""];
  "sha256:301cc59f449f92a8c971da406ec34782322e44ae0ab81338516ca1116a445d51" -> "sha256:f872df03732fb56a7b12fe7cc2531abbb3bd0ec835ee06796e1c3695aa10db5f" [label=""];
}

