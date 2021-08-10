[app/sources/288513174.Dockerfile]
digraph {
  "sha256:750fd68b06cf02989b8c1eab09d69b6f8961e6c162bf902cb3531a8497b8ee6f" [label="docker-image://docker.io/library/gcc:5.3" shape="ellipse"];
  "sha256:22aa990d65b4da89139d94d807010cd53497187018d463db599102177a4eaaba" [label="/bin/sh -c apt-get update && apt-get install -y \tapparmor \taufs-tools \tbtrfs-tools \tbuild-essential \tcurl \tgit \tiptables \tjq \tnet-tools \tlibapparmor-dev \tlibcap-dev \tlibsqlite3-dev \tmercurial \tnet-tools \tparallel \tpython-dev \tpython-mock \tpython-pip \tpython-websocket \t--no-install-recommends" shape="box"];
  "sha256:91b8f82ff201fc61b58c93fd23fccdb1b3463606cd533556bce1921199b9c479" [label="/bin/sh -c git clone -b v2_02_103 https://git.fedorahosted.org/git/lvm2.git /usr/local/lvm2" shape="box"];
  "sha256:1687fb4365c4406abf8a807adf245a20638790f03d11312b1bb6db47f194d4be" [label="/bin/sh -c cd /usr/local/lvm2 \t&& ./configure --enable-static_link \t&& make device-mapper \t&& make install_device-mapper" shape="box"];
  "sha256:9208e50dc8479c68e124c7894a2068f899766985d4cd8d2d05cc53d4db0d1a43" [label="/bin/sh -c set -x     && export SECCOMP_PATH=$(mktemp -d)     && git clone https://github.com/seccomp/libseccomp.git \"$SECCOMP_PATH\"     && (         cd \"$SECCOMP_PATH\"         && git checkout \"$SECCOMP_VERSION\"         && ./autogen.sh         && ./configure --prefix=/usr         && make         && make install     )     && rm -rf \"$SECCOMP_PATH\"" shape="box"];
  "sha256:2177b205615ca07f880b69ecd697c2fcc2dc10c1d455cf4ba9247f2eda66e311" [label="/bin/sh -c git clone https://github.com/docker/docker-py.git /docker-py \t&& cd /docker-py \t&& git checkout -q $DOCKER_PY_COMMIT" shape="box"];
  "sha256:3ebaadab72e2f7cb88b6b779b7a6a541db417acc7ae2125bf57b2f4add903954" [label="/bin/sh -c groupadd -r docker" shape="box"];
  "sha256:170d5116ecb2981f7b0b583009039b7f5d5711aa17aefd56ba05a220cc4e143c" [label="/bin/sh -c useradd --create-home --gid docker unprivilegeduser" shape="box"];
  "sha256:73a5e7cdec9667034ee4fb81ed31d25df6f36050c42b2e469adb473ec58c47ca" [label="mkdir{path=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:e934a3d7b1ae8607a69ad773791b4c34320234a7863fed82d4ed0bbc87031838" [label="/bin/sh -c set -x \t&& export GOPATH=\"$(mktemp -d)\" \t&& git clone git://github.com/opencontainers/runc.git \"$GOPATH/src/github.com/opencontainers/runc\" \t&& cd \"$GOPATH/src/github.com/opencontainers/runc\" \t&& git checkout -q \"$RUNC_COMMIT\" \t&& make static BUILDTAGS=\"seccomp apparmor selinux\" \t&& cp runc /usr/local/bin/docker-runc" shape="box"];
  "sha256:3d01f8ca557caca50b4b6b852dce316ca244439fb36938b769af1a7537521ddc" [label="/bin/sh -c set -x \t&& export GOPATH=\"$(mktemp -d)\" \t&& git clone git://github.com/docker/containerd.git \"$GOPATH/src/github.com/docker/containerd\" \t&& cd \"$GOPATH/src/github.com/docker/containerd\" \t&& git checkout -q \"$CONTAINERD_COMMIT\" \t&& make static \t&& cp bin/containerd /usr/local/bin/docker-containerd \t&& cp bin/containerd-shim /usr/local/bin/docker-containerd-shim \t&& cp bin/ctr /usr/local/bin/docker-containerd-ctr" shape="box"];
  "sha256:2f8df1987b8915dcb91a385e71e3bdbf12aa1a17019d1dc588e02279f3e6eb77" [label="local://context" shape="ellipse"];
  "sha256:b7602b9dd2f10fd6cfbd3d1a84396cd4284e170936c6e6f26a437e3198cc47cb" [label="copy{src=/, dest=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:17da4070b88fc6a4f4477c6017dd9fa267be84b610f7da7e86056fde6df5d668" [label="sha256:17da4070b88fc6a4f4477c6017dd9fa267be84b610f7da7e86056fde6df5d668" shape="plaintext"];
  "sha256:750fd68b06cf02989b8c1eab09d69b6f8961e6c162bf902cb3531a8497b8ee6f" -> "sha256:22aa990d65b4da89139d94d807010cd53497187018d463db599102177a4eaaba" [label=""];
  "sha256:22aa990d65b4da89139d94d807010cd53497187018d463db599102177a4eaaba" -> "sha256:91b8f82ff201fc61b58c93fd23fccdb1b3463606cd533556bce1921199b9c479" [label=""];
  "sha256:91b8f82ff201fc61b58c93fd23fccdb1b3463606cd533556bce1921199b9c479" -> "sha256:1687fb4365c4406abf8a807adf245a20638790f03d11312b1bb6db47f194d4be" [label=""];
  "sha256:1687fb4365c4406abf8a807adf245a20638790f03d11312b1bb6db47f194d4be" -> "sha256:9208e50dc8479c68e124c7894a2068f899766985d4cd8d2d05cc53d4db0d1a43" [label=""];
  "sha256:9208e50dc8479c68e124c7894a2068f899766985d4cd8d2d05cc53d4db0d1a43" -> "sha256:2177b205615ca07f880b69ecd697c2fcc2dc10c1d455cf4ba9247f2eda66e311" [label=""];
  "sha256:2177b205615ca07f880b69ecd697c2fcc2dc10c1d455cf4ba9247f2eda66e311" -> "sha256:3ebaadab72e2f7cb88b6b779b7a6a541db417acc7ae2125bf57b2f4add903954" [label=""];
  "sha256:3ebaadab72e2f7cb88b6b779b7a6a541db417acc7ae2125bf57b2f4add903954" -> "sha256:170d5116ecb2981f7b0b583009039b7f5d5711aa17aefd56ba05a220cc4e143c" [label=""];
  "sha256:170d5116ecb2981f7b0b583009039b7f5d5711aa17aefd56ba05a220cc4e143c" -> "sha256:73a5e7cdec9667034ee4fb81ed31d25df6f36050c42b2e469adb473ec58c47ca" [label=""];
  "sha256:73a5e7cdec9667034ee4fb81ed31d25df6f36050c42b2e469adb473ec58c47ca" -> "sha256:e934a3d7b1ae8607a69ad773791b4c34320234a7863fed82d4ed0bbc87031838" [label=""];
  "sha256:e934a3d7b1ae8607a69ad773791b4c34320234a7863fed82d4ed0bbc87031838" -> "sha256:3d01f8ca557caca50b4b6b852dce316ca244439fb36938b769af1a7537521ddc" [label=""];
  "sha256:3d01f8ca557caca50b4b6b852dce316ca244439fb36938b769af1a7537521ddc" -> "sha256:b7602b9dd2f10fd6cfbd3d1a84396cd4284e170936c6e6f26a437e3198cc47cb" [label=""];
  "sha256:2f8df1987b8915dcb91a385e71e3bdbf12aa1a17019d1dc588e02279f3e6eb77" -> "sha256:b7602b9dd2f10fd6cfbd3d1a84396cd4284e170936c6e6f26a437e3198cc47cb" [label=""];
  "sha256:b7602b9dd2f10fd6cfbd3d1a84396cd4284e170936c6e6f26a437e3198cc47cb" -> "sha256:17da4070b88fc6a4f4477c6017dd9fa267be84b610f7da7e86056fde6df5d668" [label=""];
}

