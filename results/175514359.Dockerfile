[app/sources/175514359.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:1448d45d1b7933aca277292d2e6557de82090b0637882bb1c53e67fd655a7094" [label="/bin/sh -c apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -yq \tapt-utils \taufs-tools \tautomake \tbtrfs-tools \tbuild-essential \tcurl \tdpkg-sig \tgit \tiptables \tlibapparmor-dev \tlibcap-dev \tlibsqlite3-dev \tmercurial \tpandoc \tparallel \treprepro \truby1.9.1 \truby1.9.1-dev \ts3cmd=1.1.0* \t--no-install-recommends" shape="box"];
  "sha256:cba9d5cd6a0acd894a9f7c09a79dec75c8ca43c3c45e10f26f37044b2b6e42cd" [label="/bin/sh -c git clone --no-checkout https://git.fedorahosted.org/git/lvm2.git /usr/local/lvm2 && cd /usr/local/lvm2 && git checkout -q v2_02_103" shape="box"];
  "sha256:91aca2ec0e0265b86273881339ca290e788ba0e3028a442c8c6b89552ba21f4a" [label="/bin/sh -c cd /usr/local/lvm2 && ./configure --enable-static_link && make device-mapper && make install_device-mapper" shape="box"];
  "sha256:a96a21f6a011e7404579b10a4c883dd3af8c1acf01f4ba301bd8d3ebd0f7df14" [label="/bin/sh -c curl -sSL https://golang.org/dl/go1.3.src.tar.gz | tar -v -C /usr/local -xz" shape="box"];
  "sha256:6c6ba9429713d7fc2fe65e2c605ec7ff394e535d5c933ed1654b7cb97f6687cb" [label="/bin/sh -c cd /usr/local/go/src && ./make.bash --no-clean 2>&1" shape="box"];
  "sha256:9763b67847d72fb4e63477e0d68ffab7586fa77ed65c2f5a26521987a272d836" [label="/bin/sh -c cd /usr/local/go/src && bash -xc 'for platform in $DOCKER_CROSSPLATFORMS; do GOOS=${platform%/*} GOARCH=${platform##*/} ./make.bash --no-clean 2>&1; done'" shape="box"];
  "sha256:cac0dbe8d392eb87c46c92e0b7fe410f5665d6cf1d2b5b420134b42c189af338" [label="/bin/sh -c go get golang.org/x/tools/cmd/cover" shape="box"];
  "sha256:04355ab6ba6513157ad7162296f9c0d8b1bdccab33cb8c7f97843b149c71b0aa" [label="/bin/sh -c gem install --no-rdoc --no-ri fpm --version 1.0.2" shape="box"];
  "sha256:b7300f0dfa5d221da49d2aec106fbdf513f36dcb22d673ac4429be9422063fa6" [label="/bin/sh -c git clone -b buildroot-2014.02 https://github.com/jpetazzo/docker-busybox.git /docker-busybox" shape="box"];
  "sha256:e164a477e4f67e2aa749751cf62ac256276a5307af2a8d73af44984c1928867b" [label="/bin/sh -c /bin/echo -e '[default]\\naccess_key=$AWS_ACCESS_KEY\\nsecret_key=$AWS_SECRET_KEY' > /.s3cfg" shape="box"];
  "sha256:3edd43b59197d0e5657f3ac0f243a1daa46f6ee6d80952df7fe1e3fe88998d79" [label="/bin/sh -c git config --global user.email 'docker-dummy@example.com'" shape="box"];
  "sha256:e67489870e0a8de94aacce6021f6698be7d6da7a8ade1682ee4c13b16aa9527d" [label="/bin/sh -c groupadd -r docker" shape="box"];
  "sha256:3b2658adcbb3cb1a38a2b761e01bdd76e3fc5b108fa4534036b952393ac32cc5" [label="/bin/sh -c useradd --create-home --gid docker unprivilegeduser" shape="box"];
  "sha256:ef050de6d5f7a0688b1cc0a476794ba68fa8f28e2fdf1b43741952c7566bfa06" [label="mkdir{path=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:a9bf146efd9f72c8314a3c4ccd600d1b63cb23e8ef9a0bb31b0d54c98446013c" [label="local://context" shape="ellipse"];
  "sha256:8b2bae4101ac33d35f007147ef0d5fd805d44585d740506f082cd868e131222a" [label="copy{src=/, dest=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:40857370ce9607ba971a0ae885bbf4ec4eb66f8e018e9b42bbd1a339d42b30fe" [label="sha256:40857370ce9607ba971a0ae885bbf4ec4eb66f8e018e9b42bbd1a339d42b30fe" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:1448d45d1b7933aca277292d2e6557de82090b0637882bb1c53e67fd655a7094" [label=""];
  "sha256:1448d45d1b7933aca277292d2e6557de82090b0637882bb1c53e67fd655a7094" -> "sha256:cba9d5cd6a0acd894a9f7c09a79dec75c8ca43c3c45e10f26f37044b2b6e42cd" [label=""];
  "sha256:cba9d5cd6a0acd894a9f7c09a79dec75c8ca43c3c45e10f26f37044b2b6e42cd" -> "sha256:91aca2ec0e0265b86273881339ca290e788ba0e3028a442c8c6b89552ba21f4a" [label=""];
  "sha256:91aca2ec0e0265b86273881339ca290e788ba0e3028a442c8c6b89552ba21f4a" -> "sha256:a96a21f6a011e7404579b10a4c883dd3af8c1acf01f4ba301bd8d3ebd0f7df14" [label=""];
  "sha256:a96a21f6a011e7404579b10a4c883dd3af8c1acf01f4ba301bd8d3ebd0f7df14" -> "sha256:6c6ba9429713d7fc2fe65e2c605ec7ff394e535d5c933ed1654b7cb97f6687cb" [label=""];
  "sha256:6c6ba9429713d7fc2fe65e2c605ec7ff394e535d5c933ed1654b7cb97f6687cb" -> "sha256:9763b67847d72fb4e63477e0d68ffab7586fa77ed65c2f5a26521987a272d836" [label=""];
  "sha256:9763b67847d72fb4e63477e0d68ffab7586fa77ed65c2f5a26521987a272d836" -> "sha256:cac0dbe8d392eb87c46c92e0b7fe410f5665d6cf1d2b5b420134b42c189af338" [label=""];
  "sha256:cac0dbe8d392eb87c46c92e0b7fe410f5665d6cf1d2b5b420134b42c189af338" -> "sha256:04355ab6ba6513157ad7162296f9c0d8b1bdccab33cb8c7f97843b149c71b0aa" [label=""];
  "sha256:04355ab6ba6513157ad7162296f9c0d8b1bdccab33cb8c7f97843b149c71b0aa" -> "sha256:b7300f0dfa5d221da49d2aec106fbdf513f36dcb22d673ac4429be9422063fa6" [label=""];
  "sha256:b7300f0dfa5d221da49d2aec106fbdf513f36dcb22d673ac4429be9422063fa6" -> "sha256:e164a477e4f67e2aa749751cf62ac256276a5307af2a8d73af44984c1928867b" [label=""];
  "sha256:e164a477e4f67e2aa749751cf62ac256276a5307af2a8d73af44984c1928867b" -> "sha256:3edd43b59197d0e5657f3ac0f243a1daa46f6ee6d80952df7fe1e3fe88998d79" [label=""];
  "sha256:3edd43b59197d0e5657f3ac0f243a1daa46f6ee6d80952df7fe1e3fe88998d79" -> "sha256:e67489870e0a8de94aacce6021f6698be7d6da7a8ade1682ee4c13b16aa9527d" [label=""];
  "sha256:e67489870e0a8de94aacce6021f6698be7d6da7a8ade1682ee4c13b16aa9527d" -> "sha256:3b2658adcbb3cb1a38a2b761e01bdd76e3fc5b108fa4534036b952393ac32cc5" [label=""];
  "sha256:3b2658adcbb3cb1a38a2b761e01bdd76e3fc5b108fa4534036b952393ac32cc5" -> "sha256:ef050de6d5f7a0688b1cc0a476794ba68fa8f28e2fdf1b43741952c7566bfa06" [label=""];
  "sha256:ef050de6d5f7a0688b1cc0a476794ba68fa8f28e2fdf1b43741952c7566bfa06" -> "sha256:8b2bae4101ac33d35f007147ef0d5fd805d44585d740506f082cd868e131222a" [label=""];
  "sha256:a9bf146efd9f72c8314a3c4ccd600d1b63cb23e8ef9a0bb31b0d54c98446013c" -> "sha256:8b2bae4101ac33d35f007147ef0d5fd805d44585d740506f082cd868e131222a" [label=""];
  "sha256:8b2bae4101ac33d35f007147ef0d5fd805d44585d740506f082cd868e131222a" -> "sha256:40857370ce9607ba971a0ae885bbf4ec4eb66f8e018e9b42bbd1a339d42b30fe" [label=""];
}

