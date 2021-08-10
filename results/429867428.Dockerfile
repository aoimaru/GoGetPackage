[app/sources/429867428.Dockerfile]
digraph {
  "sha256:d504848d1fdc626fef90009ac1d6f7688204f402dc9793ea2638d752165bcada" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:b9c04b6c6dc787eae5fbd09e454501046b6b5ecfb7992c970702ff73d8ef89c4" [label="/bin/sh -c apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -yq \tapt-utils \taufs-tools \tautomake \tbtrfs-tools \tbuild-essential \tcurl \tdpkg-sig \tgit \tiptables \tlibapparmor-dev \tlibcap-dev \tmercurial \tpandoc \tparallel \treprepro \truby1.9.1 \truby1.9.1-dev \ts3cmd=1.1.0* \t--no-install-recommends" shape="box"];
  "sha256:3f2e1f0a0898d7dce3d734c7a0a0c197c30d6eac6cdcf2f05825bf237c796c4d" [label="/bin/sh -c git clone --no-checkout https://git.fedorahosted.org/git/lvm2.git /usr/local/lvm2 && cd /usr/local/lvm2 && git checkout -q v2_02_103" shape="box"];
  "sha256:66d2c14618aa21ec003b40dc6cc24dd641679e739af36a6d85716c7b62687f3f" [label="/bin/sh -c cd /usr/local/lvm2 && ./configure --enable-static_link && make device-mapper && make install_device-mapper" shape="box"];
  "sha256:ea46b174e0edf77ca74718d35504be05282c35a53230c8b376a9b8f9df50f49f" [label="/bin/sh -c curl -sSL https://golang.org/dl/go1.3.src.tar.gz | tar -v -C /usr/local -xz" shape="box"];
  "sha256:651856fbcf31532fa374379dff77ae82e5ad436c8f51c04cf64aa3e92aba1e6a" [label="/bin/sh -c cd /usr/local/go/src && ./make.bash --no-clean 2>&1" shape="box"];
  "sha256:c8d9c901b10310480b256a5fb12723265d2c9466fbbef968770759bfe03550a7" [label="/bin/sh -c cd /usr/local/go/src && bash -xc 'for platform in $DOCKER_CROSSPLATFORMS; do GOOS=${platform%/*} GOARCH=${platform##*/} ./make.bash --no-clean 2>&1; done'" shape="box"];
  "sha256:9b294973ca051a717c09a1329cacc6de9bfa8c0f29123bc26c0adbb42334f2b7" [label="/bin/sh -c go get golang.org/x/tools/cmd/cover" shape="box"];
  "sha256:73a4494f55e4fd3e7e4a61f59532c0208e4f85fdeadd6c3e163e66333e0cb2dd" [label="/bin/sh -c gem install --no-rdoc --no-ri fpm --version 1.0.2" shape="box"];
  "sha256:615ea01b50aed4a522ce1fa788f52bbc775bdd22faaab9cbb05babb185792b16" [label="/bin/sh -c git clone -b buildroot-2014.02 https://github.com/jpetazzo/docker-busybox.git /docker-busybox" shape="box"];
  "sha256:e6188b71d70cb547c12a0e8b728863fab00777a239caab04c24906268be5a6da" [label="/bin/sh -c /bin/echo -e '[default]\\naccess_key=$AWS_ACCESS_KEY\\nsecret_key=$AWS_SECRET_KEY' > /.s3cfg" shape="box"];
  "sha256:3e8bac0b8857d24798e352d235290af033217ec3f4636d1a7137b90f2b71b23b" [label="/bin/sh -c git config --global user.email 'docker-dummy@example.com'" shape="box"];
  "sha256:4b082fb33c6d17872ab5cbf0c07b5eacc1a3bef4a993a041e3b795f80647ec5c" [label="/bin/sh -c groupadd -r docker" shape="box"];
  "sha256:260e2173cdeb93b5ca216a59c4be768ab63468e29f519f8a054f6938d03e5e5b" [label="/bin/sh -c useradd --create-home --gid docker unprivilegeduser" shape="box"];
  "sha256:d6137ec72ec64e2c6deb3c17e68cde0148b5c9ab741dcae816db5aad0f0aaf34" [label="mkdir{path=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:81a9f3295ae07ea9bf91a40e7d30ab7f72434367985e14bbdb7c3d3b58387734" [label="copy{src=/, dest=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:6ca803498a5881dc8eb7f7b66bab969cdb0eddc88c5a8c76136b319953e1b1d7" [label="sha256:6ca803498a5881dc8eb7f7b66bab969cdb0eddc88c5a8c76136b319953e1b1d7" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:b9c04b6c6dc787eae5fbd09e454501046b6b5ecfb7992c970702ff73d8ef89c4" [label=""];
  "sha256:b9c04b6c6dc787eae5fbd09e454501046b6b5ecfb7992c970702ff73d8ef89c4" -> "sha256:3f2e1f0a0898d7dce3d734c7a0a0c197c30d6eac6cdcf2f05825bf237c796c4d" [label=""];
  "sha256:3f2e1f0a0898d7dce3d734c7a0a0c197c30d6eac6cdcf2f05825bf237c796c4d" -> "sha256:66d2c14618aa21ec003b40dc6cc24dd641679e739af36a6d85716c7b62687f3f" [label=""];
  "sha256:66d2c14618aa21ec003b40dc6cc24dd641679e739af36a6d85716c7b62687f3f" -> "sha256:ea46b174e0edf77ca74718d35504be05282c35a53230c8b376a9b8f9df50f49f" [label=""];
  "sha256:ea46b174e0edf77ca74718d35504be05282c35a53230c8b376a9b8f9df50f49f" -> "sha256:651856fbcf31532fa374379dff77ae82e5ad436c8f51c04cf64aa3e92aba1e6a" [label=""];
  "sha256:651856fbcf31532fa374379dff77ae82e5ad436c8f51c04cf64aa3e92aba1e6a" -> "sha256:c8d9c901b10310480b256a5fb12723265d2c9466fbbef968770759bfe03550a7" [label=""];
  "sha256:c8d9c901b10310480b256a5fb12723265d2c9466fbbef968770759bfe03550a7" -> "sha256:9b294973ca051a717c09a1329cacc6de9bfa8c0f29123bc26c0adbb42334f2b7" [label=""];
  "sha256:9b294973ca051a717c09a1329cacc6de9bfa8c0f29123bc26c0adbb42334f2b7" -> "sha256:73a4494f55e4fd3e7e4a61f59532c0208e4f85fdeadd6c3e163e66333e0cb2dd" [label=""];
  "sha256:73a4494f55e4fd3e7e4a61f59532c0208e4f85fdeadd6c3e163e66333e0cb2dd" -> "sha256:615ea01b50aed4a522ce1fa788f52bbc775bdd22faaab9cbb05babb185792b16" [label=""];
  "sha256:615ea01b50aed4a522ce1fa788f52bbc775bdd22faaab9cbb05babb185792b16" -> "sha256:e6188b71d70cb547c12a0e8b728863fab00777a239caab04c24906268be5a6da" [label=""];
  "sha256:e6188b71d70cb547c12a0e8b728863fab00777a239caab04c24906268be5a6da" -> "sha256:3e8bac0b8857d24798e352d235290af033217ec3f4636d1a7137b90f2b71b23b" [label=""];
  "sha256:3e8bac0b8857d24798e352d235290af033217ec3f4636d1a7137b90f2b71b23b" -> "sha256:4b082fb33c6d17872ab5cbf0c07b5eacc1a3bef4a993a041e3b795f80647ec5c" [label=""];
  "sha256:4b082fb33c6d17872ab5cbf0c07b5eacc1a3bef4a993a041e3b795f80647ec5c" -> "sha256:260e2173cdeb93b5ca216a59c4be768ab63468e29f519f8a054f6938d03e5e5b" [label=""];
  "sha256:260e2173cdeb93b5ca216a59c4be768ab63468e29f519f8a054f6938d03e5e5b" -> "sha256:d6137ec72ec64e2c6deb3c17e68cde0148b5c9ab741dcae816db5aad0f0aaf34" [label=""];
  "sha256:d6137ec72ec64e2c6deb3c17e68cde0148b5c9ab741dcae816db5aad0f0aaf34" -> "sha256:81a9f3295ae07ea9bf91a40e7d30ab7f72434367985e14bbdb7c3d3b58387734" [label=""];
  "sha256:d504848d1fdc626fef90009ac1d6f7688204f402dc9793ea2638d752165bcada" -> "sha256:81a9f3295ae07ea9bf91a40e7d30ab7f72434367985e14bbdb7c3d3b58387734" [label=""];
  "sha256:81a9f3295ae07ea9bf91a40e7d30ab7f72434367985e14bbdb7c3d3b58387734" -> "sha256:6ca803498a5881dc8eb7f7b66bab969cdb0eddc88c5a8c76136b319953e1b1d7" [label=""];
}

