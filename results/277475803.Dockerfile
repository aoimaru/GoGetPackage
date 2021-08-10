[app/sources/277475803.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:df381f4180725c8be6d0c552e6a89626b7217fbf44a7514a6614dda748cc5018" [label="/bin/sh -c apt-get update &&   apt-get install -y build-essential gcc-4.9 prelink autoconf libtool nasm gtk-doc-tools texinfo gperf advancecomp libglib2.0-dev gobject-introspection jq cmake &&   curl https://sh.rustup.rs -sSf | sh -s -- -y" shape="box"];
  "sha256:7ffdca074b7be4424c329d8435154ca2f2205b9ed27709c8e9adf097e4c85f6a" [label="local://context" shape="ellipse"];
  "sha256:d18ca282f99e20bb1d28ad2ece70d0f0f61b3e93cb45833eee5debc6e81d7d37" [label="copy{src=/Toolchain.cmake, dest=/root/}" shape="note"];
  "sha256:f6e21e0f72f896234f122ee4b6fe8ea62099a17850a8008ab2a99e65712aad9a" [label="sha256:f6e21e0f72f896234f122ee4b6fe8ea62099a17850a8008ab2a99e65712aad9a" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:df381f4180725c8be6d0c552e6a89626b7217fbf44a7514a6614dda748cc5018" [label=""];
  "sha256:df381f4180725c8be6d0c552e6a89626b7217fbf44a7514a6614dda748cc5018" -> "sha256:d18ca282f99e20bb1d28ad2ece70d0f0f61b3e93cb45833eee5debc6e81d7d37" [label=""];
  "sha256:7ffdca074b7be4424c329d8435154ca2f2205b9ed27709c8e9adf097e4c85f6a" -> "sha256:d18ca282f99e20bb1d28ad2ece70d0f0f61b3e93cb45833eee5debc6e81d7d37" [label=""];
  "sha256:d18ca282f99e20bb1d28ad2ece70d0f0f61b3e93cb45833eee5debc6e81d7d37" -> "sha256:f6e21e0f72f896234f122ee4b6fe8ea62099a17850a8008ab2a99e65712aad9a" [label=""];
}

