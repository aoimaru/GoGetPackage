[app/sources/316056786.Dockerfile]
digraph {
  "sha256:73079b2eb57010ad8f653e512710f56fbcef68c723ed1a98218de392a8b40b38" [label="docker-image://docker.io/library/python:2.7-slim" shape="ellipse"];
  "sha256:9951b3a0c5be077713b25db0632ce7e5cc42eb1632445cc446537e204b23aab5" [label="/bin/sh -c pip install requests" shape="box"];
  "sha256:6efc60ebe00f01d32d545baff86c3042210e4394cb778aa086b8d16d7611cc75" [label="local://context" shape="ellipse"];
  "sha256:9d32b1d662bfaa7ba017bdd49e9ab8f255b2e3399ae4d3bba06f455dba12e26c" [label="copy{src=/, dest=/dns-frontend}" shape="note"];
  "sha256:1cbb1873ae8375fcd58b5569c9ce61d08d2b1ef599a68a3d538d3b30c86bf701" [label="mkdir{path=/dns-frontend}" shape="note"];
  "sha256:306b82c53a6ee003343a9f2f071c6053033585463d112a8403cba49acc950576" [label="sha256:306b82c53a6ee003343a9f2f071c6053033585463d112a8403cba49acc950576" shape="plaintext"];
  "sha256:73079b2eb57010ad8f653e512710f56fbcef68c723ed1a98218de392a8b40b38" -> "sha256:9951b3a0c5be077713b25db0632ce7e5cc42eb1632445cc446537e204b23aab5" [label=""];
  "sha256:9951b3a0c5be077713b25db0632ce7e5cc42eb1632445cc446537e204b23aab5" -> "sha256:9d32b1d662bfaa7ba017bdd49e9ab8f255b2e3399ae4d3bba06f455dba12e26c" [label=""];
  "sha256:6efc60ebe00f01d32d545baff86c3042210e4394cb778aa086b8d16d7611cc75" -> "sha256:9d32b1d662bfaa7ba017bdd49e9ab8f255b2e3399ae4d3bba06f455dba12e26c" [label=""];
  "sha256:9d32b1d662bfaa7ba017bdd49e9ab8f255b2e3399ae4d3bba06f455dba12e26c" -> "sha256:1cbb1873ae8375fcd58b5569c9ce61d08d2b1ef599a68a3d538d3b30c86bf701" [label=""];
  "sha256:1cbb1873ae8375fcd58b5569c9ce61d08d2b1ef599a68a3d538d3b30c86bf701" -> "sha256:306b82c53a6ee003343a9f2f071c6053033585463d112a8403cba49acc950576" [label=""];
}

