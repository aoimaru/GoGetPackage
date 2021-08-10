[app/sources/247473979.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:09cf6a30282e53b1fe3ab9163f53eff5d8e2b00eb3b6da16d1eb784738af1f39" [label="local://context" shape="ellipse"];
  "sha256:84a4cc6f04dfaae5f094acfe5799b1ab01f19e492d1d36b7bea7f844529bd1de" [label="copy{src=/install/*.sh, dest=/install/}" shape="note"];
  "sha256:f2b58761970b5d6b4a574c7099186e83b42f178e27830d366dd20efe101226a7" [label="/bin/sh -c /install/install_bootstrap_deb_packages.sh" shape="box"];
  "sha256:10e17605bd5ff2268320bc406b1873d145bff365e7abd052d9255342cc0805be" [label="/bin/sh -c add-apt-repository -y ppa:openjdk-r/ppa &&     add-apt-repository -y ppa:george-edison55/cmake-3.x" shape="box"];
  "sha256:a260398853608742e0debd5d6b9001ab67f9ad1bcdcd656b837c9db518794c42" [label="/bin/sh -c /install/install_deb_packages.sh" shape="box"];
  "sha256:c4695dc7405e108753ff57818212e154819e34830bfcbb19b86459f1a46ca76f" [label="/bin/sh -c /install/install_pip_packages.sh" shape="box"];
  "sha256:b831dd9c364e6a8da41e2583b301a4785b6f8edee3273fd952533920779ac447" [label="/bin/sh -c /install/install_bazel.sh" shape="box"];
  "sha256:27b4fa916f0683a090deb9a805c86f2478337ec405ea355d1a8d5f1cca25a167" [label="/bin/sh -c /install/install_proto3.sh" shape="box"];
  "sha256:250bee41be153bba5927423b84042b8131c0377b2367402ebaf5ad792ffc08ce" [label="/bin/sh -c /install/install_buildifier.sh" shape="box"];
  "sha256:52d37446630c9eab2caad71eb0beac7015cb9013812e95ad920091621d3b354c" [label="/bin/sh -c /install/install_auditwheel.sh" shape="box"];
  "sha256:a74913e4c2189f92452490151dd561b621fc57321b7d05a1d3b9f2c9fea94bf5" [label="/bin/sh -c /install/install_golang.sh" shape="box"];
  "sha256:ec74ebc749b9b49588f154f37a4693cc763db2619f5362bdc141b85ef56764d9" [label="copy{src=/install/.bazelrc, dest=/etc/bazel.bazelrc}" shape="note"];
  "sha256:635afd96cd9650be0fda936fb384c5e3e5922f2bfb64ef4d37eb8f7f46820f79" [label="sha256:635afd96cd9650be0fda936fb384c5e3e5922f2bfb64ef4d37eb8f7f46820f79" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:84a4cc6f04dfaae5f094acfe5799b1ab01f19e492d1d36b7bea7f844529bd1de" [label=""];
  "sha256:09cf6a30282e53b1fe3ab9163f53eff5d8e2b00eb3b6da16d1eb784738af1f39" -> "sha256:84a4cc6f04dfaae5f094acfe5799b1ab01f19e492d1d36b7bea7f844529bd1de" [label=""];
  "sha256:84a4cc6f04dfaae5f094acfe5799b1ab01f19e492d1d36b7bea7f844529bd1de" -> "sha256:f2b58761970b5d6b4a574c7099186e83b42f178e27830d366dd20efe101226a7" [label=""];
  "sha256:f2b58761970b5d6b4a574c7099186e83b42f178e27830d366dd20efe101226a7" -> "sha256:10e17605bd5ff2268320bc406b1873d145bff365e7abd052d9255342cc0805be" [label=""];
  "sha256:10e17605bd5ff2268320bc406b1873d145bff365e7abd052d9255342cc0805be" -> "sha256:a260398853608742e0debd5d6b9001ab67f9ad1bcdcd656b837c9db518794c42" [label=""];
  "sha256:a260398853608742e0debd5d6b9001ab67f9ad1bcdcd656b837c9db518794c42" -> "sha256:c4695dc7405e108753ff57818212e154819e34830bfcbb19b86459f1a46ca76f" [label=""];
  "sha256:c4695dc7405e108753ff57818212e154819e34830bfcbb19b86459f1a46ca76f" -> "sha256:b831dd9c364e6a8da41e2583b301a4785b6f8edee3273fd952533920779ac447" [label=""];
  "sha256:b831dd9c364e6a8da41e2583b301a4785b6f8edee3273fd952533920779ac447" -> "sha256:27b4fa916f0683a090deb9a805c86f2478337ec405ea355d1a8d5f1cca25a167" [label=""];
  "sha256:27b4fa916f0683a090deb9a805c86f2478337ec405ea355d1a8d5f1cca25a167" -> "sha256:250bee41be153bba5927423b84042b8131c0377b2367402ebaf5ad792ffc08ce" [label=""];
  "sha256:250bee41be153bba5927423b84042b8131c0377b2367402ebaf5ad792ffc08ce" -> "sha256:52d37446630c9eab2caad71eb0beac7015cb9013812e95ad920091621d3b354c" [label=""];
  "sha256:52d37446630c9eab2caad71eb0beac7015cb9013812e95ad920091621d3b354c" -> "sha256:a74913e4c2189f92452490151dd561b621fc57321b7d05a1d3b9f2c9fea94bf5" [label=""];
  "sha256:a74913e4c2189f92452490151dd561b621fc57321b7d05a1d3b9f2c9fea94bf5" -> "sha256:ec74ebc749b9b49588f154f37a4693cc763db2619f5362bdc141b85ef56764d9" [label=""];
  "sha256:09cf6a30282e53b1fe3ab9163f53eff5d8e2b00eb3b6da16d1eb784738af1f39" -> "sha256:ec74ebc749b9b49588f154f37a4693cc763db2619f5362bdc141b85ef56764d9" [label=""];
  "sha256:ec74ebc749b9b49588f154f37a4693cc763db2619f5362bdc141b85ef56764d9" -> "sha256:635afd96cd9650be0fda936fb384c5e3e5922f2bfb64ef4d37eb8f7f46820f79" [label=""];
}

