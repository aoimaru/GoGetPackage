[app/sources/353887691.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:d9794c7fa77eb417ccd6e7f4f0145c001bdfff6aa72a05e94fc50d1a14ee8f93" [label="/bin/sh -c apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -yq \tapt-utils \taufs-tools \tautomake \tbtrfs-tools \tbuild-essential \tcurl \tdpkg-sig \tgit \tiptables \tlibapparmor-dev \tlibcap-dev \tlibsqlite3-dev \tlxc=1.0* \tmercurial \tpandoc \tparallel \treprepro \truby1.9.1 \truby1.9.1-dev \ts3cmd=1.1.0* \t--no-install-recommends" shape="box"];
  "sha256:6bcfbe9d08b565d161fe1af53c3bfdab540b6b9820ecb671a0dac5f503b8e0b2" [label="/bin/sh -c git clone --no-checkout https://git.fedorahosted.org/git/lvm2.git /usr/local/lvm2 && cd /usr/local/lvm2 && git checkout -q v2_02_103" shape="box"];
  "sha256:6b6bb2ff19f8a04516fbaddbed6e9e244a7aaf06cda1fdba63d4c3ac24766d7e" [label="/bin/sh -c cd /usr/local/lvm2 && ./configure --enable-static_link && make device-mapper && make install_device-mapper" shape="box"];
  "sha256:39f05ff79b80341c9635d8f51912db6168d1bcb8f8cbd81f46c3ed4126928f00" [label="/bin/sh -c curl -sSL https://golang.org/dl/go1.3.src.tar.gz | tar -v -C /usr/local -xz" shape="box"];
  "sha256:3f319efa10a314bfbe82fedf18ce7fd81681cbe04e921a3e9fd20120508b22de" [label="/bin/sh -c cd /usr/local/go/src && ./make.bash --no-clean 2>&1" shape="box"];
  "sha256:0d51bb283afd7731b27fbc690b34314bf2cd56849d623db1775bc356bcfc4d96" [label="/bin/sh -c cd /usr/local/go/src && bash -xc 'for platform in $DOCKER_CROSSPLATFORMS; do GOOS=${platform%/*} GOARCH=${platform##*/} ./make.bash --no-clean 2>&1; done'" shape="box"];
  "sha256:87fbbac66f365f135bbe8d6ac26ada92eb69f52539a7d163b68531990af6c1df" [label="/bin/sh -c go get golang.org/x/tools/cmd/cover" shape="box"];
  "sha256:2fb8258153d1a0133fa17b77829e1f659aa6a19e24f2bfbf6d5c6f472fe0f0f8" [label="/bin/sh -c gem install --no-rdoc --no-ri fpm --version 1.0.2" shape="box"];
  "sha256:8eeb5013a00ada46b97da5f14f599e0c982672a9e0d20b325fb84c7bab76796e" [label="/bin/sh -c git clone -b buildroot-2014.02 https://github.com/jpetazzo/docker-busybox.git /docker-busybox" shape="box"];
  "sha256:75e75378b2ec9bf8e6f49d057cc5a9f4f79f643685b95c94f73d23e4ade97929" [label="/bin/sh -c /bin/echo -e '[default]\\naccess_key=$AWS_ACCESS_KEY\\nsecret_key=$AWS_SECRET_KEY' > /.s3cfg" shape="box"];
  "sha256:ae3831f7a5f10873267c99e450e0fdfa70c28f7aea95c0cd9ea8f1f388d4829a" [label="/bin/sh -c git config --global user.email 'docker-dummy@example.com'" shape="box"];
  "sha256:f23da7f880eac05801737afb0a5bb1a97b7cc287b1fc324bcdae8930b30eafe1" [label="/bin/sh -c groupadd -r docker" shape="box"];
  "sha256:023729330eecdd620b05d465b3904a69738dbc586ffb66d7616a1d21a1efc462" [label="/bin/sh -c useradd --create-home --gid docker unprivilegeduser" shape="box"];
  "sha256:f1cadc767bf0aadab41dc0b249443b8c674ff3726aded8dd7011e9711b5bc57a" [label="mkdir{path=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:613d239f98df4bf996a7fbb9195f5a544aaa3f967745479f5b3b326c43f031f5" [label="local://context" shape="ellipse"];
  "sha256:d8fb35013d63669556eb922bfa2d790c50abe64cb7b4fbee48fad8d0b57ae4c6" [label="copy{src=/, dest=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:1df387b5cb68736869d2596942a74f1ef515c709a117ff184c65f7d47663b044" [label="sha256:1df387b5cb68736869d2596942a74f1ef515c709a117ff184c65f7d47663b044" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:d9794c7fa77eb417ccd6e7f4f0145c001bdfff6aa72a05e94fc50d1a14ee8f93" [label=""];
  "sha256:d9794c7fa77eb417ccd6e7f4f0145c001bdfff6aa72a05e94fc50d1a14ee8f93" -> "sha256:6bcfbe9d08b565d161fe1af53c3bfdab540b6b9820ecb671a0dac5f503b8e0b2" [label=""];
  "sha256:6bcfbe9d08b565d161fe1af53c3bfdab540b6b9820ecb671a0dac5f503b8e0b2" -> "sha256:6b6bb2ff19f8a04516fbaddbed6e9e244a7aaf06cda1fdba63d4c3ac24766d7e" [label=""];
  "sha256:6b6bb2ff19f8a04516fbaddbed6e9e244a7aaf06cda1fdba63d4c3ac24766d7e" -> "sha256:39f05ff79b80341c9635d8f51912db6168d1bcb8f8cbd81f46c3ed4126928f00" [label=""];
  "sha256:39f05ff79b80341c9635d8f51912db6168d1bcb8f8cbd81f46c3ed4126928f00" -> "sha256:3f319efa10a314bfbe82fedf18ce7fd81681cbe04e921a3e9fd20120508b22de" [label=""];
  "sha256:3f319efa10a314bfbe82fedf18ce7fd81681cbe04e921a3e9fd20120508b22de" -> "sha256:0d51bb283afd7731b27fbc690b34314bf2cd56849d623db1775bc356bcfc4d96" [label=""];
  "sha256:0d51bb283afd7731b27fbc690b34314bf2cd56849d623db1775bc356bcfc4d96" -> "sha256:87fbbac66f365f135bbe8d6ac26ada92eb69f52539a7d163b68531990af6c1df" [label=""];
  "sha256:87fbbac66f365f135bbe8d6ac26ada92eb69f52539a7d163b68531990af6c1df" -> "sha256:2fb8258153d1a0133fa17b77829e1f659aa6a19e24f2bfbf6d5c6f472fe0f0f8" [label=""];
  "sha256:2fb8258153d1a0133fa17b77829e1f659aa6a19e24f2bfbf6d5c6f472fe0f0f8" -> "sha256:8eeb5013a00ada46b97da5f14f599e0c982672a9e0d20b325fb84c7bab76796e" [label=""];
  "sha256:8eeb5013a00ada46b97da5f14f599e0c982672a9e0d20b325fb84c7bab76796e" -> "sha256:75e75378b2ec9bf8e6f49d057cc5a9f4f79f643685b95c94f73d23e4ade97929" [label=""];
  "sha256:75e75378b2ec9bf8e6f49d057cc5a9f4f79f643685b95c94f73d23e4ade97929" -> "sha256:ae3831f7a5f10873267c99e450e0fdfa70c28f7aea95c0cd9ea8f1f388d4829a" [label=""];
  "sha256:ae3831f7a5f10873267c99e450e0fdfa70c28f7aea95c0cd9ea8f1f388d4829a" -> "sha256:f23da7f880eac05801737afb0a5bb1a97b7cc287b1fc324bcdae8930b30eafe1" [label=""];
  "sha256:f23da7f880eac05801737afb0a5bb1a97b7cc287b1fc324bcdae8930b30eafe1" -> "sha256:023729330eecdd620b05d465b3904a69738dbc586ffb66d7616a1d21a1efc462" [label=""];
  "sha256:023729330eecdd620b05d465b3904a69738dbc586ffb66d7616a1d21a1efc462" -> "sha256:f1cadc767bf0aadab41dc0b249443b8c674ff3726aded8dd7011e9711b5bc57a" [label=""];
  "sha256:f1cadc767bf0aadab41dc0b249443b8c674ff3726aded8dd7011e9711b5bc57a" -> "sha256:d8fb35013d63669556eb922bfa2d790c50abe64cb7b4fbee48fad8d0b57ae4c6" [label=""];
  "sha256:613d239f98df4bf996a7fbb9195f5a544aaa3f967745479f5b3b326c43f031f5" -> "sha256:d8fb35013d63669556eb922bfa2d790c50abe64cb7b4fbee48fad8d0b57ae4c6" [label=""];
  "sha256:d8fb35013d63669556eb922bfa2d790c50abe64cb7b4fbee48fad8d0b57ae4c6" -> "sha256:1df387b5cb68736869d2596942a74f1ef515c709a117ff184c65f7d47663b044" [label=""];
}

