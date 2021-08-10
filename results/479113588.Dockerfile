[app/sources/479113588.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:25818dd19fc72ce7cab89b9b5600c10faa83e7d660da45c07ef4b995f6582fac" [label="/bin/sh -c apt-get update -y" shape="box"];
  "sha256:c9ac97ba712aad85de7305bfff1ae34c610d80e7029e31b5428bfdd9bb9105ee" [label="/bin/sh -c apt-get install -y autoconf automake libtool curl make g++ unzip wget git     binutils liblzma-dev libz-dev python-all cmake ninja-build subversion     pkg-config docbook2x" shape="box"];
  "sha256:79133909a2bb95e0f6d4f63a022f19495288458e5add15c646d7bbce9a262da7" [label="mkdir{path=/root}" shape="note"];
  "sha256:0c7fd83328f1eac55f2e55b83744fb0d886471acce7515b22095c123b552b945" [label="/bin/sh -c wget -qO- https://github.com/google/protobuf/releases/download/v3.3.0/protobuf-cpp-3.3.0.tar.gz | tar zxf -" shape="box"];
  "sha256:22dd49e7d04a7ef9077638e664fe9ad93d3a8dcb625fb015603f07b0d4e2b6b1" [label="/bin/sh -c cd protobuf-3.3.0 && ./autogen.sh && ./configure && make -j $(nproc) && make check -j $(nproc) && make install && ldconfig" shape="box"];
  "sha256:fd09758afd1977da8a43335eb65c53ce4d44b73d7db0e747432fc0ba09ab8f6e" [label="/bin/sh -c svn co http://llvm.org/svn/llvm-project/llvm/trunk llvm" shape="box"];
  "sha256:59a0a80b63c3a86585d8330f779cf3d558609e31ff6b75b7970e9a1e899117f7" [label="/bin/sh -c cd llvm/tools && svn co http://llvm.org/svn/llvm-project/cfe/trunk clang -r $(cd ../ && svn info | grep Revision | awk '{print $2}')" shape="box"];
  "sha256:810de7495ed1c3512c58977e0d2a525f8432ee1083a0f1829784e3813641d161" [label="/bin/sh -c cd llvm/projects && svn co http://llvm.org/svn/llvm-project/compiler-rt/trunk compiler-rt -r $(cd ../ && svn info | grep Revision | awk '{print $2}')" shape="box"];
  "sha256:449e34ea25632086bd493b61258d22da2d955ef326a1a6d24e572b1d9ac6ebc2" [label="/bin/sh -c mkdir build0 && cd build0 && cmake -GNinja -DCMAKE_BUILD_TYPE=Release ../llvm && ninja" shape="box"];
  "sha256:a4d73487d4bc4e95b9ae4d232fb8f23b4a6c3982bc18cae3de0c96b26b217310" [label="/bin/sh -c mkdir build1 && cd build1 && cmake -GNinja -DCMAKE_BUILD_TYPE=Release ../llvm     -DLLVM_ENABLE_ASSERTIONS=ON     -DCMAKE_C_COMPILER=`pwd`/../build0/bin/clang     -DCMAKE_CXX_COMPILER=`pwd`/../build0/bin/clang++     -DLLVM_USE_SANITIZE_COVERAGE=YES     -DLLVM_USE_SANITIZER=Address -DCLANG_ENABLE_PROTO_FUZZER=ON" shape="box"];
  "sha256:9ba0d1f7feaf616feb95cb55e04f84c5534d92356136f6c280f0f902f69acca9" [label="/bin/sh -c cd build1 && ninja clang-fuzzer" shape="box"];
  "sha256:70e69fad7055614cf05ecd931034a45e3ae841b51d0ba0042812b22940368f2a" [label="/bin/sh -c cd build1 && ninja clang-proto-fuzzer" shape="box"];
  "sha256:4a1330dcb7307a0f584f22b80cba20bdd1be202b5ad8c8c4f94193e76e2d5746" [label="/bin/sh -c cd build1 && ninja clang-proto-to-cxx" shape="box"];
  "sha256:e2da84014a6095ba42a77aa412a78ff3a1c145694a8cb2e7f7283f4b8045ac14" [label="/bin/sh -c cd build1 && ninja clang-loop-proto-to-cxx" shape="box"];
  "sha256:763e9fdb1e74cfaab2da5872e77a9aa14f2055fa8d182186ad20f31cb45ca3ab" [label="/bin/sh -c cd build1 && ninja clang-loop-proto-to-llvm" shape="box"];
  "sha256:ce4fa4e62f610b2834b037eba168de5461d717e78f9a7a1c6c1f4cbec8f21ea6" [label="/bin/sh -c cd build1 && ninja clang-loop-proto-fuzzer" shape="box"];
  "sha256:97239103918ccee143b47aa5e4a6319d482c31bc8aee71c9a555a07c207dab34" [label="/bin/sh -c cd build1 && ninja clang-llvm-proto-fuzzer" shape="box"];
  "sha256:25e52714f405371c8a89078d6eba28775f6d5573c08677c4c32f4b015a9a6e07" [label="sha256:25e52714f405371c8a89078d6eba28775f6d5573c08677c4c32f4b015a9a6e07" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:25818dd19fc72ce7cab89b9b5600c10faa83e7d660da45c07ef4b995f6582fac" [label=""];
  "sha256:25818dd19fc72ce7cab89b9b5600c10faa83e7d660da45c07ef4b995f6582fac" -> "sha256:c9ac97ba712aad85de7305bfff1ae34c610d80e7029e31b5428bfdd9bb9105ee" [label=""];
  "sha256:c9ac97ba712aad85de7305bfff1ae34c610d80e7029e31b5428bfdd9bb9105ee" -> "sha256:79133909a2bb95e0f6d4f63a022f19495288458e5add15c646d7bbce9a262da7" [label=""];
  "sha256:79133909a2bb95e0f6d4f63a022f19495288458e5add15c646d7bbce9a262da7" -> "sha256:0c7fd83328f1eac55f2e55b83744fb0d886471acce7515b22095c123b552b945" [label=""];
  "sha256:0c7fd83328f1eac55f2e55b83744fb0d886471acce7515b22095c123b552b945" -> "sha256:22dd49e7d04a7ef9077638e664fe9ad93d3a8dcb625fb015603f07b0d4e2b6b1" [label=""];
  "sha256:22dd49e7d04a7ef9077638e664fe9ad93d3a8dcb625fb015603f07b0d4e2b6b1" -> "sha256:fd09758afd1977da8a43335eb65c53ce4d44b73d7db0e747432fc0ba09ab8f6e" [label=""];
  "sha256:fd09758afd1977da8a43335eb65c53ce4d44b73d7db0e747432fc0ba09ab8f6e" -> "sha256:59a0a80b63c3a86585d8330f779cf3d558609e31ff6b75b7970e9a1e899117f7" [label=""];
  "sha256:59a0a80b63c3a86585d8330f779cf3d558609e31ff6b75b7970e9a1e899117f7" -> "sha256:810de7495ed1c3512c58977e0d2a525f8432ee1083a0f1829784e3813641d161" [label=""];
  "sha256:810de7495ed1c3512c58977e0d2a525f8432ee1083a0f1829784e3813641d161" -> "sha256:449e34ea25632086bd493b61258d22da2d955ef326a1a6d24e572b1d9ac6ebc2" [label=""];
  "sha256:449e34ea25632086bd493b61258d22da2d955ef326a1a6d24e572b1d9ac6ebc2" -> "sha256:a4d73487d4bc4e95b9ae4d232fb8f23b4a6c3982bc18cae3de0c96b26b217310" [label=""];
  "sha256:a4d73487d4bc4e95b9ae4d232fb8f23b4a6c3982bc18cae3de0c96b26b217310" -> "sha256:9ba0d1f7feaf616feb95cb55e04f84c5534d92356136f6c280f0f902f69acca9" [label=""];
  "sha256:9ba0d1f7feaf616feb95cb55e04f84c5534d92356136f6c280f0f902f69acca9" -> "sha256:70e69fad7055614cf05ecd931034a45e3ae841b51d0ba0042812b22940368f2a" [label=""];
  "sha256:70e69fad7055614cf05ecd931034a45e3ae841b51d0ba0042812b22940368f2a" -> "sha256:4a1330dcb7307a0f584f22b80cba20bdd1be202b5ad8c8c4f94193e76e2d5746" [label=""];
  "sha256:4a1330dcb7307a0f584f22b80cba20bdd1be202b5ad8c8c4f94193e76e2d5746" -> "sha256:e2da84014a6095ba42a77aa412a78ff3a1c145694a8cb2e7f7283f4b8045ac14" [label=""];
  "sha256:e2da84014a6095ba42a77aa412a78ff3a1c145694a8cb2e7f7283f4b8045ac14" -> "sha256:763e9fdb1e74cfaab2da5872e77a9aa14f2055fa8d182186ad20f31cb45ca3ab" [label=""];
  "sha256:763e9fdb1e74cfaab2da5872e77a9aa14f2055fa8d182186ad20f31cb45ca3ab" -> "sha256:ce4fa4e62f610b2834b037eba168de5461d717e78f9a7a1c6c1f4cbec8f21ea6" [label=""];
  "sha256:ce4fa4e62f610b2834b037eba168de5461d717e78f9a7a1c6c1f4cbec8f21ea6" -> "sha256:97239103918ccee143b47aa5e4a6319d482c31bc8aee71c9a555a07c207dab34" [label=""];
  "sha256:97239103918ccee143b47aa5e4a6319d482c31bc8aee71c9a555a07c207dab34" -> "sha256:25e52714f405371c8a89078d6eba28775f6d5573c08677c4c32f4b015a9a6e07" [label=""];
}

