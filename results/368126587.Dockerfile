[app/sources/368126587.Dockerfile]
digraph {
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" [label="docker-image://docker.io/library/ubuntu:16.04@sha256:6a3ac136b6ca623d6a6fa20a7622f098b2fae1ac05f0114386ef439d8ca89a4a" shape="ellipse"];
  "sha256:05472172247251f46d9659fb5c9ece1c296eaa2660553ceae272a5e264180450" [label="/bin/sh -c apt-get update && apt-get install -y   autoconf   autotools-dev   build-essential   bzip2   cmake   curl   g++   gfortran   git   libc-dev   libopenblas-dev   libquadmath0   libtool   make   parallel   pkg-config   unzip   timelimit   wget   zip && apt-get clean" shape="box"];
  "sha256:0441f189f41fef8c2b70b7c3070a47d9c4375dec332e7d03955cc1a4688de64d" [label="/bin/sh -c apt-get install -y     python-dev     python-pip" shape="box"];
  "sha256:1e52a45a87e965d4db7bfced52237a8df8cc05ef41858f9395b55f207863c6e8" [label="/bin/sh -c pip2 install -U numpy scipy wheel" shape="box"];
  "sha256:01a4a849df1584df9b5dd072be429ba8044e2ca1284cf5f9af3c8377918bb49d" [label="/bin/sh -c pip2 install -U cvxpy" shape="box"];
  "sha256:1540869e685380e7c8fdfc0b9ab255a525300e08f4f8b56240f210e5f44cf60b" [label="/bin/sh -c pip2 install -U tensorflow" shape="box"];
  "sha256:c9518e5b52ad9a4c24ef463aeb9ff2b10a581ea3e790c6f6198dbf46c2c7f0ee" [label="/bin/sh -c apt-get install -y     python3-dev     python3-pip" shape="box"];
  "sha256:536249608fe03429a67e6e10d718d2576dbf5aa361cf2b02411f14e4593d3aa8" [label="/bin/sh -c pip3 install -U numpy scipy wheel" shape="box"];
  "sha256:088ee967a81c044666f720c95a6766103d0833895a74a97b00188623678181c4" [label="/bin/sh -c pip3 install -U cvxpy" shape="box"];
  "sha256:aa6adb01a90b9449702d078e5efe7a4e9ea3d37ebcc2b656b9800ebc0e5209a2" [label="/bin/sh -c pip3 install -U tensorflow" shape="box"];
  "sha256:c252a0600e2ad44cdea2240188247bc626ccc79f00f10286d71731102ccfcfdd" [label="sha256:c252a0600e2ad44cdea2240188247bc626ccc79f00f10286d71731102ccfcfdd" shape="plaintext"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" -> "sha256:05472172247251f46d9659fb5c9ece1c296eaa2660553ceae272a5e264180450" [label=""];
  "sha256:05472172247251f46d9659fb5c9ece1c296eaa2660553ceae272a5e264180450" -> "sha256:0441f189f41fef8c2b70b7c3070a47d9c4375dec332e7d03955cc1a4688de64d" [label=""];
  "sha256:0441f189f41fef8c2b70b7c3070a47d9c4375dec332e7d03955cc1a4688de64d" -> "sha256:1e52a45a87e965d4db7bfced52237a8df8cc05ef41858f9395b55f207863c6e8" [label=""];
  "sha256:1e52a45a87e965d4db7bfced52237a8df8cc05ef41858f9395b55f207863c6e8" -> "sha256:01a4a849df1584df9b5dd072be429ba8044e2ca1284cf5f9af3c8377918bb49d" [label=""];
  "sha256:01a4a849df1584df9b5dd072be429ba8044e2ca1284cf5f9af3c8377918bb49d" -> "sha256:1540869e685380e7c8fdfc0b9ab255a525300e08f4f8b56240f210e5f44cf60b" [label=""];
  "sha256:1540869e685380e7c8fdfc0b9ab255a525300e08f4f8b56240f210e5f44cf60b" -> "sha256:c9518e5b52ad9a4c24ef463aeb9ff2b10a581ea3e790c6f6198dbf46c2c7f0ee" [label=""];
  "sha256:c9518e5b52ad9a4c24ef463aeb9ff2b10a581ea3e790c6f6198dbf46c2c7f0ee" -> "sha256:536249608fe03429a67e6e10d718d2576dbf5aa361cf2b02411f14e4593d3aa8" [label=""];
  "sha256:536249608fe03429a67e6e10d718d2576dbf5aa361cf2b02411f14e4593d3aa8" -> "sha256:088ee967a81c044666f720c95a6766103d0833895a74a97b00188623678181c4" [label=""];
  "sha256:088ee967a81c044666f720c95a6766103d0833895a74a97b00188623678181c4" -> "sha256:aa6adb01a90b9449702d078e5efe7a4e9ea3d37ebcc2b656b9800ebc0e5209a2" [label=""];
  "sha256:aa6adb01a90b9449702d078e5efe7a4e9ea3d37ebcc2b656b9800ebc0e5209a2" -> "sha256:c252a0600e2ad44cdea2240188247bc626ccc79f00f10286d71731102ccfcfdd" [label=""];
}

