[app/sources/264997850.Dockerfile]
digraph {
  "sha256:f86d3ff6ab243c82f5e8acee1be79fdc31d586a5604f8839002842b9d0328e6f" [label="docker-image://docker.io/bitnami/minideb-extras:stretch-r358@sha256:0ca8587c8c93b2fb4b1d79de3792a561d5a0505e0426f07c24b501cbce68750d" shape="ellipse"];
  "sha256:2974ae98ae89d5318a5b274ccdd72a6b8472aae5093ea5cdc125e5ba0b50370a" [label="/bin/sh -c install_packages libarchive-tools libbz2-1.0 libc6 libgcc1 libncurses5 libreadline7 libsqlite3-0 libssl1.1 libstdc++6 libtinfo5 zlib1g" shape="box"];
  "sha256:446195598f64eeb9bfdf68ee63f8dcb233917ef2557383fed1529db9aca3f85c" [label="/bin/sh -c bitnami-pkg install python-2.7.16-0 --checksum 1bd6ac396615c99f639a1b4755425accd03e0ec500e52bf068491cc0cac6d385" shape="box"];
  "sha256:efbfe895d06cf35391fb96da3bb128cd1dafaa939c36bac6676937ff331e70c4" [label="/bin/sh -c bitnami-pkg unpack tensorflow-inception-1.11.1-20 --checksum 6d36ea0870371840bacd14803bab64f84747411406aebe14b19c6b42715e2e8e" shape="box"];
  "sha256:20df00845ab0ba7ecdbdedcedc0ed29638cf0c13bb019f049e226dcfdfa8980a" [label="/bin/sh -c pip install --upgrade pip &&     pip install enum34 futures mock numpy backports.weakref &&     pip install Keras_Applications==1.0.5 Keras_Preprocessing==1.0.3 --no-deps &&     pip install -i https://testpypi.python.org/simple --pre grpcio" shape="box"];
  "sha256:4844efeca657a7854c10a1855ec1a478a713ed210374d493ac20dae3a9d349e0" [label="local://context" shape="ellipse"];
  "sha256:ad4b5ca04b8b46d9e006ff5e08257c1c22f42f890534ed0509be83fae1c59043" [label="copy{src=/rootfs, dest=/}" shape="note"];
  "sha256:119ad6e9188ca83bda23ea2d49e04a4dd3515903c8b8e1007ba8bdfa82709646" [label="sha256:119ad6e9188ca83bda23ea2d49e04a4dd3515903c8b8e1007ba8bdfa82709646" shape="plaintext"];
  "sha256:f86d3ff6ab243c82f5e8acee1be79fdc31d586a5604f8839002842b9d0328e6f" -> "sha256:2974ae98ae89d5318a5b274ccdd72a6b8472aae5093ea5cdc125e5ba0b50370a" [label=""];
  "sha256:2974ae98ae89d5318a5b274ccdd72a6b8472aae5093ea5cdc125e5ba0b50370a" -> "sha256:446195598f64eeb9bfdf68ee63f8dcb233917ef2557383fed1529db9aca3f85c" [label=""];
  "sha256:446195598f64eeb9bfdf68ee63f8dcb233917ef2557383fed1529db9aca3f85c" -> "sha256:efbfe895d06cf35391fb96da3bb128cd1dafaa939c36bac6676937ff331e70c4" [label=""];
  "sha256:efbfe895d06cf35391fb96da3bb128cd1dafaa939c36bac6676937ff331e70c4" -> "sha256:20df00845ab0ba7ecdbdedcedc0ed29638cf0c13bb019f049e226dcfdfa8980a" [label=""];
  "sha256:20df00845ab0ba7ecdbdedcedc0ed29638cf0c13bb019f049e226dcfdfa8980a" -> "sha256:ad4b5ca04b8b46d9e006ff5e08257c1c22f42f890534ed0509be83fae1c59043" [label=""];
  "sha256:4844efeca657a7854c10a1855ec1a478a713ed210374d493ac20dae3a9d349e0" -> "sha256:ad4b5ca04b8b46d9e006ff5e08257c1c22f42f890534ed0509be83fae1c59043" [label=""];
  "sha256:ad4b5ca04b8b46d9e006ff5e08257c1c22f42f890534ed0509be83fae1c59043" -> "sha256:119ad6e9188ca83bda23ea2d49e04a4dd3515903c8b8e1007ba8bdfa82709646" [label=""];
}

