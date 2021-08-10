[app/sources/457373701.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:1f337a481a2a0342abae841b881a805accbfa15bf3415af386c05677bb4df6a5" [label="local://context" shape="ellipse"];
  "sha256:92c759ab09e2483c170ed9d8f70ad8d38d7f1f114c579ffa81d22774e64d913e" [label="copy{src=/install/*.sh, dest=/install/}" shape="note"];
  "sha256:a40382be85fc62271e083c0ee2ff298866100211baef109860098fe39dee5545" [label="/bin/sh -c /install/install_bootstrap_deb_packages.sh" shape="box"];
  "sha256:32c6700f3cf54b1b199bc179d82e53f4ce07a1579ed9ebdff844fee85633073c" [label="/bin/sh -c add-apt-repository -y ppa:openjdk-r/ppa &&     add-apt-repository -y ppa:mc3man/trusty-media &&     add-apt-repository -y ppa:george-edison55/cmake-3.x" shape="box"];
  "sha256:d11fbe4f78ff9a04f6652dd3bc6cd7caeb88a3771ee113979a0d7a5ac7a21f21" [label="/bin/sh -c /install/install_deb_packages.sh" shape="box"];
  "sha256:f5b966982973dc34c0ffe6ece4edb94e86d4665513ca5afc4d78640c73c6f5a3" [label="/bin/sh -c /install/install_pip_packages.sh" shape="box"];
  "sha256:e043c61d46fcb8fb1acbe8fcf04f0dbf3cea7607f5886829eeb968f04eca9336" [label="/bin/sh -c /install/install_bazel.sh" shape="box"];
  "sha256:cf72e33f3e1cc653a310d50dc45a158de7c29fe8a24c1c1ac83b69102add3e26" [label="/bin/sh -c /install/install_proto3.sh" shape="box"];
  "sha256:25790ad72446d8671396e3116e86f63420bc0a6d6bc2b10ab28bf201ddeaf465" [label="/bin/sh -c /install/install_buildifier.sh" shape="box"];
  "sha256:bae4cbab7dc066fa269e1626114858df52af24223ec09659c8f92c9c6a9f43f2" [label="copy{src=/install/.bazelrc, dest=/root/.bazelrc}" shape="note"];
  "sha256:88a422f44807193b42b012713586020dbd75cb2f7b55804cfd214d1490924b22" [label="sha256:88a422f44807193b42b012713586020dbd75cb2f7b55804cfd214d1490924b22" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:92c759ab09e2483c170ed9d8f70ad8d38d7f1f114c579ffa81d22774e64d913e" [label=""];
  "sha256:1f337a481a2a0342abae841b881a805accbfa15bf3415af386c05677bb4df6a5" -> "sha256:92c759ab09e2483c170ed9d8f70ad8d38d7f1f114c579ffa81d22774e64d913e" [label=""];
  "sha256:92c759ab09e2483c170ed9d8f70ad8d38d7f1f114c579ffa81d22774e64d913e" -> "sha256:a40382be85fc62271e083c0ee2ff298866100211baef109860098fe39dee5545" [label=""];
  "sha256:a40382be85fc62271e083c0ee2ff298866100211baef109860098fe39dee5545" -> "sha256:32c6700f3cf54b1b199bc179d82e53f4ce07a1579ed9ebdff844fee85633073c" [label=""];
  "sha256:32c6700f3cf54b1b199bc179d82e53f4ce07a1579ed9ebdff844fee85633073c" -> "sha256:d11fbe4f78ff9a04f6652dd3bc6cd7caeb88a3771ee113979a0d7a5ac7a21f21" [label=""];
  "sha256:d11fbe4f78ff9a04f6652dd3bc6cd7caeb88a3771ee113979a0d7a5ac7a21f21" -> "sha256:f5b966982973dc34c0ffe6ece4edb94e86d4665513ca5afc4d78640c73c6f5a3" [label=""];
  "sha256:f5b966982973dc34c0ffe6ece4edb94e86d4665513ca5afc4d78640c73c6f5a3" -> "sha256:e043c61d46fcb8fb1acbe8fcf04f0dbf3cea7607f5886829eeb968f04eca9336" [label=""];
  "sha256:e043c61d46fcb8fb1acbe8fcf04f0dbf3cea7607f5886829eeb968f04eca9336" -> "sha256:cf72e33f3e1cc653a310d50dc45a158de7c29fe8a24c1c1ac83b69102add3e26" [label=""];
  "sha256:cf72e33f3e1cc653a310d50dc45a158de7c29fe8a24c1c1ac83b69102add3e26" -> "sha256:25790ad72446d8671396e3116e86f63420bc0a6d6bc2b10ab28bf201ddeaf465" [label=""];
  "sha256:25790ad72446d8671396e3116e86f63420bc0a6d6bc2b10ab28bf201ddeaf465" -> "sha256:bae4cbab7dc066fa269e1626114858df52af24223ec09659c8f92c9c6a9f43f2" [label=""];
  "sha256:1f337a481a2a0342abae841b881a805accbfa15bf3415af386c05677bb4df6a5" -> "sha256:bae4cbab7dc066fa269e1626114858df52af24223ec09659c8f92c9c6a9f43f2" [label=""];
  "sha256:bae4cbab7dc066fa269e1626114858df52af24223ec09659c8f92c9c6a9f43f2" -> "sha256:88a422f44807193b42b012713586020dbd75cb2f7b55804cfd214d1490924b22" [label=""];
}

