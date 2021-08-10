[app/sources/463092424.Dockerfile]
digraph {
  "sha256:eb159ff5a3d0e56dbd503d5be62ab1e6138b42e2eb2c2215ae7948592b740e8c" [label="docker-image://launcher.gcr.io/google/clang-debian8:latest@sha256:0dfb94ce09181dc6a49ffa1e778d32fa6905ee8998fccb111b9461a4b77e5853" shape="ellipse"];
  "sha256:a0c88beac8b2fce2b6c5018ee3ae3a24312ad7131ff90808e83f43b490803433" [label="/bin/sh -c apt-get update && apt-get --no-install-recommends install -y     binutils     binutils-gold     curl     libstdc++-4.9-dev     python     python-dev     python-numpy     python-pip     unzip     zip &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:5396615b7e6f1b861db6bb3cce4ea38da54b35fb0b8171c62f982477d20e92e0" [label="/bin/sh -c curl -fSsL -O https://bootstrap.pypa.io/get-pip.py &&     python get-pip.py &&     rm get-pip.py" shape="box"];
  "sha256:aea839d3b42ef14acb85f9de5bc116c1a146685fa7c46a8f5a3f3162eae4960d" [label="/bin/sh -c pip install  --upgrade enum34 futures mock numpy six backports.weakref portpicker &&     pip install --pre 'protobuf>=3.0.0a3' &&     pip install 'grpcio>=1.1.3'" shape="box"];
  "sha256:795b729f7b17ad25825f1d2d47479b81cc4f4ec7d02971b39f69567cda621247" [label="mkdir{path=/botexec}" shape="note"];
  "sha256:780f923f2b934a617e00b4d4d943e862fcd1fa2b3d0d14c7b035df03e7bf7157" [label="sha256:780f923f2b934a617e00b4d4d943e862fcd1fa2b3d0d14c7b035df03e7bf7157" shape="plaintext"];
  "sha256:eb159ff5a3d0e56dbd503d5be62ab1e6138b42e2eb2c2215ae7948592b740e8c" -> "sha256:a0c88beac8b2fce2b6c5018ee3ae3a24312ad7131ff90808e83f43b490803433" [label=""];
  "sha256:a0c88beac8b2fce2b6c5018ee3ae3a24312ad7131ff90808e83f43b490803433" -> "sha256:5396615b7e6f1b861db6bb3cce4ea38da54b35fb0b8171c62f982477d20e92e0" [label=""];
  "sha256:5396615b7e6f1b861db6bb3cce4ea38da54b35fb0b8171c62f982477d20e92e0" -> "sha256:aea839d3b42ef14acb85f9de5bc116c1a146685fa7c46a8f5a3f3162eae4960d" [label=""];
  "sha256:aea839d3b42ef14acb85f9de5bc116c1a146685fa7c46a8f5a3f3162eae4960d" -> "sha256:795b729f7b17ad25825f1d2d47479b81cc4f4ec7d02971b39f69567cda621247" [label=""];
  "sha256:795b729f7b17ad25825f1d2d47479b81cc4f4ec7d02971b39f69567cda621247" -> "sha256:780f923f2b934a617e00b4d4d943e862fcd1fa2b3d0d14c7b035df03e7bf7157" [label=""];
}

