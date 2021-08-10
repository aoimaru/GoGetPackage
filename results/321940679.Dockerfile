[app/sources/321940679.Dockerfile]
digraph {
  "sha256:d75cff14e6c5b0e40c7a574cd12b900d60b8fdc44bbc0c4409650d8f7ebc6ed7" [label="docker-image://docker.io/jupyter/minimal-notebook:1af3089901bb" shape="ellipse"];
  "sha256:bb3a8990a0ec03e35458990f03c666e03829bcba54248fa12527e8580185fb8c" [label="mkdir{path=/root}" shape="note"];
  "sha256:e307a04820687fe50c5082982ce17dd5f8ddf610cb7fb46fd190328084c9ec27" [label="/bin/sh -c apt-get -q update &&     apt-get -q install -y     make     libc6-dev     clang-3.8     curl     libedit-dev     libpython2.7     libicu-dev     libssl-dev     libxml2     tzdata     git     libcurl4-openssl-dev     pkg-config     && update-alternatives --quiet --install /usr/bin/clang clang /usr/bin/clang-3.8 100     && update-alternatives --quiet --install /usr/bin/clang++ clang++ /usr/bin/clang++-3.8 100     && rm -r /var/lib/apt/lists/*" shape="box"];
  "sha256:17d091fa62f96dcfe0c7f1d17bc0c20b00107da9b4e6faa899b63fd7f678dde2" [label="/bin/sh -c SWIFT_URL=https://swift.org/builds/$SWIFT_BRANCH/$(echo \"$SWIFT_PLATFORM\" | tr -d .)/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM.tar.gz     && curl -fSsL $SWIFT_URL -o swift.tar.gz     && curl -fSsL $SWIFT_URL.sig -o swift.tar.gz.sig     && export GNUPGHOME=\"$(mktemp -d)\"     && set -e;         for key in           8513444E2DA36B7C1659AF4D7638F1FB2B2B08C4           A3BAFD3556A59079C06894BD63BC1CFE91D306C6           5E4DF843FB065D7F7E24FBA2EF5430F071E1B235         ; do           gpg --quiet --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\";         done     && gpg --batch --verify --quiet swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && rm -r \"$GNUPGHOME\" swift.tar.gz.sig swift.tar.gz     && chmod -R o+r /usr/lib/swift" shape="box"];
  "sha256:596270271ed465241c405ef59d42304c18077a96f1a094ca0b0ea1aa5f01aef0" [label="/bin/sh -c swift --version" shape="box"];
  "sha256:08fcaf85da68411456347a0ae7acf789acb7846f5393a79f1f06dab5718d469e" [label="/bin/sh -c cd /tmp/     && curl -L -O https://github.com/zeromq/zeromq4-1/releases/download/v4.1.4/zeromq-4.1.4.tar.gz     && tar xf /tmp/zeromq-4.1.4.tar.gz     && cd /tmp/zeromq-4.1.4     && ./configure --without-libsodium     && make     && make install     && ldconfig" shape="box"];
  "sha256:f744fc6d54422bf32239f09ec1731af97080d7505cdfb1fd50705688c099e1df" [label="/bin/sh -c mkdir -p /kernels/iSwift" shape="box"];
  "sha256:fc14218ea12a16e4a65c837b356f9a6611b029f0b0686a65a95d99bf5981f224" [label="local://context" shape="ellipse"];
  "sha256:2c05b8a46d2ea3f57e51fb3f9740c30c4697de46ce3461401ac287fb7913adea" [label="copy{src=/Includes, dest=/kernels/iSwift/Includes/}" shape="note"];
  "sha256:676fb49107cf1719abb4447c5d7a8f14edb53566ea0b765e0621d830203306f8" [label="copy{src=/Package.swift, dest=/kernels/iSwift/}" shape="note"];
  "sha256:95c489249a5060720aa8ea250caf3d825ac7220a7ba6efd70eb5707bd0a8f00b" [label="copy{src=/Sources, dest=/kernels/iSwift/Sources/},copy{src=/iSwiftKernel, dest=/kernels/iSwift/Sources/}" shape="note"];
  "sha256:c7fd8111ec2a675169cf664367779017b22087e2b996ae950c43a8e09536f5a5" [label="copy{src=/iSwiftKernel, dest=/kernels/iSwift/iSwiftKernel/}" shape="note"];
  "sha256:8da605c00389c22e652ae475cc28ee53dd259daa36e7e1deef9d7f825adeb2a2" [label="mkdir{path=/kernels/iSwift}" shape="note"];
  "sha256:48667fab2a4c1c05bda97b947389e89ad0a7a3c51ea96f8e505680189883644f" [label="/bin/sh -c swift package update" shape="box"];
  "sha256:83381e08e08be20096869d815cc22bee46820bbcd1c90ca321d9c4775ad9b301" [label="/bin/sh -c swift build" shape="box"];
  "sha256:c22cdbcea0f05372d3caaa2cedd5ec3143cb3f47b1746ba091fcb8f5fc06e7f4" [label="/bin/sh -c jupyter kernelspec install --user /kernels/iSwift/iSwiftKernel" shape="box"];
  "sha256:ba6a4be5a056d745423968a2dc54c14a2a2fe8f34cd715a8239c04506cc1b715" [label="/bin/sh -c chown -R ${NB_USER} /kernels/iSwift" shape="box"];
  "sha256:f57b513a7a1b691001a0d00568c684ce9d94a6166d9bc52e84328945dd4a20f0" [label="mkdir{path=/home}" shape="note"];
  "sha256:35e95850ce12390ac78b77b38d751a3bccd1ae90ab4df66e0ff9ea26dbcb8a3b" [label="sha256:35e95850ce12390ac78b77b38d751a3bccd1ae90ab4df66e0ff9ea26dbcb8a3b" shape="plaintext"];
  "sha256:d75cff14e6c5b0e40c7a574cd12b900d60b8fdc44bbc0c4409650d8f7ebc6ed7" -> "sha256:bb3a8990a0ec03e35458990f03c666e03829bcba54248fa12527e8580185fb8c" [label=""];
  "sha256:bb3a8990a0ec03e35458990f03c666e03829bcba54248fa12527e8580185fb8c" -> "sha256:e307a04820687fe50c5082982ce17dd5f8ddf610cb7fb46fd190328084c9ec27" [label=""];
  "sha256:e307a04820687fe50c5082982ce17dd5f8ddf610cb7fb46fd190328084c9ec27" -> "sha256:17d091fa62f96dcfe0c7f1d17bc0c20b00107da9b4e6faa899b63fd7f678dde2" [label=""];
  "sha256:17d091fa62f96dcfe0c7f1d17bc0c20b00107da9b4e6faa899b63fd7f678dde2" -> "sha256:596270271ed465241c405ef59d42304c18077a96f1a094ca0b0ea1aa5f01aef0" [label=""];
  "sha256:596270271ed465241c405ef59d42304c18077a96f1a094ca0b0ea1aa5f01aef0" -> "sha256:08fcaf85da68411456347a0ae7acf789acb7846f5393a79f1f06dab5718d469e" [label=""];
  "sha256:08fcaf85da68411456347a0ae7acf789acb7846f5393a79f1f06dab5718d469e" -> "sha256:f744fc6d54422bf32239f09ec1731af97080d7505cdfb1fd50705688c099e1df" [label=""];
  "sha256:f744fc6d54422bf32239f09ec1731af97080d7505cdfb1fd50705688c099e1df" -> "sha256:2c05b8a46d2ea3f57e51fb3f9740c30c4697de46ce3461401ac287fb7913adea" [label=""];
  "sha256:fc14218ea12a16e4a65c837b356f9a6611b029f0b0686a65a95d99bf5981f224" -> "sha256:2c05b8a46d2ea3f57e51fb3f9740c30c4697de46ce3461401ac287fb7913adea" [label=""];
  "sha256:2c05b8a46d2ea3f57e51fb3f9740c30c4697de46ce3461401ac287fb7913adea" -> "sha256:676fb49107cf1719abb4447c5d7a8f14edb53566ea0b765e0621d830203306f8" [label=""];
  "sha256:fc14218ea12a16e4a65c837b356f9a6611b029f0b0686a65a95d99bf5981f224" -> "sha256:676fb49107cf1719abb4447c5d7a8f14edb53566ea0b765e0621d830203306f8" [label=""];
  "sha256:676fb49107cf1719abb4447c5d7a8f14edb53566ea0b765e0621d830203306f8" -> "sha256:95c489249a5060720aa8ea250caf3d825ac7220a7ba6efd70eb5707bd0a8f00b" [label=""];
  "sha256:fc14218ea12a16e4a65c837b356f9a6611b029f0b0686a65a95d99bf5981f224" -> "sha256:95c489249a5060720aa8ea250caf3d825ac7220a7ba6efd70eb5707bd0a8f00b" [label=""];
  "sha256:95c489249a5060720aa8ea250caf3d825ac7220a7ba6efd70eb5707bd0a8f00b" -> "sha256:c7fd8111ec2a675169cf664367779017b22087e2b996ae950c43a8e09536f5a5" [label=""];
  "sha256:fc14218ea12a16e4a65c837b356f9a6611b029f0b0686a65a95d99bf5981f224" -> "sha256:c7fd8111ec2a675169cf664367779017b22087e2b996ae950c43a8e09536f5a5" [label=""];
  "sha256:c7fd8111ec2a675169cf664367779017b22087e2b996ae950c43a8e09536f5a5" -> "sha256:8da605c00389c22e652ae475cc28ee53dd259daa36e7e1deef9d7f825adeb2a2" [label=""];
  "sha256:8da605c00389c22e652ae475cc28ee53dd259daa36e7e1deef9d7f825adeb2a2" -> "sha256:48667fab2a4c1c05bda97b947389e89ad0a7a3c51ea96f8e505680189883644f" [label=""];
  "sha256:48667fab2a4c1c05bda97b947389e89ad0a7a3c51ea96f8e505680189883644f" -> "sha256:83381e08e08be20096869d815cc22bee46820bbcd1c90ca321d9c4775ad9b301" [label=""];
  "sha256:83381e08e08be20096869d815cc22bee46820bbcd1c90ca321d9c4775ad9b301" -> "sha256:c22cdbcea0f05372d3caaa2cedd5ec3143cb3f47b1746ba091fcb8f5fc06e7f4" [label=""];
  "sha256:c22cdbcea0f05372d3caaa2cedd5ec3143cb3f47b1746ba091fcb8f5fc06e7f4" -> "sha256:ba6a4be5a056d745423968a2dc54c14a2a2fe8f34cd715a8239c04506cc1b715" [label=""];
  "sha256:ba6a4be5a056d745423968a2dc54c14a2a2fe8f34cd715a8239c04506cc1b715" -> "sha256:f57b513a7a1b691001a0d00568c684ce9d94a6166d9bc52e84328945dd4a20f0" [label=""];
  "sha256:f57b513a7a1b691001a0d00568c684ce9d94a6166d9bc52e84328945dd4a20f0" -> "sha256:35e95850ce12390ac78b77b38d751a3bccd1ae90ab4df66e0ff9ea26dbcb8a3b" [label=""];
}

