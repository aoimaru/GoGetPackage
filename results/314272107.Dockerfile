[app/sources/314272107.Dockerfile]
digraph {
  "sha256:a2670875ca33e015ea1e11ab798e5b5df9e8d4b9e3699bfdf6cba3ec9039b58d" [label="docker-image://docker.io/nvidia/cuda:10.0-cudnn7-devel-ubuntu16.04" shape="ellipse"];
  "sha256:2d3c56636652d38b5895c9e6bd1a0a1386718256f520699a029bcb9930b746d9" [label="/bin/sh -c cp -P /usr/include/cudnn.h /usr/local/cuda/include" shape="box"];
  "sha256:37070d7b67121cffb23b9eb530c9fc31f59b5eaf19a209fe81d298b06be598d9" [label="/bin/sh -c cp -P /usr/lib/x86_64-linux-gnu/libcudnn* /usr/local/cuda/lib64" shape="box"];
  "sha256:20a66c64980efa9b21876bcfe65ab8053661d091125e34aa1be6dbf17f338955" [label="local://context" shape="ellipse"];
  "sha256:5503bd5078783e61778489f41df9a4c0bb676890aa0b627ff35279da44781f60" [label="copy{src=/install/*.sh, dest=/install/}" shape="note"];
  "sha256:07db7e8bf6f13fb71c17fdff82bfa7628d8a2d89a60c65e27ba228529da0c948" [label="/bin/sh -c /install/install_bootstrap_deb_packages.sh" shape="box"];
  "sha256:ad47bd9c4ff67df420c68f7efcda5fd667b89304adbef920ed2dbc6449d8d246" [label="/bin/sh -c add-apt-repository -y ppa:openjdk-r/ppa &&     add-apt-repository -y ppa:george-edison55/cmake-3.x" shape="box"];
  "sha256:7870515a13f664da29e66a2ca8f8770c2762d89305fea9b4ab711afb9643e58b" [label="/bin/sh -c /install/install_deb_packages.sh" shape="box"];
  "sha256:56c62754aca470d6654a8276ca43030120771cb0d67e32e12b584429bfeecc4c" [label="/bin/sh -c /install/install_pip_packages.sh" shape="box"];
  "sha256:ab9e22ed1631ed1b22e835baef638b5b5fe59ef894d5e940b94addf747f04737" [label="/bin/sh -c /install/install_golang.sh" shape="box"];
  "sha256:0227aeba8d3fa49dde5cf7494ed8716bfa5ac8212d9631912b804cad69960383" [label="/bin/sh -c cd /tmp &&     wget https://storage.googleapis.com/clang-builds-stable/clang-ubuntu16_04/clang_r337145.tar.gz &&     echo \"ab98c63eb09c04112cc992bc95ebc0dcea8c5e9d0760438789be2896cdc69ff8  clang_r337145.tar.gz\" | sha256sum -c &&     tar -C /usr/local -xf clang_r323528.tar.gz &&     rm clang_r337145.tar.gz" shape="box"];
  "sha256:52e29b6702b17cf2c4232c6ecb91dd1f290eeddc27790f3e500a2cfa18e8b24a" [label="sha256:52e29b6702b17cf2c4232c6ecb91dd1f290eeddc27790f3e500a2cfa18e8b24a" shape="plaintext"];
  "sha256:a2670875ca33e015ea1e11ab798e5b5df9e8d4b9e3699bfdf6cba3ec9039b58d" -> "sha256:2d3c56636652d38b5895c9e6bd1a0a1386718256f520699a029bcb9930b746d9" [label=""];
  "sha256:2d3c56636652d38b5895c9e6bd1a0a1386718256f520699a029bcb9930b746d9" -> "sha256:37070d7b67121cffb23b9eb530c9fc31f59b5eaf19a209fe81d298b06be598d9" [label=""];
  "sha256:37070d7b67121cffb23b9eb530c9fc31f59b5eaf19a209fe81d298b06be598d9" -> "sha256:5503bd5078783e61778489f41df9a4c0bb676890aa0b627ff35279da44781f60" [label=""];
  "sha256:20a66c64980efa9b21876bcfe65ab8053661d091125e34aa1be6dbf17f338955" -> "sha256:5503bd5078783e61778489f41df9a4c0bb676890aa0b627ff35279da44781f60" [label=""];
  "sha256:5503bd5078783e61778489f41df9a4c0bb676890aa0b627ff35279da44781f60" -> "sha256:07db7e8bf6f13fb71c17fdff82bfa7628d8a2d89a60c65e27ba228529da0c948" [label=""];
  "sha256:07db7e8bf6f13fb71c17fdff82bfa7628d8a2d89a60c65e27ba228529da0c948" -> "sha256:ad47bd9c4ff67df420c68f7efcda5fd667b89304adbef920ed2dbc6449d8d246" [label=""];
  "sha256:ad47bd9c4ff67df420c68f7efcda5fd667b89304adbef920ed2dbc6449d8d246" -> "sha256:7870515a13f664da29e66a2ca8f8770c2762d89305fea9b4ab711afb9643e58b" [label=""];
  "sha256:7870515a13f664da29e66a2ca8f8770c2762d89305fea9b4ab711afb9643e58b" -> "sha256:56c62754aca470d6654a8276ca43030120771cb0d67e32e12b584429bfeecc4c" [label=""];
  "sha256:56c62754aca470d6654a8276ca43030120771cb0d67e32e12b584429bfeecc4c" -> "sha256:ab9e22ed1631ed1b22e835baef638b5b5fe59ef894d5e940b94addf747f04737" [label=""];
  "sha256:ab9e22ed1631ed1b22e835baef638b5b5fe59ef894d5e940b94addf747f04737" -> "sha256:0227aeba8d3fa49dde5cf7494ed8716bfa5ac8212d9631912b804cad69960383" [label=""];
  "sha256:0227aeba8d3fa49dde5cf7494ed8716bfa5ac8212d9631912b804cad69960383" -> "sha256:52e29b6702b17cf2c4232c6ecb91dd1f290eeddc27790f3e500a2cfa18e8b24a" [label=""];
}

