[app/sources/413853451.Dockerfile]
digraph {
  "sha256:b184c254109b230fd65365e21929461b4cdc14576abed070b547fd8b4712fc37" [label="local://context" shape="ellipse"];
  "sha256:afab75a5bc46ebf328641a866aa0a1a9d9c8749a6da006b505355baa0c5565ce" [label="docker-image://docker.io/library/ubuntu:bionic@sha256:7bd7a9ca99f868bf69c4b6212f64f2af8e243f97ba13abb3e641e03a7ceb59e8" shape="ellipse"];
  "sha256:26eb39831b2ec61c56522b47864df12a62ef9059811304c3185a0dfebfd5fad5" [label="/bin/sh -c set -x     && sed -i \"s/archive.ubuntu.com/$AWS_REGION.ec2.archive.ubuntu.com/\" /etc/apt/sources.list     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install -y gnupg1     && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0x51716619e084dab9     && echo 'deb http://cran.rstudio.com/bin/linux/ubuntu bionic-cran35/' >> /etc/apt/sources.list     && apt-get update" shape="box"];
  "sha256:874f4272125c8e2430313e61f1a4258efcdae0a05cd2187baa1b8e501273915c" [label="/bin/sh -c apt-get update   && apt-get install -y software-properties-common   && add-apt-repository ppa:openjdk-r/ppa" shape="box"];
  "sha256:1fed8901383af74446f66c498aa9daa45dede953cd764d6ce5d369cee01033e8" [label="/bin/sh -c apt-get update &&     export DEBIAN_FRONTEND=noninteractive &&     apt-get install -y     ant     build-essential     clang     curl     debsigs     dpkg-sig     expect     fakeroot     git-core     libattr1-dev     libacl1-dev     libbz2-dev     libcap-dev     libcurl4-openssl-dev     libfuse2     libgtk-3-0     libgl1-mesa-dev     libegl1-mesa     libpam-dev     libpango1.0-dev     libuser1-dev     libssl-dev     libxslt1-dev     lsof     openjdk-8-jdk     pkg-config     python     r-base     sudo     unzip     uuid-dev     valgrind     wget     zlib1g-dev" shape="box"];
  "sha256:c4cb28e0779f928b5edf84c1de8c41ec858896e28a2e98c0f8d90f045e3c44de" [label="/bin/sh -c update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java" shape="box"];
  "sha256:abf582528324698a12449d0b4860f6c6e636600c372450c29dc55c8c5d3c0002" [label="/bin/sh -c cd /tmp     && wget https://nixos.org/releases/patchelf/patchelf-0.9/patchelf-0.9.tar.gz     && tar xzvf patchelf-0.9.tar.gz     && cd patchelf-0.9     && ./configure     && make     && make install" shape="box"];
  "sha256:6c9d74ca6aaf272334b882f7e424322ba025dad4edf9670481f2160a2db61bde" [label="copy{src=/dependencies/common/install-boost, dest=/tmp/}" shape="note"];
  "sha256:eccc64d157a6bc5b49a144dbb84c8b8b5cd12bf79a2a805e64c1a2d0ef1d8b4b" [label="/bin/sh -c bash /tmp/install-boost || bash /tmp/install-boost" shape="box"];
  "sha256:3152b8628d05b9342fdaabcbcc4eb3e076dc767415f7531201b0b32529abef7e" [label="copy{src=/package/linux/install-dependencies, dest=/tmp/}" shape="note"];
  "sha256:4c8c73ea18db5e6e2aa12fbfb64bd0e9d3d36ac89f86beac4895c78dd21df7be" [label="/bin/sh -c /bin/bash /tmp/install-dependencies" shape="box"];
  "sha256:f91a368c3de7f4c81a9c03d0f1cc6cca4c47069906141b5e969bb01a20c85acd" [label="/bin/sh -c mkdir -p /opt/rstudio-tools/dependencies/common" shape="box"];
  "sha256:49957bdbde8b7860c6886f27546f2b6bb5ee7ddfbc2be294af3259aaa39eca4a" [label="copy{src=/dependencies/common/*, dest=/opt/rstudio-tools/dependencies/common/}" shape="note"];
  "sha256:5946be0256d221e181b4600788528703241bd4b19c97c676f54927dee20074f7" [label="/bin/sh -c cd /opt/rstudio-tools/dependencies/common && /bin/bash ./install-common" shape="box"];
  "sha256:740e8e99b59a692b0e6f5884f8ce8473911084d0311c769145438ffa49a97c86" [label="copy{src=/dependencies/linux/install-qt-sdk, dest=/tmp/}" shape="note"];
  "sha256:29dc7aed3cfc652404a21bdf88948dbad1e3f371133f01d99cae908726c0f11f" [label="/bin/sh -c mkdir -p /opt/RStudio-QtSDK &&     export QT_SDK_DIR=/opt/RStudio-QtSDK/Qt5.12.1 &&     export QT_QPA_PLATFORM=minimal &&     /tmp/install-qt-sdk" shape="box"];
  "sha256:a264ac089e3f50fbb58e48c3f42a71d6a920a5685135f1d00229d36719512652" [label="/bin/sh -c groupadd -g $JENKINS_GID jenkins &&     useradd -m -d /var/lib/jenkins -u $JENKINS_UID -g jenkins jenkins &&     echo \"jenkins ALL=(ALL) NOPASSWD: ALL\" >> /etc/sudoers" shape="box"];
  "sha256:91c99b6a612acbda77c3f20df30cb3b98b0f1de3a32ccd49477a09e6589d187a" [label="sha256:91c99b6a612acbda77c3f20df30cb3b98b0f1de3a32ccd49477a09e6589d187a" shape="plaintext"];
  "sha256:afab75a5bc46ebf328641a866aa0a1a9d9c8749a6da006b505355baa0c5565ce" -> "sha256:26eb39831b2ec61c56522b47864df12a62ef9059811304c3185a0dfebfd5fad5" [label=""];
  "sha256:26eb39831b2ec61c56522b47864df12a62ef9059811304c3185a0dfebfd5fad5" -> "sha256:874f4272125c8e2430313e61f1a4258efcdae0a05cd2187baa1b8e501273915c" [label=""];
  "sha256:874f4272125c8e2430313e61f1a4258efcdae0a05cd2187baa1b8e501273915c" -> "sha256:1fed8901383af74446f66c498aa9daa45dede953cd764d6ce5d369cee01033e8" [label=""];
  "sha256:1fed8901383af74446f66c498aa9daa45dede953cd764d6ce5d369cee01033e8" -> "sha256:c4cb28e0779f928b5edf84c1de8c41ec858896e28a2e98c0f8d90f045e3c44de" [label=""];
  "sha256:c4cb28e0779f928b5edf84c1de8c41ec858896e28a2e98c0f8d90f045e3c44de" -> "sha256:abf582528324698a12449d0b4860f6c6e636600c372450c29dc55c8c5d3c0002" [label=""];
  "sha256:abf582528324698a12449d0b4860f6c6e636600c372450c29dc55c8c5d3c0002" -> "sha256:6c9d74ca6aaf272334b882f7e424322ba025dad4edf9670481f2160a2db61bde" [label=""];
  "sha256:b184c254109b230fd65365e21929461b4cdc14576abed070b547fd8b4712fc37" -> "sha256:6c9d74ca6aaf272334b882f7e424322ba025dad4edf9670481f2160a2db61bde" [label=""];
  "sha256:6c9d74ca6aaf272334b882f7e424322ba025dad4edf9670481f2160a2db61bde" -> "sha256:eccc64d157a6bc5b49a144dbb84c8b8b5cd12bf79a2a805e64c1a2d0ef1d8b4b" [label=""];
  "sha256:eccc64d157a6bc5b49a144dbb84c8b8b5cd12bf79a2a805e64c1a2d0ef1d8b4b" -> "sha256:3152b8628d05b9342fdaabcbcc4eb3e076dc767415f7531201b0b32529abef7e" [label=""];
  "sha256:b184c254109b230fd65365e21929461b4cdc14576abed070b547fd8b4712fc37" -> "sha256:3152b8628d05b9342fdaabcbcc4eb3e076dc767415f7531201b0b32529abef7e" [label=""];
  "sha256:3152b8628d05b9342fdaabcbcc4eb3e076dc767415f7531201b0b32529abef7e" -> "sha256:4c8c73ea18db5e6e2aa12fbfb64bd0e9d3d36ac89f86beac4895c78dd21df7be" [label=""];
  "sha256:4c8c73ea18db5e6e2aa12fbfb64bd0e9d3d36ac89f86beac4895c78dd21df7be" -> "sha256:f91a368c3de7f4c81a9c03d0f1cc6cca4c47069906141b5e969bb01a20c85acd" [label=""];
  "sha256:f91a368c3de7f4c81a9c03d0f1cc6cca4c47069906141b5e969bb01a20c85acd" -> "sha256:49957bdbde8b7860c6886f27546f2b6bb5ee7ddfbc2be294af3259aaa39eca4a" [label=""];
  "sha256:b184c254109b230fd65365e21929461b4cdc14576abed070b547fd8b4712fc37" -> "sha256:49957bdbde8b7860c6886f27546f2b6bb5ee7ddfbc2be294af3259aaa39eca4a" [label=""];
  "sha256:49957bdbde8b7860c6886f27546f2b6bb5ee7ddfbc2be294af3259aaa39eca4a" -> "sha256:5946be0256d221e181b4600788528703241bd4b19c97c676f54927dee20074f7" [label=""];
  "sha256:5946be0256d221e181b4600788528703241bd4b19c97c676f54927dee20074f7" -> "sha256:740e8e99b59a692b0e6f5884f8ce8473911084d0311c769145438ffa49a97c86" [label=""];
  "sha256:b184c254109b230fd65365e21929461b4cdc14576abed070b547fd8b4712fc37" -> "sha256:740e8e99b59a692b0e6f5884f8ce8473911084d0311c769145438ffa49a97c86" [label=""];
  "sha256:740e8e99b59a692b0e6f5884f8ce8473911084d0311c769145438ffa49a97c86" -> "sha256:29dc7aed3cfc652404a21bdf88948dbad1e3f371133f01d99cae908726c0f11f" [label=""];
  "sha256:29dc7aed3cfc652404a21bdf88948dbad1e3f371133f01d99cae908726c0f11f" -> "sha256:a264ac089e3f50fbb58e48c3f42a71d6a920a5685135f1d00229d36719512652" [label=""];
  "sha256:a264ac089e3f50fbb58e48c3f42a71d6a920a5685135f1d00229d36719512652" -> "sha256:91c99b6a612acbda77c3f20df30cb3b98b0f1de3a32ccd49477a09e6589d187a" [label=""];
}

