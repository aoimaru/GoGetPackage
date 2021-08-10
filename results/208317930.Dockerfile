[app/sources/208317930.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:8704600b494592b515b833fdaf7f6aa452c2158b5318cd595c89e7716dc10209" [label="local://context" shape="ellipse"];
  "sha256:16cad07a1ad362afb87806a2f80bcf9347ae87e0c21dd1bacf97191c0fbe14f9" [label="copy{src=/install/*.sh, dest=/install/}" shape="note"];
  "sha256:3e30f5ec5c645a2338bb938cb4adc3425e811f52efa53f19fa291cf4a77f8399" [label="/bin/sh -c /install/install_bootstrap_deb_packages.sh" shape="box"];
  "sha256:b96cb1ac83f1886f81440c10ec8dead35cc4ad1858e86fe971b321e6bdabdf3f" [label="/bin/sh -c echo \"deb http://http.debian.net/debian jessie-backports main\" | tee -a /etc/apt/sources.list" shape="box"];
  "sha256:52182b95304a38edece73250389dcfa7056f6e0b81aa4fd3aef9c614808f6f07" [label="/bin/sh -c /install/install_deb_packages.sh" shape="box"];
  "sha256:b7b66aafaab69eb37996bd5bfe284c3299bfd753180c2394ec42f3f6fb229014" [label="/bin/sh -c /install/install_pip_packages.sh" shape="box"];
  "sha256:c8229d56896c4412a286575db9cc6b39cdf24151c9968ef550745fa87e6995b4" [label="/bin/sh -c /install/install_bazel.sh" shape="box"];
  "sha256:c25f532fac97acf835eeece4e521358444e70bad988b527eefe488747ca0073b" [label="copy{src=/install/.bazelrc, dest=/root/.bazelrc}" shape="note"];
  "sha256:1b84ea11dac891ca23f023c3b9abae993e46c4fdd99ee8c5f688dcb9efae0e36" [label="sha256:1b84ea11dac891ca23f023c3b9abae993e46c4fdd99ee8c5f688dcb9efae0e36" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:16cad07a1ad362afb87806a2f80bcf9347ae87e0c21dd1bacf97191c0fbe14f9" [label=""];
  "sha256:8704600b494592b515b833fdaf7f6aa452c2158b5318cd595c89e7716dc10209" -> "sha256:16cad07a1ad362afb87806a2f80bcf9347ae87e0c21dd1bacf97191c0fbe14f9" [label=""];
  "sha256:16cad07a1ad362afb87806a2f80bcf9347ae87e0c21dd1bacf97191c0fbe14f9" -> "sha256:3e30f5ec5c645a2338bb938cb4adc3425e811f52efa53f19fa291cf4a77f8399" [label=""];
  "sha256:3e30f5ec5c645a2338bb938cb4adc3425e811f52efa53f19fa291cf4a77f8399" -> "sha256:b96cb1ac83f1886f81440c10ec8dead35cc4ad1858e86fe971b321e6bdabdf3f" [label=""];
  "sha256:b96cb1ac83f1886f81440c10ec8dead35cc4ad1858e86fe971b321e6bdabdf3f" -> "sha256:52182b95304a38edece73250389dcfa7056f6e0b81aa4fd3aef9c614808f6f07" [label=""];
  "sha256:52182b95304a38edece73250389dcfa7056f6e0b81aa4fd3aef9c614808f6f07" -> "sha256:b7b66aafaab69eb37996bd5bfe284c3299bfd753180c2394ec42f3f6fb229014" [label=""];
  "sha256:b7b66aafaab69eb37996bd5bfe284c3299bfd753180c2394ec42f3f6fb229014" -> "sha256:c8229d56896c4412a286575db9cc6b39cdf24151c9968ef550745fa87e6995b4" [label=""];
  "sha256:c8229d56896c4412a286575db9cc6b39cdf24151c9968ef550745fa87e6995b4" -> "sha256:c25f532fac97acf835eeece4e521358444e70bad988b527eefe488747ca0073b" [label=""];
  "sha256:8704600b494592b515b833fdaf7f6aa452c2158b5318cd595c89e7716dc10209" -> "sha256:c25f532fac97acf835eeece4e521358444e70bad988b527eefe488747ca0073b" [label=""];
  "sha256:c25f532fac97acf835eeece4e521358444e70bad988b527eefe488747ca0073b" -> "sha256:1b84ea11dac891ca23f023c3b9abae993e46c4fdd99ee8c5f688dcb9efae0e36" [label=""];
}

