[app/sources/472188147.Dockerfile]
digraph {
  "sha256:0655269d0144618acc9e79e9e75a62abd3a1f353b15909f27cd721bbe13a1e8a" [label="local://context" shape="ellipse"];
  "sha256:086cd608418706f2fe22fc03bb9f20d18a5d5bc23c379d90f8cdfd660ed3528b" [label="docker-image://docker.io/nvidia/cuda:7.5-cudnn5-devel" shape="ellipse"];
  "sha256:5404f3285c2357b82daf034c8d5ab155772ab70885929885cf8e505ad1467e8d" [label="copy{src=/install/*.sh, dest=/install/}" shape="note"];
  "sha256:a5255231ae05a81638daab9ea3aef762cac5a398230344d830cc11a276c41c32" [label="/bin/sh -c /install/install_bootstrap_deb_packages.sh" shape="box"];
  "sha256:e7bf841feae6d83ea2d9f4f3a88a8c19d37a558075d12f3f1fdf390e7521239b" [label="/bin/sh -c add-apt-repository -y ppa:openjdk-r/ppa &&     add-apt-repository -y ppa:mc3man/trusty-media &&     add-apt-repository -y ppa:george-edison55/cmake-3.x" shape="box"];
  "sha256:b7658fbf8d1aed1bea6244ebac23201e55af5103f3cd02d5788e4dc836448fcf" [label="/bin/sh -c /install/install_deb_packages.sh" shape="box"];
  "sha256:953719be17abf5b8f4c49790ec9d2f68f9ac6e04e1c970b10541e5edb2ab6318" [label="/bin/sh -c /install/install_pip_packages.sh" shape="box"];
  "sha256:55482c1f7027445120f7a61e68ad0dce3a77010ae69a5900147d06b00d9cb6d6" [label="/bin/sh -c /install/install_bazel.sh" shape="box"];
  "sha256:fa672524c024150a2b2203da7b8c94c3d7a1f6ed8d5d5a09374e4e4e5b06fe58" [label="copy{src=/install/.bazelrc, dest=/root/.bazelrc}" shape="note"];
  "sha256:5d44fca9ae1ffdb6c7355e0a36c61c3b50c25e2816437ae51de89562d3fc3827" [label="sha256:5d44fca9ae1ffdb6c7355e0a36c61c3b50c25e2816437ae51de89562d3fc3827" shape="plaintext"];
  "sha256:086cd608418706f2fe22fc03bb9f20d18a5d5bc23c379d90f8cdfd660ed3528b" -> "sha256:5404f3285c2357b82daf034c8d5ab155772ab70885929885cf8e505ad1467e8d" [label=""];
  "sha256:0655269d0144618acc9e79e9e75a62abd3a1f353b15909f27cd721bbe13a1e8a" -> "sha256:5404f3285c2357b82daf034c8d5ab155772ab70885929885cf8e505ad1467e8d" [label=""];
  "sha256:5404f3285c2357b82daf034c8d5ab155772ab70885929885cf8e505ad1467e8d" -> "sha256:a5255231ae05a81638daab9ea3aef762cac5a398230344d830cc11a276c41c32" [label=""];
  "sha256:a5255231ae05a81638daab9ea3aef762cac5a398230344d830cc11a276c41c32" -> "sha256:e7bf841feae6d83ea2d9f4f3a88a8c19d37a558075d12f3f1fdf390e7521239b" [label=""];
  "sha256:e7bf841feae6d83ea2d9f4f3a88a8c19d37a558075d12f3f1fdf390e7521239b" -> "sha256:b7658fbf8d1aed1bea6244ebac23201e55af5103f3cd02d5788e4dc836448fcf" [label=""];
  "sha256:b7658fbf8d1aed1bea6244ebac23201e55af5103f3cd02d5788e4dc836448fcf" -> "sha256:953719be17abf5b8f4c49790ec9d2f68f9ac6e04e1c970b10541e5edb2ab6318" [label=""];
  "sha256:953719be17abf5b8f4c49790ec9d2f68f9ac6e04e1c970b10541e5edb2ab6318" -> "sha256:55482c1f7027445120f7a61e68ad0dce3a77010ae69a5900147d06b00d9cb6d6" [label=""];
  "sha256:55482c1f7027445120f7a61e68ad0dce3a77010ae69a5900147d06b00d9cb6d6" -> "sha256:fa672524c024150a2b2203da7b8c94c3d7a1f6ed8d5d5a09374e4e4e5b06fe58" [label=""];
  "sha256:0655269d0144618acc9e79e9e75a62abd3a1f353b15909f27cd721bbe13a1e8a" -> "sha256:fa672524c024150a2b2203da7b8c94c3d7a1f6ed8d5d5a09374e4e4e5b06fe58" [label=""];
  "sha256:fa672524c024150a2b2203da7b8c94c3d7a1f6ed8d5d5a09374e4e4e5b06fe58" -> "sha256:5d44fca9ae1ffdb6c7355e0a36c61c3b50c25e2816437ae51de89562d3fc3827" [label=""];
}

