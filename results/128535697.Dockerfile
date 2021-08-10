[app/sources/128535697.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:e860381047cb7d71ec2a3bcd418334c2f1dbf06e5d45c8e801cc6a2ec5f5927d" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends   g++   make   file   curl   ca-certificates   python2.7   git   cmake   xz-utils   sudo   gdb   patch   libssl-dev   pkg-config" shape="box"];
  "sha256:1b85aa7926555383bc458a64a3b8f0d5de34be8a9f98e3296bf0508063fd527b" [label="mkdir{path=/build}" shape="note"];
  "sha256:a4fea64d609bd5d03a5c0b62fd09773232a632287e9e16499c7e0555f100b546" [label="local://context" shape="ellipse"];
  "sha256:92694fc911373270d7d353805f38216091041c23a48d07effb1d83de69605c83" [label="copy{src=/scripts/musl.sh, dest=/build/}" shape="note"];
  "sha256:51021a11edbe699c274bd0a7d47492d13927af6ae0c0fcfd26e32348e7538e68" [label="/bin/sh -c CC=gcc     CFLAGS=\"-Wa,-mrelax-relocations=no\"     CXX=g++     CXXFLAGS=\"-Wa,-mrelax-relocations=no\"     bash musl.sh x86_64 && rm -rf /build" shape="box"];
  "sha256:3d6e986a3b57e1d012887a55930f827c07ae1c61067d3680f0f18a49438e41c8" [label="copy{src=/scripts/sccache.sh, dest=/scripts/}" shape="note"];
  "sha256:f56f329242ab6112cc300b1e26b4795d5915ee5c573b357b63ac28cf1e3460b3" [label="/bin/sh -c sh /scripts/sccache.sh" shape="box"];
  "sha256:d8a4cd57aa46c0e4e4e2e8885d9dc176f53dda53438e033370c39053c4088efc" [label="sha256:d8a4cd57aa46c0e4e4e2e8885d9dc176f53dda53438e033370c39053c4088efc" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:e860381047cb7d71ec2a3bcd418334c2f1dbf06e5d45c8e801cc6a2ec5f5927d" [label=""];
  "sha256:e860381047cb7d71ec2a3bcd418334c2f1dbf06e5d45c8e801cc6a2ec5f5927d" -> "sha256:1b85aa7926555383bc458a64a3b8f0d5de34be8a9f98e3296bf0508063fd527b" [label=""];
  "sha256:1b85aa7926555383bc458a64a3b8f0d5de34be8a9f98e3296bf0508063fd527b" -> "sha256:92694fc911373270d7d353805f38216091041c23a48d07effb1d83de69605c83" [label=""];
  "sha256:a4fea64d609bd5d03a5c0b62fd09773232a632287e9e16499c7e0555f100b546" -> "sha256:92694fc911373270d7d353805f38216091041c23a48d07effb1d83de69605c83" [label=""];
  "sha256:92694fc911373270d7d353805f38216091041c23a48d07effb1d83de69605c83" -> "sha256:51021a11edbe699c274bd0a7d47492d13927af6ae0c0fcfd26e32348e7538e68" [label=""];
  "sha256:51021a11edbe699c274bd0a7d47492d13927af6ae0c0fcfd26e32348e7538e68" -> "sha256:3d6e986a3b57e1d012887a55930f827c07ae1c61067d3680f0f18a49438e41c8" [label=""];
  "sha256:a4fea64d609bd5d03a5c0b62fd09773232a632287e9e16499c7e0555f100b546" -> "sha256:3d6e986a3b57e1d012887a55930f827c07ae1c61067d3680f0f18a49438e41c8" [label=""];
  "sha256:3d6e986a3b57e1d012887a55930f827c07ae1c61067d3680f0f18a49438e41c8" -> "sha256:f56f329242ab6112cc300b1e26b4795d5915ee5c573b357b63ac28cf1e3460b3" [label=""];
  "sha256:f56f329242ab6112cc300b1e26b4795d5915ee5c573b357b63ac28cf1e3460b3" -> "sha256:d8a4cd57aa46c0e4e4e2e8885d9dc176f53dda53438e033370c39053c4088efc" [label=""];
}

