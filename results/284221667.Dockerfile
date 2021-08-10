[app/sources/284221667.Dockerfile]
digraph {
  "sha256:71c97c01ee1c0631eaa923c8bd157d71478aba175d3427771811bc9fad5c368a" [label="docker-image://docker.io/nvidia/cuda:8.0-cudnn6-devel-ubuntu14.04" shape="ellipse"];
  "sha256:924b1aac860df14997382296541f90ae9b6485dce1a7ad192a8eb9946ce084fe" [label="/bin/sh -c cp -P /usr/include/cudnn.h /usr/local/cuda/include" shape="box"];
  "sha256:9e5e0f917ba2c742c9323a54de768195d3214fa99f3e3846674525bf24ff9a2d" [label="/bin/sh -c cp -P /usr/lib/x86_64-linux-gnu/libcudnn* /usr/local/cuda/lib64" shape="box"];
  "sha256:c56ab3be5485ffd686406d4f4f4999094681e30c8d7ddead15c2474fa4aa3b77" [label="local://context" shape="ellipse"];
  "sha256:959ad721cfe8200194078b536961ac00ce571b7c0ed405f64a719555782381f0" [label="copy{src=/install/*.sh, dest=/install/}" shape="note"];
  "sha256:1e4ee9fa99c3ee44e0cd48f05cb683b863a47d222887e189c5d6418cdad63c3f" [label="/bin/sh -c /install/install_bootstrap_deb_packages.sh" shape="box"];
  "sha256:ed567d81f4c6f823a21d01f6efe19eb8740af535d9ebe326902cbc0f89b73b2a" [label="/bin/sh -c add-apt-repository -y ppa:openjdk-r/ppa &&     add-apt-repository -y ppa:george-edison55/cmake-3.x" shape="box"];
  "sha256:22bada2a2de17d1e773af0f084e6a286f24a80a117ad8180f26c300df5f931d7" [label="/bin/sh -c /install/install_deb_packages.sh" shape="box"];
  "sha256:0c8105a6461aa3965586c2ed74b2dc415f5679ccf975181b3708899bbf68143c" [label="/bin/sh -c /install/install_pip_packages.sh" shape="box"];
  "sha256:d5ec3d45312d24f6b2a78f571fd402950a700a6b5205bdd97c8b927a156c0acf" [label="/bin/sh -c /install/install_bazel.sh" shape="box"];
  "sha256:5f71810b0a9937cd903298860001720344a8938a91f242c8f4676fbf36c71de7" [label="/bin/sh -c /install/install_golang.sh" shape="box"];
  "sha256:4184fde09977938e0652cbba76a40e48323369e5d8f206ffab5c390275783292" [label="copy{src=/install/.bazelrc, dest=/etc/bazel.bazelrc}" shape="note"];
  "sha256:b83d0f34ace2af3a5d11f079dd5be69d25ee7c7ffe3d9fcc5e772e96c6967f6a" [label="sha256:b83d0f34ace2af3a5d11f079dd5be69d25ee7c7ffe3d9fcc5e772e96c6967f6a" shape="plaintext"];
  "sha256:71c97c01ee1c0631eaa923c8bd157d71478aba175d3427771811bc9fad5c368a" -> "sha256:924b1aac860df14997382296541f90ae9b6485dce1a7ad192a8eb9946ce084fe" [label=""];
  "sha256:924b1aac860df14997382296541f90ae9b6485dce1a7ad192a8eb9946ce084fe" -> "sha256:9e5e0f917ba2c742c9323a54de768195d3214fa99f3e3846674525bf24ff9a2d" [label=""];
  "sha256:9e5e0f917ba2c742c9323a54de768195d3214fa99f3e3846674525bf24ff9a2d" -> "sha256:959ad721cfe8200194078b536961ac00ce571b7c0ed405f64a719555782381f0" [label=""];
  "sha256:c56ab3be5485ffd686406d4f4f4999094681e30c8d7ddead15c2474fa4aa3b77" -> "sha256:959ad721cfe8200194078b536961ac00ce571b7c0ed405f64a719555782381f0" [label=""];
  "sha256:959ad721cfe8200194078b536961ac00ce571b7c0ed405f64a719555782381f0" -> "sha256:1e4ee9fa99c3ee44e0cd48f05cb683b863a47d222887e189c5d6418cdad63c3f" [label=""];
  "sha256:1e4ee9fa99c3ee44e0cd48f05cb683b863a47d222887e189c5d6418cdad63c3f" -> "sha256:ed567d81f4c6f823a21d01f6efe19eb8740af535d9ebe326902cbc0f89b73b2a" [label=""];
  "sha256:ed567d81f4c6f823a21d01f6efe19eb8740af535d9ebe326902cbc0f89b73b2a" -> "sha256:22bada2a2de17d1e773af0f084e6a286f24a80a117ad8180f26c300df5f931d7" [label=""];
  "sha256:22bada2a2de17d1e773af0f084e6a286f24a80a117ad8180f26c300df5f931d7" -> "sha256:0c8105a6461aa3965586c2ed74b2dc415f5679ccf975181b3708899bbf68143c" [label=""];
  "sha256:0c8105a6461aa3965586c2ed74b2dc415f5679ccf975181b3708899bbf68143c" -> "sha256:d5ec3d45312d24f6b2a78f571fd402950a700a6b5205bdd97c8b927a156c0acf" [label=""];
  "sha256:d5ec3d45312d24f6b2a78f571fd402950a700a6b5205bdd97c8b927a156c0acf" -> "sha256:5f71810b0a9937cd903298860001720344a8938a91f242c8f4676fbf36c71de7" [label=""];
  "sha256:5f71810b0a9937cd903298860001720344a8938a91f242c8f4676fbf36c71de7" -> "sha256:4184fde09977938e0652cbba76a40e48323369e5d8f206ffab5c390275783292" [label=""];
  "sha256:c56ab3be5485ffd686406d4f4f4999094681e30c8d7ddead15c2474fa4aa3b77" -> "sha256:4184fde09977938e0652cbba76a40e48323369e5d8f206ffab5c390275783292" [label=""];
  "sha256:4184fde09977938e0652cbba76a40e48323369e5d8f206ffab5c390275783292" -> "sha256:b83d0f34ace2af3a5d11f079dd5be69d25ee7c7ffe3d9fcc5e772e96c6967f6a" [label=""];
}

