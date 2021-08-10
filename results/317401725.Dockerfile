[app/sources/317401725.Dockerfile]
digraph {
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" [label="docker-image://docker.io/library/ubuntu:16.04@sha256:6a3ac136b6ca623d6a6fa20a7622f098b2fae1ac05f0114386ef439d8ca89a4a" shape="ellipse"];
  "sha256:7a380f2674368ec23dc7f644fb5a340f7137aaeb4132e1c8ce4c38b354b6c769" [label="local://context" shape="ellipse"];
  "sha256:181288215dc30c29849f04b7abb4981cb215af3b609367dd05062a8092380754" [label="copy{src=/install/*.sh, dest=/install/}" shape="note"];
  "sha256:3d46b291901fbadaf1e73fcc131011cbd55da2838838e6d6d7892b6c0fe873f1" [label="/bin/sh -c /install/install_bootstrap_deb_packages.sh" shape="box"];
  "sha256:e5db1d5c58259c4aa912f51468355e7aa7db3106d404f1055db75864dcd3a5f7" [label="/bin/sh -c add-apt-repository -y ppa:openjdk-r/ppa &&     add-apt-repository -y ppa:mc3man/trusty-media &&     add-apt-repository -y ppa:george-edison55/cmake-3.x" shape="box"];
  "sha256:b1e2d7847c99b148d89286defe27e98f42bea5d0e06598ed6025ebdf8d80e08d" [label="/bin/sh -c /install/install_deb_packages.sh" shape="box"];
  "sha256:f4ac4f9959be5d3c2add386dbc2ebcb5e7f21d8415b9d3abbc3683d47397bc03" [label="/bin/sh -c /install/install_pip_packages.sh" shape="box"];
  "sha256:329dd27b84ffdec886e49a832cd386a3e8b5551dd1638bcf61b792e278a567c1" [label="/bin/sh -c /install/install_bazel.sh" shape="box"];
  "sha256:f1804ee86ecdbdeec08e7ad04e56023e0a5c1350f697f7e9918469b9e4def45d" [label="/bin/sh -c /install/install_proto3.sh" shape="box"];
  "sha256:2be722a3f92475e483d65f052f13cf5d22fa8f201dce1aae4ed8b8976a187001" [label="/bin/sh -c /install/install_buildifier.sh" shape="box"];
  "sha256:d02b8cf4a9f257d541dd038b6adf168f8353253633b80148d07c60c3bbc81162" [label="/bin/sh -c /install/install_mpi.sh" shape="box"];
  "sha256:1cf5607686b6ffa156d32700894329b75ecf89c15599fee5c9cb74dae8f7ace4" [label="copy{src=/install/.bazelrc, dest=/root/.bazelrc}" shape="note"];
  "sha256:62f38acc2027bcb0d1bb15e5ae1d32bd86832da6fce3e7ef0481ac15b9f3a942" [label="sha256:62f38acc2027bcb0d1bb15e5ae1d32bd86832da6fce3e7ef0481ac15b9f3a942" shape="plaintext"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" -> "sha256:181288215dc30c29849f04b7abb4981cb215af3b609367dd05062a8092380754" [label=""];
  "sha256:7a380f2674368ec23dc7f644fb5a340f7137aaeb4132e1c8ce4c38b354b6c769" -> "sha256:181288215dc30c29849f04b7abb4981cb215af3b609367dd05062a8092380754" [label=""];
  "sha256:181288215dc30c29849f04b7abb4981cb215af3b609367dd05062a8092380754" -> "sha256:3d46b291901fbadaf1e73fcc131011cbd55da2838838e6d6d7892b6c0fe873f1" [label=""];
  "sha256:3d46b291901fbadaf1e73fcc131011cbd55da2838838e6d6d7892b6c0fe873f1" -> "sha256:e5db1d5c58259c4aa912f51468355e7aa7db3106d404f1055db75864dcd3a5f7" [label=""];
  "sha256:e5db1d5c58259c4aa912f51468355e7aa7db3106d404f1055db75864dcd3a5f7" -> "sha256:b1e2d7847c99b148d89286defe27e98f42bea5d0e06598ed6025ebdf8d80e08d" [label=""];
  "sha256:b1e2d7847c99b148d89286defe27e98f42bea5d0e06598ed6025ebdf8d80e08d" -> "sha256:f4ac4f9959be5d3c2add386dbc2ebcb5e7f21d8415b9d3abbc3683d47397bc03" [label=""];
  "sha256:f4ac4f9959be5d3c2add386dbc2ebcb5e7f21d8415b9d3abbc3683d47397bc03" -> "sha256:329dd27b84ffdec886e49a832cd386a3e8b5551dd1638bcf61b792e278a567c1" [label=""];
  "sha256:329dd27b84ffdec886e49a832cd386a3e8b5551dd1638bcf61b792e278a567c1" -> "sha256:f1804ee86ecdbdeec08e7ad04e56023e0a5c1350f697f7e9918469b9e4def45d" [label=""];
  "sha256:f1804ee86ecdbdeec08e7ad04e56023e0a5c1350f697f7e9918469b9e4def45d" -> "sha256:2be722a3f92475e483d65f052f13cf5d22fa8f201dce1aae4ed8b8976a187001" [label=""];
  "sha256:2be722a3f92475e483d65f052f13cf5d22fa8f201dce1aae4ed8b8976a187001" -> "sha256:d02b8cf4a9f257d541dd038b6adf168f8353253633b80148d07c60c3bbc81162" [label=""];
  "sha256:d02b8cf4a9f257d541dd038b6adf168f8353253633b80148d07c60c3bbc81162" -> "sha256:1cf5607686b6ffa156d32700894329b75ecf89c15599fee5c9cb74dae8f7ace4" [label=""];
  "sha256:7a380f2674368ec23dc7f644fb5a340f7137aaeb4132e1c8ce4c38b354b6c769" -> "sha256:1cf5607686b6ffa156d32700894329b75ecf89c15599fee5c9cb74dae8f7ace4" [label=""];
  "sha256:1cf5607686b6ffa156d32700894329b75ecf89c15599fee5c9cb74dae8f7ace4" -> "sha256:62f38acc2027bcb0d1bb15e5ae1d32bd86832da6fce3e7ef0481ac15b9f3a942" [label=""];
}

