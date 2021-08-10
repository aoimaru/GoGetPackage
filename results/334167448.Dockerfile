[app/sources/334167448.Dockerfile]
digraph {
  "sha256:4f650a109eb89595cbdd27d5f8eeb0aff8bb23b987f3a1f5c13cdf198e2631ce" [label="docker-image://mcr.microsoft.com/dotnet-buildtools/prereqs:ubuntu-16.04-crossdeps" shape="ellipse"];
  "sha256:fb8b021fa372c386c603c329e34cb40e379acb985f6cf003821da8ebba633c9d" [label="/bin/sh -c apt-get update     && apt-get install -y         binutils-aarch64-linux-gnu         bison     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e49e676876ff690c6ab334cbd615450407ccfdfce956c0b98bdd468d3ba4afdf" [label="/bin/sh -c cd /tmp     && wget https://ftp.gnu.org/gnu/binutils/binutils-2.31.1.tar.gz     && tar -xf binutils-2.31.1.tar.gz     && cd binutils-2.31.1     && ./configure --disable-werror --target=aarch64-alpine-linux-musl --prefix=/usr --libdir=/lib --disable-multilib --with-sysroot=aarch64-alpine-linux-musl --enable-gold=yes --enable-plugins=yes --program-prefix=aarch64-alpine-linux-musl-     && make     && make install     && cd ..     && rm -r *" shape="box"];
  "sha256:c87d51529b658bbf7410d2bf051ff44bc66caacdc66e8600f9f921296337e41c" [label="local://context" shape="ellipse"];
  "sha256:222bd979cb11b2a0466691e115d9b8ea62f8ed0483685b0d69f768de26d7c462" [label="copy{src=/rootfs.arm64.tar, dest=/crossrootfs}" shape="note"];
  "sha256:8fa614580479f7c20241e1ca62407a40d1a448742907eb524145f9bfec4e4805" [label="sha256:8fa614580479f7c20241e1ca62407a40d1a448742907eb524145f9bfec4e4805" shape="plaintext"];
  "sha256:4f650a109eb89595cbdd27d5f8eeb0aff8bb23b987f3a1f5c13cdf198e2631ce" -> "sha256:fb8b021fa372c386c603c329e34cb40e379acb985f6cf003821da8ebba633c9d" [label=""];
  "sha256:fb8b021fa372c386c603c329e34cb40e379acb985f6cf003821da8ebba633c9d" -> "sha256:e49e676876ff690c6ab334cbd615450407ccfdfce956c0b98bdd468d3ba4afdf" [label=""];
  "sha256:e49e676876ff690c6ab334cbd615450407ccfdfce956c0b98bdd468d3ba4afdf" -> "sha256:222bd979cb11b2a0466691e115d9b8ea62f8ed0483685b0d69f768de26d7c462" [label=""];
  "sha256:c87d51529b658bbf7410d2bf051ff44bc66caacdc66e8600f9f921296337e41c" -> "sha256:222bd979cb11b2a0466691e115d9b8ea62f8ed0483685b0d69f768de26d7c462" [label=""];
  "sha256:222bd979cb11b2a0466691e115d9b8ea62f8ed0483685b0d69f768de26d7c462" -> "sha256:8fa614580479f7c20241e1ca62407a40d1a448742907eb524145f9bfec4e4805" [label=""];
}

