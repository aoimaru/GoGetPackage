[app/sources/415479340.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:e8385d8e4e866679f2b235a3560c14c4fd864d38e9e32947cdbd3ff2a4a46446" [label="/bin/sh -c echo \"dash dash/sh boolean false\" | debconf-set-selections     && dpkg-reconfigure dash" shape="box"];
  "sha256:68dbcebbd72f95312314503a41c06fac2beec452c312e7cbad74fd2bd513b244" [label="/bin/sh -c set -euxo pipefail     && sed -i -e 's#http://\\(archive\\|security\\)#mirror://mirrors#' -e 's#/ubuntu/#/mirrors.txt#' /etc/apt/sources.list     && apt-get -y update && apt-get -y --no-install-recommends install         acl         curl         gnupg2         ssh-client         sudo         openjdk-8-jdk-headless         uuid-runtime         wget     && rm -rf /var/lib/apt/lists/*     && adduser --gid 0 --shell /bin/bash --home /home/rundeck --gecos \"\" --disabled-password rundeck     && chmod 0775 /home/rundeck     && passwd -d rundeck     && addgroup rundeck sudo     && echo | sudo -u rundeck ssh-keygen -N ''     && echo 'PATH=$PATH:$HOME/tools/bin' >> /home/rundeck/.bashrc" shape="box"];
  "sha256:a7fa65305f8a32775fd8b46850014a5f96fe038935a729f55b9a9cc493d0f747" [label="/bin/sh -c wget -O /tini https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini     && wget -O /tini.asc https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini.asc     && gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7     && gpg --batch --verify /tini.asc /tini     && chmod +x /tini" shape="box"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:0dcfea6f0863c301721c37f21d133580957775e8414eed2d5ced812fbc99e4fa" [label="/bin/sh -c go get github.com/HeavyHorst/remco/cmd/remco" shape="box"];
  "sha256:febdaf1c2ab7f953bbcd27f84ce8fb65cb7ae9b5ac686f54692d4eedc54a08dc" [label="/bin/sh -c cd $GOPATH/src/github.com/HeavyHorst/remco &&     git checkout 316b72d05ff25448ae66d0ecdbd6e3d9393a80e3" shape="box"];
  "sha256:6f457fd544fba5a47e2864c4194a82025a02499cf42df63194f78daaefcbb3a1" [label="/bin/sh -c go install github.com/HeavyHorst/remco/cmd/remco" shape="box"];
  "sha256:2b2f51ac6ace89baa9b506e4b5290bb66591f3a1dda4a884c0cc94f0de5dc721" [label="copy{src=/go/bin/remco, dest=/usr/local/bin/remco}" shape="note"];
  "sha256:d4509b7fc26ed67dae273b64c3b2bd8de44c3eb26b6fa46befa55d9e8e0ba168" [label="mkdir{path=/home/rundeck}" shape="note"];
  "sha256:6a1ccce2ee72432b19d1b77c99968c20e691cbb09fb73b208eda6c4750de6264" [label="sha256:6a1ccce2ee72432b19d1b77c99968c20e691cbb09fb73b208eda6c4750de6264" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:e8385d8e4e866679f2b235a3560c14c4fd864d38e9e32947cdbd3ff2a4a46446" [label=""];
  "sha256:e8385d8e4e866679f2b235a3560c14c4fd864d38e9e32947cdbd3ff2a4a46446" -> "sha256:68dbcebbd72f95312314503a41c06fac2beec452c312e7cbad74fd2bd513b244" [label=""];
  "sha256:68dbcebbd72f95312314503a41c06fac2beec452c312e7cbad74fd2bd513b244" -> "sha256:a7fa65305f8a32775fd8b46850014a5f96fe038935a729f55b9a9cc493d0f747" [label=""];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:0dcfea6f0863c301721c37f21d133580957775e8414eed2d5ced812fbc99e4fa" [label=""];
  "sha256:0dcfea6f0863c301721c37f21d133580957775e8414eed2d5ced812fbc99e4fa" -> "sha256:febdaf1c2ab7f953bbcd27f84ce8fb65cb7ae9b5ac686f54692d4eedc54a08dc" [label=""];
  "sha256:febdaf1c2ab7f953bbcd27f84ce8fb65cb7ae9b5ac686f54692d4eedc54a08dc" -> "sha256:6f457fd544fba5a47e2864c4194a82025a02499cf42df63194f78daaefcbb3a1" [label=""];
  "sha256:a7fa65305f8a32775fd8b46850014a5f96fe038935a729f55b9a9cc493d0f747" -> "sha256:2b2f51ac6ace89baa9b506e4b5290bb66591f3a1dda4a884c0cc94f0de5dc721" [label=""];
  "sha256:6f457fd544fba5a47e2864c4194a82025a02499cf42df63194f78daaefcbb3a1" -> "sha256:2b2f51ac6ace89baa9b506e4b5290bb66591f3a1dda4a884c0cc94f0de5dc721" [label=""];
  "sha256:2b2f51ac6ace89baa9b506e4b5290bb66591f3a1dda4a884c0cc94f0de5dc721" -> "sha256:d4509b7fc26ed67dae273b64c3b2bd8de44c3eb26b6fa46befa55d9e8e0ba168" [label=""];
  "sha256:d4509b7fc26ed67dae273b64c3b2bd8de44c3eb26b6fa46befa55d9e8e0ba168" -> "sha256:6a1ccce2ee72432b19d1b77c99968c20e691cbb09fb73b208eda6c4750de6264" [label=""];
}

