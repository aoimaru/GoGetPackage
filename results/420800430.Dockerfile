[app/sources/420800430.Dockerfile]
digraph {
  "sha256:f51b7c7cef2ef65ffefa6d236274affe2a9ba29dea18f624f9a4bea95483c9ff" [label="docker-image://docker.io/library/ubuntu:14.04@sha256:43cb19408de1e0ecf3ba5b5372ec98978963d6d0be42d0ad825e77a3bd16b5f7" shape="ellipse"];
  "sha256:c5ec326b5a0b58b1b56027449252eb2a8cfafddb0a631745464480d7a0340a4d" [label="/bin/sh -c apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -yq \tapt-utils \taufs-tools \tautomake \tbtrfs-tools \tbuild-essential \tcurl \tdpkg-sig \tgit \tiptables \tlibapparmor-dev \tlibcap-dev \tlibsqlite3-dev \tmercurial \tpandoc \tparallel \treprepro \truby1.9.1 \truby1.9.1-dev \ts3cmd=1.1.0* \t--no-install-recommends" shape="box"];
  "sha256:71f0f07af783d632f1e4c3cc56ac16dbebddf13128e8a242dff97c66e7000d5f" [label="/bin/sh -c git clone --no-checkout https://git.fedorahosted.org/git/lvm2.git /usr/local/lvm2 && cd /usr/local/lvm2 && git checkout -q v2_02_103" shape="box"];
  "sha256:8cb922a5f6466861669ad65ac9876aa764a598f328a498107913ba337657d799" [label="/bin/sh -c cd /usr/local/lvm2 && ./configure --enable-static_link && make device-mapper && make install_device-mapper" shape="box"];
  "sha256:c90856b7cde871c73ce24cffa5ddaec08f03b7209fe0db8302682a5ef16cfaed" [label="/bin/sh -c curl -sSL https://golang.org/dl/go1.3.src.tar.gz | tar -v -C /usr/local -xz" shape="box"];
  "sha256:c5353c91bc90b9e1858c8ad3e0c3adeeb95b309cdfa723bdd7b3e728db47e926" [label="/bin/sh -c cd /usr/local/go/src && ./make.bash --no-clean 2>&1" shape="box"];
  "sha256:bcad28eab86c275db7f5076651c627b950b16eb89452283d2fa1332b017497cf" [label="/bin/sh -c cd /usr/local/go/src && bash -xc 'for platform in $DOCKER_CROSSPLATFORMS; do GOOS=${platform%/*} GOARCH=${platform##*/} ./make.bash --no-clean 2>&1; done'" shape="box"];
  "sha256:75dfd6ff5cb910196410cbd3b67fbd6c6407dc13e546318fc23e4b2a050bd212" [label="/bin/sh -c go get golang.org/x/tools/cmd/cover" shape="box"];
  "sha256:fdaa56e37f280ac934eafbd6868c6c004418e6ec50e75dd8bb110332610fb230" [label="/bin/sh -c gem install --no-rdoc --no-ri fpm --version 1.0.2" shape="box"];
  "sha256:448acdc3d27c4ff60c81f67cfdfb25badd48f867a69655bea6dd3eecc3541b69" [label="/bin/sh -c git clone -b buildroot-2014.02 https://github.com/jpetazzo/docker-busybox.git /docker-busybox" shape="box"];
  "sha256:dd8fb89a41a3b6eb7efb0d360e5652dad9b987b70ef06cb2f1b7a33430b88536" [label="/bin/sh -c /bin/echo -e '[default]\\naccess_key=$AWS_ACCESS_KEY\\nsecret_key=$AWS_SECRET_KEY' > /.s3cfg" shape="box"];
  "sha256:4332468271f7c1179a3771837f5d1a1ca751afc7648efd4ca8211c4c15015ee0" [label="/bin/sh -c git config --global user.email 'docker-dummy@example.com'" shape="box"];
  "sha256:6077b5ed29e62d5e0ee02c006a50428260ade999f9483fea755b1173934b9ab5" [label="/bin/sh -c groupadd -r docker" shape="box"];
  "sha256:194b56313e1bf045bae2479a1b3c49a483359a0026feb070de0bae829c4b0ef5" [label="/bin/sh -c useradd --create-home --gid docker unprivilegeduser" shape="box"];
  "sha256:717abbc68b74b01fec7581f6cfa44330c877b6b9582fde6811e2a40256f1cde1" [label="mkdir{path=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:b6a583b3458e871ea0443b6b578b454badc63b18fe7eb9f6a44965cea9df168c" [label="local://context" shape="ellipse"];
  "sha256:beb4474fea43c75303ef56c969bd47641de37b3dfec4887a2d0ba8b012b90c85" [label="copy{src=/, dest=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:bad516b1ccffc9ce7006a7a3d6930061445cfbd50386377b4ead7f28d6774e89" [label="sha256:bad516b1ccffc9ce7006a7a3d6930061445cfbd50386377b4ead7f28d6774e89" shape="plaintext"];
  "sha256:f51b7c7cef2ef65ffefa6d236274affe2a9ba29dea18f624f9a4bea95483c9ff" -> "sha256:c5ec326b5a0b58b1b56027449252eb2a8cfafddb0a631745464480d7a0340a4d" [label=""];
  "sha256:c5ec326b5a0b58b1b56027449252eb2a8cfafddb0a631745464480d7a0340a4d" -> "sha256:71f0f07af783d632f1e4c3cc56ac16dbebddf13128e8a242dff97c66e7000d5f" [label=""];
  "sha256:71f0f07af783d632f1e4c3cc56ac16dbebddf13128e8a242dff97c66e7000d5f" -> "sha256:8cb922a5f6466861669ad65ac9876aa764a598f328a498107913ba337657d799" [label=""];
  "sha256:8cb922a5f6466861669ad65ac9876aa764a598f328a498107913ba337657d799" -> "sha256:c90856b7cde871c73ce24cffa5ddaec08f03b7209fe0db8302682a5ef16cfaed" [label=""];
  "sha256:c90856b7cde871c73ce24cffa5ddaec08f03b7209fe0db8302682a5ef16cfaed" -> "sha256:c5353c91bc90b9e1858c8ad3e0c3adeeb95b309cdfa723bdd7b3e728db47e926" [label=""];
  "sha256:c5353c91bc90b9e1858c8ad3e0c3adeeb95b309cdfa723bdd7b3e728db47e926" -> "sha256:bcad28eab86c275db7f5076651c627b950b16eb89452283d2fa1332b017497cf" [label=""];
  "sha256:bcad28eab86c275db7f5076651c627b950b16eb89452283d2fa1332b017497cf" -> "sha256:75dfd6ff5cb910196410cbd3b67fbd6c6407dc13e546318fc23e4b2a050bd212" [label=""];
  "sha256:75dfd6ff5cb910196410cbd3b67fbd6c6407dc13e546318fc23e4b2a050bd212" -> "sha256:fdaa56e37f280ac934eafbd6868c6c004418e6ec50e75dd8bb110332610fb230" [label=""];
  "sha256:fdaa56e37f280ac934eafbd6868c6c004418e6ec50e75dd8bb110332610fb230" -> "sha256:448acdc3d27c4ff60c81f67cfdfb25badd48f867a69655bea6dd3eecc3541b69" [label=""];
  "sha256:448acdc3d27c4ff60c81f67cfdfb25badd48f867a69655bea6dd3eecc3541b69" -> "sha256:dd8fb89a41a3b6eb7efb0d360e5652dad9b987b70ef06cb2f1b7a33430b88536" [label=""];
  "sha256:dd8fb89a41a3b6eb7efb0d360e5652dad9b987b70ef06cb2f1b7a33430b88536" -> "sha256:4332468271f7c1179a3771837f5d1a1ca751afc7648efd4ca8211c4c15015ee0" [label=""];
  "sha256:4332468271f7c1179a3771837f5d1a1ca751afc7648efd4ca8211c4c15015ee0" -> "sha256:6077b5ed29e62d5e0ee02c006a50428260ade999f9483fea755b1173934b9ab5" [label=""];
  "sha256:6077b5ed29e62d5e0ee02c006a50428260ade999f9483fea755b1173934b9ab5" -> "sha256:194b56313e1bf045bae2479a1b3c49a483359a0026feb070de0bae829c4b0ef5" [label=""];
  "sha256:194b56313e1bf045bae2479a1b3c49a483359a0026feb070de0bae829c4b0ef5" -> "sha256:717abbc68b74b01fec7581f6cfa44330c877b6b9582fde6811e2a40256f1cde1" [label=""];
  "sha256:717abbc68b74b01fec7581f6cfa44330c877b6b9582fde6811e2a40256f1cde1" -> "sha256:beb4474fea43c75303ef56c969bd47641de37b3dfec4887a2d0ba8b012b90c85" [label=""];
  "sha256:b6a583b3458e871ea0443b6b578b454badc63b18fe7eb9f6a44965cea9df168c" -> "sha256:beb4474fea43c75303ef56c969bd47641de37b3dfec4887a2d0ba8b012b90c85" [label=""];
  "sha256:beb4474fea43c75303ef56c969bd47641de37b3dfec4887a2d0ba8b012b90c85" -> "sha256:bad516b1ccffc9ce7006a7a3d6930061445cfbd50386377b4ead7f28d6774e89" [label=""];
}

