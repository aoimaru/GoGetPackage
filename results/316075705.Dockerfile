[app/sources/316075705.Dockerfile]
digraph {
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:e66d7f9c8c34f4d40889a627470ba39d0cff1678fd37b305dd21df89b2883b70" [label="/bin/sh -c apt-get update  && apt-get install -y -q  curl  gcc  libssl-dev  libzmq3-dev  pkg-config  unzip  && apt-get clean  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d6c2bc7696e9297850d1020d0bf3a9a0d43409856056c9d11c86a6d05d10e3a6" [label="/bin/sh -c curl https://sh.rustup.rs -sSf | sh -s -- -y  && curl -OLsS https://github.com/google/protobuf/releases/download/v3.5.1/protoc-3.5.1-linux-x86_64.zip  && unzip protoc-3.5.1-linux-x86_64.zip -d protoc3  && rm protoc-3.5.1-linux-x86_64.zip" shape="box"];
  "sha256:f98953a12c6cef8cea1151feab90db6fd4a545b44cebaa3b25a460371fcafdd4" [label="mkdir{path=/project/contracts/sawtooth-pike/tp}" shape="note"];
  "sha256:20041d370509c0dfc3a9524bac4e61e1e8e2395681ba6e7b35f030fd8ea50880" [label="sha256:20041d370509c0dfc3a9524bac4e61e1e8e2395681ba6e7b35f030fd8ea50880" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:e66d7f9c8c34f4d40889a627470ba39d0cff1678fd37b305dd21df89b2883b70" [label=""];
  "sha256:e66d7f9c8c34f4d40889a627470ba39d0cff1678fd37b305dd21df89b2883b70" -> "sha256:d6c2bc7696e9297850d1020d0bf3a9a0d43409856056c9d11c86a6d05d10e3a6" [label=""];
  "sha256:d6c2bc7696e9297850d1020d0bf3a9a0d43409856056c9d11c86a6d05d10e3a6" -> "sha256:f98953a12c6cef8cea1151feab90db6fd4a545b44cebaa3b25a460371fcafdd4" [label=""];
  "sha256:f98953a12c6cef8cea1151feab90db6fd4a545b44cebaa3b25a460371fcafdd4" -> "sha256:20041d370509c0dfc3a9524bac4e61e1e8e2395681ba6e7b35f030fd8ea50880" [label=""];
}

