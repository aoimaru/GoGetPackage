[app/sources/231287828.Dockerfile]
digraph {
  "sha256:a582998c16d728aeda3beafbe0c7ecbc39c767b6ec1a1cbcc4864593507a6615" [label="docker-image://docker.io/library/strato-build:latest" shape="ellipse"];
  "sha256:490e3d565cb7c0b7ffacda9055aa183fce840d4d8354f6ce834d981e42129f21" [label="/bin/sh -c wget -P /usr/src/ https://www.kernel.org/pub/linux/kernel/people/tytso/e2fsprogs/v${VERSION}/e2fsprogs-${VERSION}.tar.xz" shape="box"];
  "sha256:bda7e2fef1b979dc89fc5b1c240130e13141dd86e656e5ef9658f7ff3b6520d2" [label="/bin/sh -c cd /usr/src/ && tar xf e2fsprogs*" shape="box"];
  "sha256:a03be6d264682361f120cf229d2ac941f5f394f0f97977f745d4a5be4fca3ecb" [label="/bin/sh -c cd /usr/src/e2fsprogs*     && ./configure     --mandir=/usr/share/man     --enable-elf-shlibs     --enable-symlink-install     --disable-fsck     --disable-uuidd     --disable-libuuid     --disable-libblkid     --disable-tls     --disable-nls     && make" shape="box"];
  "sha256:7eb9ecc150f0e8f706924da63fd4d5a4b7d8ce85c3b20d7f436b51d4963fa63b" [label="/bin/sh -c cd /usr/src/e2fsprogs*     && make install install-libs" shape="box"];
  "sha256:c0d8ca4f439fffc7bac6341cb74ec39539a018d43d1b647980bbb9e80ddc2c5f" [label="sha256:c0d8ca4f439fffc7bac6341cb74ec39539a018d43d1b647980bbb9e80ddc2c5f" shape="plaintext"];
  "sha256:a582998c16d728aeda3beafbe0c7ecbc39c767b6ec1a1cbcc4864593507a6615" -> "sha256:490e3d565cb7c0b7ffacda9055aa183fce840d4d8354f6ce834d981e42129f21" [label=""];
  "sha256:490e3d565cb7c0b7ffacda9055aa183fce840d4d8354f6ce834d981e42129f21" -> "sha256:bda7e2fef1b979dc89fc5b1c240130e13141dd86e656e5ef9658f7ff3b6520d2" [label=""];
  "sha256:bda7e2fef1b979dc89fc5b1c240130e13141dd86e656e5ef9658f7ff3b6520d2" -> "sha256:a03be6d264682361f120cf229d2ac941f5f394f0f97977f745d4a5be4fca3ecb" [label=""];
  "sha256:a03be6d264682361f120cf229d2ac941f5f394f0f97977f745d4a5be4fca3ecb" -> "sha256:7eb9ecc150f0e8f706924da63fd4d5a4b7d8ce85c3b20d7f436b51d4963fa63b" [label=""];
  "sha256:7eb9ecc150f0e8f706924da63fd4d5a4b7d8ce85c3b20d7f436b51d4963fa63b" -> "sha256:c0d8ca4f439fffc7bac6341cb74ec39539a018d43d1b647980bbb9e80ddc2c5f" [label=""];
}

