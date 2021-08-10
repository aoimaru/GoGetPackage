[app/sources/238913494.Dockerfile]
digraph {
  "sha256:7b9355f8ca6e6a5d09a01fe297f0b503e55723d46bc4eebd5eb971827e7490c4" [label="docker-image://quay.io/aicoe/manylinux2010_x86_64:latest@sha256:1ecd737515ef1a25270449b02a290b1f997e9f3fa196f536b0454c1bb2cf1969" shape="ellipse"];
  "sha256:ffd5d8e2e6aa461d060f93d8b9c656fefcf2809e1b6a5d640d49b38e678c3301" [label="local://context" shape="ellipse"];
  "sha256:ad8f96bfd344711a8dd57e180e8e9b9f3c017c7575eeeb274b47f69349675691" [label="copy{src=/install/*.sh, dest=/install/}" shape="note"];
  "sha256:d4ffb071ff0891179c7bf1d042733612ad242d6287bcf1b86a4ce5e30e12fa00" [label="/bin/sh -c /install/install_yum_packages.sh" shape="box"];
  "sha256:c87f71fb94b257fb21ee3acd0afa2eaaf985f0acfc71f8e90de37bf1b0ef8be9" [label="/bin/sh -c bash install/install_centos_python35.sh" shape="box"];
  "sha256:618b293d0abf1450ed49715f082057e42699f95a5972b016d620e3c1b12c6675" [label="/bin/sh -c /install/install_centos_pip_packages.sh" shape="box"];
  "sha256:ebeb76493ec3cb557ea68f8920f3d0d88826a16f50cd7049f0603009440f588c" [label="/bin/sh -c /install/install_bazel_from_source.sh" shape="box"];
  "sha256:e8bab92726aa62cfe780e79c5e9c7e2abb7123e6029106bb617703e0e1ed83eb" [label="/bin/sh -c /install/install_proto3.sh" shape="box"];
  "sha256:d094170136f21dd5910258082c7feb1b438ffa131a5f309c17e3642e9f8edd0b" [label="/bin/sh -c /install/install_buildifier.sh" shape="box"];
  "sha256:77500e811c413c8040938aa09845496df2ce60d68b7ef68002456c7b85d2d573" [label="/bin/sh -c /install/install_golang.sh" shape="box"];
  "sha256:89bf4426f2fad236d3e9b0d4d21ed98e2f62cb6ca2294d019fc85dc8f049f669" [label="copy{src=/install/.bazelrc, dest=/etc/bazel.bazelrc}" shape="note"];
  "sha256:22203ad6fc96ec92a3832c3692d0db569d72f8666ccd83b5a71fc673020a04eb" [label="sha256:22203ad6fc96ec92a3832c3692d0db569d72f8666ccd83b5a71fc673020a04eb" shape="plaintext"];
  "sha256:7b9355f8ca6e6a5d09a01fe297f0b503e55723d46bc4eebd5eb971827e7490c4" -> "sha256:ad8f96bfd344711a8dd57e180e8e9b9f3c017c7575eeeb274b47f69349675691" [label=""];
  "sha256:ffd5d8e2e6aa461d060f93d8b9c656fefcf2809e1b6a5d640d49b38e678c3301" -> "sha256:ad8f96bfd344711a8dd57e180e8e9b9f3c017c7575eeeb274b47f69349675691" [label=""];
  "sha256:ad8f96bfd344711a8dd57e180e8e9b9f3c017c7575eeeb274b47f69349675691" -> "sha256:d4ffb071ff0891179c7bf1d042733612ad242d6287bcf1b86a4ce5e30e12fa00" [label=""];
  "sha256:d4ffb071ff0891179c7bf1d042733612ad242d6287bcf1b86a4ce5e30e12fa00" -> "sha256:c87f71fb94b257fb21ee3acd0afa2eaaf985f0acfc71f8e90de37bf1b0ef8be9" [label=""];
  "sha256:c87f71fb94b257fb21ee3acd0afa2eaaf985f0acfc71f8e90de37bf1b0ef8be9" -> "sha256:618b293d0abf1450ed49715f082057e42699f95a5972b016d620e3c1b12c6675" [label=""];
  "sha256:618b293d0abf1450ed49715f082057e42699f95a5972b016d620e3c1b12c6675" -> "sha256:ebeb76493ec3cb557ea68f8920f3d0d88826a16f50cd7049f0603009440f588c" [label=""];
  "sha256:ebeb76493ec3cb557ea68f8920f3d0d88826a16f50cd7049f0603009440f588c" -> "sha256:e8bab92726aa62cfe780e79c5e9c7e2abb7123e6029106bb617703e0e1ed83eb" [label=""];
  "sha256:e8bab92726aa62cfe780e79c5e9c7e2abb7123e6029106bb617703e0e1ed83eb" -> "sha256:d094170136f21dd5910258082c7feb1b438ffa131a5f309c17e3642e9f8edd0b" [label=""];
  "sha256:d094170136f21dd5910258082c7feb1b438ffa131a5f309c17e3642e9f8edd0b" -> "sha256:77500e811c413c8040938aa09845496df2ce60d68b7ef68002456c7b85d2d573" [label=""];
  "sha256:77500e811c413c8040938aa09845496df2ce60d68b7ef68002456c7b85d2d573" -> "sha256:89bf4426f2fad236d3e9b0d4d21ed98e2f62cb6ca2294d019fc85dc8f049f669" [label=""];
  "sha256:ffd5d8e2e6aa461d060f93d8b9c656fefcf2809e1b6a5d640d49b38e678c3301" -> "sha256:89bf4426f2fad236d3e9b0d4d21ed98e2f62cb6ca2294d019fc85dc8f049f669" [label=""];
  "sha256:89bf4426f2fad236d3e9b0d4d21ed98e2f62cb6ca2294d019fc85dc8f049f669" -> "sha256:22203ad6fc96ec92a3832c3692d0db569d72f8666ccd83b5a71fc673020a04eb" [label=""];
}

