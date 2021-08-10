[app/sources/346944813.Dockerfile]
digraph {
  "sha256:ecddb69b0e9ffec65ce2b93da3093d6ceaa06343beecbcefe445bbcb729ef0b5" [label="docker-image://docker.io/baekjoon/onlinejudge-base:14.04" shape="ellipse"];
  "sha256:31c0f85ccd5e9b238cf09b7dcf3c14b79ec5c0dbb6f88a94761f68073cb5872c" [label="/bin/sh -c add-apt-repository -y ppa:webupd8team/java" shape="box"];
  "sha256:9e07a320b0ea1b913601a15012b847249832bf122bfac9f440ad58a6893f7ec9" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:c0deccd9d09ecfef988ff71b1532c772ae9b357aefb70d1edd00e87431ba8173" [label="/bin/sh -c echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections" shape="box"];
  "sha256:67113d05ac44a7cac52429a8bc627e50fec0a8c8de13f51ddcd28f6ac22eb1fa" [label="/bin/sh -c apt-get install -y oracle-java7-installer" shape="box"];
  "sha256:b40c7d00c5bf9990effcd0a887f0c53043e90ed5045f0ec3b988d5a5b9df51f1" [label="/bin/sh -c apt-get install -y wget" shape="box"];
  "sha256:d73738d67aae6054cad71061236604f9cc267e4ddebf413b5b9e496120ef7652" [label="/bin/sh -c apt-get install -y unzip" shape="box"];
  "sha256:bb805bc6ccc7108b1c8c21c3ff70039f820c758358e4f5781abf5f278b558b49" [label="/bin/sh -c wget http://repo1.maven.org/maven2/org/clojure/clojure/1.7.0/clojure-1.7.0.zip" shape="box"];
  "sha256:79316b9b54f0178c9d90ac116003099d50d3ecea822ea6cbce2f5d184c4c220d" [label="/bin/sh -c unzip clojure-1.7.0.zip" shape="box"];
  "sha256:ac4b8d00be9d65fdeab83e654ee5fddb33e3a80b93b78c837b2b1b3d7ae91657" [label="/bin/sh -c rm clojure-1.7.0.zip" shape="box"];
  "sha256:e47a4bca57cc53099d1c83430d63419c4c99abe1b5e1c1eca00abec0615b55c7" [label="/bin/sh -c rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2526a8821ffa717118661895fd5ed32d75d0c95e1d5493a2c9380b87949d2aff" [label="/bin/sh -c rm -rf /var/cache/oracle-jdk7-installer" shape="box"];
  "sha256:2bf3aeaa9cffb51418c4eedc449634585721d7cfdb43b34a8afde9628126439a" [label="sha256:2bf3aeaa9cffb51418c4eedc449634585721d7cfdb43b34a8afde9628126439a" shape="plaintext"];
  "sha256:ecddb69b0e9ffec65ce2b93da3093d6ceaa06343beecbcefe445bbcb729ef0b5" -> "sha256:31c0f85ccd5e9b238cf09b7dcf3c14b79ec5c0dbb6f88a94761f68073cb5872c" [label=""];
  "sha256:31c0f85ccd5e9b238cf09b7dcf3c14b79ec5c0dbb6f88a94761f68073cb5872c" -> "sha256:9e07a320b0ea1b913601a15012b847249832bf122bfac9f440ad58a6893f7ec9" [label=""];
  "sha256:9e07a320b0ea1b913601a15012b847249832bf122bfac9f440ad58a6893f7ec9" -> "sha256:c0deccd9d09ecfef988ff71b1532c772ae9b357aefb70d1edd00e87431ba8173" [label=""];
  "sha256:c0deccd9d09ecfef988ff71b1532c772ae9b357aefb70d1edd00e87431ba8173" -> "sha256:67113d05ac44a7cac52429a8bc627e50fec0a8c8de13f51ddcd28f6ac22eb1fa" [label=""];
  "sha256:67113d05ac44a7cac52429a8bc627e50fec0a8c8de13f51ddcd28f6ac22eb1fa" -> "sha256:b40c7d00c5bf9990effcd0a887f0c53043e90ed5045f0ec3b988d5a5b9df51f1" [label=""];
  "sha256:b40c7d00c5bf9990effcd0a887f0c53043e90ed5045f0ec3b988d5a5b9df51f1" -> "sha256:d73738d67aae6054cad71061236604f9cc267e4ddebf413b5b9e496120ef7652" [label=""];
  "sha256:d73738d67aae6054cad71061236604f9cc267e4ddebf413b5b9e496120ef7652" -> "sha256:bb805bc6ccc7108b1c8c21c3ff70039f820c758358e4f5781abf5f278b558b49" [label=""];
  "sha256:bb805bc6ccc7108b1c8c21c3ff70039f820c758358e4f5781abf5f278b558b49" -> "sha256:79316b9b54f0178c9d90ac116003099d50d3ecea822ea6cbce2f5d184c4c220d" [label=""];
  "sha256:79316b9b54f0178c9d90ac116003099d50d3ecea822ea6cbce2f5d184c4c220d" -> "sha256:ac4b8d00be9d65fdeab83e654ee5fddb33e3a80b93b78c837b2b1b3d7ae91657" [label=""];
  "sha256:ac4b8d00be9d65fdeab83e654ee5fddb33e3a80b93b78c837b2b1b3d7ae91657" -> "sha256:e47a4bca57cc53099d1c83430d63419c4c99abe1b5e1c1eca00abec0615b55c7" [label=""];
  "sha256:e47a4bca57cc53099d1c83430d63419c4c99abe1b5e1c1eca00abec0615b55c7" -> "sha256:2526a8821ffa717118661895fd5ed32d75d0c95e1d5493a2c9380b87949d2aff" [label=""];
  "sha256:2526a8821ffa717118661895fd5ed32d75d0c95e1d5493a2c9380b87949d2aff" -> "sha256:2bf3aeaa9cffb51418c4eedc449634585721d7cfdb43b34a8afde9628126439a" [label=""];
}

