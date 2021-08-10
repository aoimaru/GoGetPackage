[app/sources/169636188.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:6a628d3928fef02d314f61436fcf20cdd23b0fa2e2956426d71ace5812a8cabe" [label="/bin/sh -c apt-get update &&     apt-get -y install       clang       libc6       libc6-dev       libstdc++6       autoconf       automake       python3       llvm       llvm-dev       libffi-dev       libz-dev       make &&     apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:1d85b9c597dde175a76ab0cfd0bf6a115b61587863fbce0bbd8608192f33a3dd" [label="local://context" shape="ellipse"];
  "sha256:e7173ad2e34943ff15adf890aae089682b519b714df78f315d81c98c8e0570e5" [label="copy{src=/, dest=/nidhugg}" shape="note"];
  "sha256:9a4a11d854912b7c2040156658bb307e2532d10ef7504c70e5cd72a2293531f1" [label="/bin/sh -c /bin/bash -c     \"cd /nidhugg &&     autoreconf --install &&     ./configure &&     make &&     make install\"" shape="box"];
  "sha256:7f32b0b2bbda67ad0f88000524f649fb2d7a280476159b04649abc6f27946dd8" [label="sha256:7f32b0b2bbda67ad0f88000524f649fb2d7a280476159b04649abc6f27946dd8" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:6a628d3928fef02d314f61436fcf20cdd23b0fa2e2956426d71ace5812a8cabe" [label=""];
  "sha256:6a628d3928fef02d314f61436fcf20cdd23b0fa2e2956426d71ace5812a8cabe" -> "sha256:e7173ad2e34943ff15adf890aae089682b519b714df78f315d81c98c8e0570e5" [label=""];
  "sha256:1d85b9c597dde175a76ab0cfd0bf6a115b61587863fbce0bbd8608192f33a3dd" -> "sha256:e7173ad2e34943ff15adf890aae089682b519b714df78f315d81c98c8e0570e5" [label=""];
  "sha256:e7173ad2e34943ff15adf890aae089682b519b714df78f315d81c98c8e0570e5" -> "sha256:9a4a11d854912b7c2040156658bb307e2532d10ef7504c70e5cd72a2293531f1" [label=""];
  "sha256:9a4a11d854912b7c2040156658bb307e2532d10ef7504c70e5cd72a2293531f1" -> "sha256:7f32b0b2bbda67ad0f88000524f649fb2d7a280476159b04649abc6f27946dd8" [label=""];
}

