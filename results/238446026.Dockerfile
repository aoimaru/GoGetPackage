[app/sources/238446026.Dockerfile]
digraph {
  "sha256:977d5f68a49637d0ff5179b7fbd0b7db094d528e3dcae3bac9f5a9a0abf99633" [label="local://context" shape="ellipse"];
  "sha256:4717eb240fd757944b48f36740d44b96bd2a8a81ca250e6bcf631f8700988a83" [label="docker-image://docker.io/library/fedora:28" shape="ellipse"];
  "sha256:ec1ba91d74e20ec0f99e65ebf3c8f770b3f87c13b46406832d8fe194d0319231" [label="/bin/sh -c dnf update -y  && dnf install -y \tautoconf \tautomake \tclang \tcmake \tdaxctl-devel \tdoxygen \tgcc \tgcc-c++ \tgdb \tgit \tlibtool \tmake \tman \tndctl-devel \tnumactl-devel \tpasswd \tperl-Text-Diff \trapidjson-devel \trpm-build \tsudo \tunzip \twget \twhich && dnf clean all" shape="box"];
  "sha256:627276303739eaedb7e0470b7c082028dc1743b84081b97de94e679c31ac370d" [label="/bin/sh -c dnf debuginfo-install -y glibc" shape="box"];
  "sha256:b31dccfc6f278cd8115f45d5c0334a61e6fda8f69b2a0e73100a82fa51f18efc" [label="copy{src=/install-googletest.sh, dest=/install-googletest.sh}" shape="note"];
  "sha256:0f0eec7375494df7eaeb43c5aa959db6f3d4d470d8b1752f0401258cbac013dd" [label="/bin/sh -c ./install-googletest.sh" shape="box"];
  "sha256:b00e704054c9a74e61abb3d0340a18ea5509c0eaee5e70d27d2ae96667b806a2" [label="copy{src=/install-valgrind.sh, dest=/install-valgrind.sh}" shape="note"];
  "sha256:3bf1095de43709c08b0907c1b27ac148a26bf3d0ee5829eae6afbc0ec14dd4a7" [label="/bin/sh -c ./install-valgrind.sh" shape="box"];
  "sha256:04b6962690eb529a3c52e5b7ce623c7a861fcb6d129eb3e6e2450d15ae196dc0" [label="copy{src=/install-pmdk.sh, dest=/install-pmdk.sh}" shape="note"];
  "sha256:41d320b70779f40ce65a8a8f9fd8810a5756d51e2641f533bddd5b1c39bc1903" [label="/bin/sh -c ./install-pmdk.sh rpm" shape="box"];
  "sha256:7939e7c60d0759fbf5ad9d653e4a9c8b15b976d28c261149e5c559955c0a9254" [label="copy{src=/install-libpmemobj-cpp.sh, dest=/install-libpmemobj-cpp.sh}" shape="note"];
  "sha256:eeb44c65f4f86e3dd77790e0faf97857ba9002f560393eba73f19c5775046c41" [label="/bin/sh -c ./install-libpmemobj-cpp.sh RPM" shape="box"];
  "sha256:a0b5f7c4f0baca7612df33b8f5bd79fdd85b672f1f460da8f8858dde36092ef9" [label="copy{src=/install-memkind.sh, dest=/install-memkind.sh}" shape="note"];
  "sha256:a7471f902b9713eeeb33ed4c7cc43df6ceab1895e3c2d6e29c69afa0fa2f2fe5" [label="/bin/sh -c ./install-memkind.sh" shape="box"];
  "sha256:bfdcb382b21f8dd45875f0d0f736b0a25caf0ff8d80c568357b26874a4471868" [label="copy{src=/install-tbb.sh, dest=/install-tbb.sh}" shape="note"];
  "sha256:22e2b5391be908c8a9fae24806f5d7d7a2d04c9f78c818fe96db7c0804979815" [label="/bin/sh -c ./install-tbb.sh" shape="box"];
  "sha256:1f300bf2fda943a509d88cfba6acc5f135499fc2a52b06a8c4d29d33c914f781" [label="/bin/sh -c useradd -m $USER" shape="box"];
  "sha256:6e6376814812da8a2239e47f57e537cd7645c290e8c79db264e0a7b30a4e6209" [label="/bin/sh -c echo $USERPASS | passwd $USER --stdin" shape="box"];
  "sha256:4df79c16be704404f594e6ad968d810fb1b60f01c633310ce53a5e606d1686cb" [label="/bin/sh -c gpasswd wheel -a $USER" shape="box"];
  "sha256:98c3d308783edfd083d77e31d9eb0b915eaa23dfd6650ee1623722ad2dc51039" [label="sha256:98c3d308783edfd083d77e31d9eb0b915eaa23dfd6650ee1623722ad2dc51039" shape="plaintext"];
  "sha256:4717eb240fd757944b48f36740d44b96bd2a8a81ca250e6bcf631f8700988a83" -> "sha256:ec1ba91d74e20ec0f99e65ebf3c8f770b3f87c13b46406832d8fe194d0319231" [label=""];
  "sha256:ec1ba91d74e20ec0f99e65ebf3c8f770b3f87c13b46406832d8fe194d0319231" -> "sha256:627276303739eaedb7e0470b7c082028dc1743b84081b97de94e679c31ac370d" [label=""];
  "sha256:627276303739eaedb7e0470b7c082028dc1743b84081b97de94e679c31ac370d" -> "sha256:b31dccfc6f278cd8115f45d5c0334a61e6fda8f69b2a0e73100a82fa51f18efc" [label=""];
  "sha256:977d5f68a49637d0ff5179b7fbd0b7db094d528e3dcae3bac9f5a9a0abf99633" -> "sha256:b31dccfc6f278cd8115f45d5c0334a61e6fda8f69b2a0e73100a82fa51f18efc" [label=""];
  "sha256:b31dccfc6f278cd8115f45d5c0334a61e6fda8f69b2a0e73100a82fa51f18efc" -> "sha256:0f0eec7375494df7eaeb43c5aa959db6f3d4d470d8b1752f0401258cbac013dd" [label=""];
  "sha256:0f0eec7375494df7eaeb43c5aa959db6f3d4d470d8b1752f0401258cbac013dd" -> "sha256:b00e704054c9a74e61abb3d0340a18ea5509c0eaee5e70d27d2ae96667b806a2" [label=""];
  "sha256:977d5f68a49637d0ff5179b7fbd0b7db094d528e3dcae3bac9f5a9a0abf99633" -> "sha256:b00e704054c9a74e61abb3d0340a18ea5509c0eaee5e70d27d2ae96667b806a2" [label=""];
  "sha256:b00e704054c9a74e61abb3d0340a18ea5509c0eaee5e70d27d2ae96667b806a2" -> "sha256:3bf1095de43709c08b0907c1b27ac148a26bf3d0ee5829eae6afbc0ec14dd4a7" [label=""];
  "sha256:3bf1095de43709c08b0907c1b27ac148a26bf3d0ee5829eae6afbc0ec14dd4a7" -> "sha256:04b6962690eb529a3c52e5b7ce623c7a861fcb6d129eb3e6e2450d15ae196dc0" [label=""];
  "sha256:977d5f68a49637d0ff5179b7fbd0b7db094d528e3dcae3bac9f5a9a0abf99633" -> "sha256:04b6962690eb529a3c52e5b7ce623c7a861fcb6d129eb3e6e2450d15ae196dc0" [label=""];
  "sha256:04b6962690eb529a3c52e5b7ce623c7a861fcb6d129eb3e6e2450d15ae196dc0" -> "sha256:41d320b70779f40ce65a8a8f9fd8810a5756d51e2641f533bddd5b1c39bc1903" [label=""];
  "sha256:41d320b70779f40ce65a8a8f9fd8810a5756d51e2641f533bddd5b1c39bc1903" -> "sha256:7939e7c60d0759fbf5ad9d653e4a9c8b15b976d28c261149e5c559955c0a9254" [label=""];
  "sha256:977d5f68a49637d0ff5179b7fbd0b7db094d528e3dcae3bac9f5a9a0abf99633" -> "sha256:7939e7c60d0759fbf5ad9d653e4a9c8b15b976d28c261149e5c559955c0a9254" [label=""];
  "sha256:7939e7c60d0759fbf5ad9d653e4a9c8b15b976d28c261149e5c559955c0a9254" -> "sha256:eeb44c65f4f86e3dd77790e0faf97857ba9002f560393eba73f19c5775046c41" [label=""];
  "sha256:eeb44c65f4f86e3dd77790e0faf97857ba9002f560393eba73f19c5775046c41" -> "sha256:a0b5f7c4f0baca7612df33b8f5bd79fdd85b672f1f460da8f8858dde36092ef9" [label=""];
  "sha256:977d5f68a49637d0ff5179b7fbd0b7db094d528e3dcae3bac9f5a9a0abf99633" -> "sha256:a0b5f7c4f0baca7612df33b8f5bd79fdd85b672f1f460da8f8858dde36092ef9" [label=""];
  "sha256:a0b5f7c4f0baca7612df33b8f5bd79fdd85b672f1f460da8f8858dde36092ef9" -> "sha256:a7471f902b9713eeeb33ed4c7cc43df6ceab1895e3c2d6e29c69afa0fa2f2fe5" [label=""];
  "sha256:a7471f902b9713eeeb33ed4c7cc43df6ceab1895e3c2d6e29c69afa0fa2f2fe5" -> "sha256:bfdcb382b21f8dd45875f0d0f736b0a25caf0ff8d80c568357b26874a4471868" [label=""];
  "sha256:977d5f68a49637d0ff5179b7fbd0b7db094d528e3dcae3bac9f5a9a0abf99633" -> "sha256:bfdcb382b21f8dd45875f0d0f736b0a25caf0ff8d80c568357b26874a4471868" [label=""];
  "sha256:bfdcb382b21f8dd45875f0d0f736b0a25caf0ff8d80c568357b26874a4471868" -> "sha256:22e2b5391be908c8a9fae24806f5d7d7a2d04c9f78c818fe96db7c0804979815" [label=""];
  "sha256:22e2b5391be908c8a9fae24806f5d7d7a2d04c9f78c818fe96db7c0804979815" -> "sha256:1f300bf2fda943a509d88cfba6acc5f135499fc2a52b06a8c4d29d33c914f781" [label=""];
  "sha256:1f300bf2fda943a509d88cfba6acc5f135499fc2a52b06a8c4d29d33c914f781" -> "sha256:6e6376814812da8a2239e47f57e537cd7645c290e8c79db264e0a7b30a4e6209" [label=""];
  "sha256:6e6376814812da8a2239e47f57e537cd7645c290e8c79db264e0a7b30a4e6209" -> "sha256:4df79c16be704404f594e6ad968d810fb1b60f01c633310ce53a5e606d1686cb" [label=""];
  "sha256:4df79c16be704404f594e6ad968d810fb1b60f01c633310ce53a5e606d1686cb" -> "sha256:98c3d308783edfd083d77e31d9eb0b915eaa23dfd6650ee1623722ad2dc51039" [label=""];
}

