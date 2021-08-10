[app/sources/137894641.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:b494aa4a29f6505fbf1896f5c747312dd75c5c7e0c62a484264f4ae6a21b8d69" [label="/bin/sh -c apt update &&     apt install -y     build-essential     cabal-install     coreutils     curl     git     libbz2-dev     libcairo2-dev     libgif-dev     libjpeg-dev     software-properties-common     liblzma-dev     m4     pkg-config     python-dev     python-pip     vim     wget     xz-utils     zlib1g-dev     zstd &&     apt clean &&     rm -rf /var/lib/apt/lists" shape="box"];
  "sha256:aaf59eb4b44afa01051b67f0a6ce12a4749f336a8566f6c3f5e4951e4a5ef208" [label="/bin/sh -c add-apt-repository ppa:hvr/ghc-wsl -y" shape="box"];
  "sha256:810edf1b00d6899c2a210784dbf478c8c22df73b97b89e8acd17058abdf8113a" [label="/bin/sh -c apt-get update &&     apt-get install -y ghc-${GHC_VERSION} &&     apt clean &&     rm -rf /var/lib/apt/lists" shape="box"];
  "sha256:b1ffa599d5f2ddbab1adfb728358970b6da23675068dacb52c39b3b4e559bf67" [label="/bin/sh -c wget -qO- https://get.haskellstack.org/ | sh &&     chmod 755 /usr/local/bin/stack" shape="box"];
  "sha256:c65e554602d0c4e9479f830ab2ba0ebb261a243324277a8d1f8f9520c338888e" [label="/bin/sh -c git clone --depth=2 https://gitlab.com/ngless/ngless &&     cd ngless &&     stack setup --system-ghc &&     STACKOPTS=\"--system-ghc --only-dependencies\" make ngless &&     STACKOPTS=\"--system-ghc --only-dependencies\" make tests &&     cd .. &&     rm -rf ngless" shape="box"];
  "sha256:65ee8c6f8ee56399965ec2d6354962d41451c1ed16bef39b76ee62d2476f3810" [label="sha256:65ee8c6f8ee56399965ec2d6354962d41451c1ed16bef39b76ee62d2476f3810" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:b494aa4a29f6505fbf1896f5c747312dd75c5c7e0c62a484264f4ae6a21b8d69" [label=""];
  "sha256:b494aa4a29f6505fbf1896f5c747312dd75c5c7e0c62a484264f4ae6a21b8d69" -> "sha256:aaf59eb4b44afa01051b67f0a6ce12a4749f336a8566f6c3f5e4951e4a5ef208" [label=""];
  "sha256:aaf59eb4b44afa01051b67f0a6ce12a4749f336a8566f6c3f5e4951e4a5ef208" -> "sha256:810edf1b00d6899c2a210784dbf478c8c22df73b97b89e8acd17058abdf8113a" [label=""];
  "sha256:810edf1b00d6899c2a210784dbf478c8c22df73b97b89e8acd17058abdf8113a" -> "sha256:b1ffa599d5f2ddbab1adfb728358970b6da23675068dacb52c39b3b4e559bf67" [label=""];
  "sha256:b1ffa599d5f2ddbab1adfb728358970b6da23675068dacb52c39b3b4e559bf67" -> "sha256:c65e554602d0c4e9479f830ab2ba0ebb261a243324277a8d1f8f9520c338888e" [label=""];
  "sha256:c65e554602d0c4e9479f830ab2ba0ebb261a243324277a8d1f8f9520c338888e" -> "sha256:65ee8c6f8ee56399965ec2d6354962d41451c1ed16bef39b76ee62d2476f3810" [label=""];
}

