[app/sources/468636926.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:2bae660c301ea7c09ae95cc293a9f22d664fd5f6d996bb3de2c433346e9ab943" [label="mkdir{path=/root}" shape="note"];
  "sha256:c2dc16f80d18f59d535cc03bc2f0134ece9045a2b80dc629243e9dfa3402b0b9" [label="/bin/sh -c apt-get update &&     apt-get install -y     wget unzip curl     build-essential cmake git libgmp3-dev libprocps4-dev python-markdown libboost-all-dev libssl-dev pkg-config" shape="box"];
  "sha256:eae2d498dea0fb09c23b0ffa5eb3ccf99a4d92f23cdcaace2568236167725a9f" [label="/bin/sh -c git clone https://github.com/scipr-lab/libsnark/   && cd libsnark   && git submodule init && git submodule update   && mkdir build && cd build && cmake ..   && make   && DESTDIR=/usr/local make install     NO_PROCPS=1 NO_GTEST=1 NO_DOCS=1 CURVE=ALT_BN128 FEATUREFLAGS=\"-DBINARY_OUTPUT=1 -DMONTGOMERY_OUTPUT=1 -DNO_PT_COMPRESSION=1\"" shape="box"];
  "sha256:64310eb6c0f3b8671440edb703afdb6e5d8596dfd589907f35cedcad49539ae2" [label="sha256:64310eb6c0f3b8671440edb703afdb6e5d8596dfd589907f35cedcad49539ae2" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:2bae660c301ea7c09ae95cc293a9f22d664fd5f6d996bb3de2c433346e9ab943" [label=""];
  "sha256:2bae660c301ea7c09ae95cc293a9f22d664fd5f6d996bb3de2c433346e9ab943" -> "sha256:c2dc16f80d18f59d535cc03bc2f0134ece9045a2b80dc629243e9dfa3402b0b9" [label=""];
  "sha256:c2dc16f80d18f59d535cc03bc2f0134ece9045a2b80dc629243e9dfa3402b0b9" -> "sha256:eae2d498dea0fb09c23b0ffa5eb3ccf99a4d92f23cdcaace2568236167725a9f" [label=""];
  "sha256:eae2d498dea0fb09c23b0ffa5eb3ccf99a4d92f23cdcaace2568236167725a9f" -> "sha256:64310eb6c0f3b8671440edb703afdb6e5d8596dfd589907f35cedcad49539ae2" [label=""];
}

