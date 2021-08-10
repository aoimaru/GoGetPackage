[app/sources/423969363.Dockerfile]
digraph {
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:482b0bcc8c52da0ddfbdacc8c44b16ec3365e612ade33158999b0d56eabce0e8" [label="/bin/sh -c apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y       make       g++       liblapack-dev       liblapacke-dev       libopenblas-dev       &&     apt-get autoremove --purge -y &&     apt-get autoclean -y &&     rm -rf /var/cache/apt/* /var/lib/apt/lists/*" shape="box"];
  "sha256:11a92ba6ae2ffcdd2db59ce40e8d42a06800a718c0b101d3c13dd1a15c282bc2" [label="sha256:11a92ba6ae2ffcdd2db59ce40e8d42a06800a718c0b101d3c13dd1a15c282bc2" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:482b0bcc8c52da0ddfbdacc8c44b16ec3365e612ade33158999b0d56eabce0e8" [label=""];
  "sha256:482b0bcc8c52da0ddfbdacc8c44b16ec3365e612ade33158999b0d56eabce0e8" -> "sha256:11a92ba6ae2ffcdd2db59ce40e8d42a06800a718c0b101d3c13dd1a15c282bc2" [label=""];
}

