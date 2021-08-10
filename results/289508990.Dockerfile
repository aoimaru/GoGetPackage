[app/sources/289508990.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:d88ed31e3c47d4db433beef6ba20fd8e5f9caf7b2f54fb0a8701ea98171b9d88" [label="/bin/sh -c useradd -m server" shape="box"];
  "sha256:494d7285f11e409a2947097ca22a1611c8bc1fe5bef978ec2f1b2ed34f60aed1" [label="https://cmake.org/files/v3.14/cmake-3.14.1-Linux-x86_64.sh" shape="ellipse"];
  "sha256:e1c235bfdbf8e23ebe233bd9c7e70af06f457e4236189c417e6e152b57b6ca97" [label="docker-image://docker.io/library/gcc:8" shape="ellipse"];
  "sha256:a6afc35215781eb41d9a4869f6927b7246226f02dd5cb4bdd8bb21031eca800c" [label="mkdir{path=/project}" shape="note"];
  "sha256:4099ca70f7eafa43723e6ccbb256ca2cd247a5ddc852d9e1861af564abd3b104" [label="copy{src=/cmake-3.14.1-Linux-x86_64.sh, dest=/cmake-3.14.1-Linux-x86_64.sh}" shape="note"];
  "sha256:fb745df44e5fa88d8f42beb86d7d3821a7b9da30600e3b9ce773c6554e078648" [label="/bin/sh -c mkdir /opt/cmake" shape="box"];
  "sha256:5f1acacdeb6c12477f6d3f84a297a4e149167d48ef9fa4ab224f39fc51baec19" [label="/bin/sh -c sh /cmake-3.14.1-Linux-x86_64.sh --prefix=/opt/cmake --skip-license" shape="box"];
  "sha256:7d2e2aeca83ebea9001438f0535cb1e624a34447e4cf8f8953a4c302da02559e" [label="/bin/sh -c ln -s /opt/cmake/bin/cmake /usr/local/bin/cmake" shape="box"];
  "sha256:692f4acf3e0606ec153a1e287b61c3448925c6cd7f850d6566475ab3c2568a2d" [label="/bin/sh -c cmake --version" shape="box"];
  "sha256:576465a2e275c6707cdfc539b9b23b15c71596ff5fb29ac2413b016ce9756b72" [label="local://context" shape="ellipse"];
  "sha256:9d4cd155cd244f171ee4be979da3943a0e64fc9a5152a569f24337e9e80db9be" [label="copy{src=/sdks/cpp, dest=/project/sdk}" shape="note"];
  "sha256:f234c21696aee42f556e0e959c7cf63ec420277a8af22acfa92557c5fc2e9ced" [label="/bin/sh -c cd sdk && mkdir -p .build &&     cd .build &&     cmake .. -DCMAKE_BUILD_TYPE=Release -G \"Unix Makefiles\" -Wno-dev &&     cmake --build . --target install" shape="box"];
  "sha256:b17764a1ec185d16a26472bde35217db7868b9667bda5c2047a8e0f6723445bc" [label="copy{src=/examples/cpp-simple, dest=/project/cpp-simple}" shape="note"];
  "sha256:cbbd8b72462f05eb180d22802d77135d45a0822abf11f74ddd4b65bc41e9ce1f" [label="/bin/sh -c cd cpp-simple && mkdir -p .build &&     cd .build &&     cmake .. -G \"Unix Makefiles\" -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=.bin &&     cmake --build . --target install" shape="box"];
  "sha256:2b94415ad14fcef0a7887113520604ea488407abf89657b6b5346975ca2190e0" [label="copy{src=/project/cpp-simple/.build/.bin/cpp-simple, dest=/home/server/cpp-simple}" shape="note"];
  "sha256:ff36b28a15a80f3bfc24b1278eff318c5f3ad08e5a8fbacfc834a31682a46070" [label="/bin/sh -c chown -R server /home/server &&     chmod o+x /home/server/cpp-simple" shape="box"];
  "sha256:8b6cb970b6fba0de0a8035f5f9e92df0c04a7c3516d2c21a22194dc68a7537c1" [label="sha256:8b6cb970b6fba0de0a8035f5f9e92df0c04a7c3516d2c21a22194dc68a7537c1" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:d88ed31e3c47d4db433beef6ba20fd8e5f9caf7b2f54fb0a8701ea98171b9d88" [label=""];
  "sha256:e1c235bfdbf8e23ebe233bd9c7e70af06f457e4236189c417e6e152b57b6ca97" -> "sha256:a6afc35215781eb41d9a4869f6927b7246226f02dd5cb4bdd8bb21031eca800c" [label=""];
  "sha256:a6afc35215781eb41d9a4869f6927b7246226f02dd5cb4bdd8bb21031eca800c" -> "sha256:4099ca70f7eafa43723e6ccbb256ca2cd247a5ddc852d9e1861af564abd3b104" [label=""];
  "sha256:494d7285f11e409a2947097ca22a1611c8bc1fe5bef978ec2f1b2ed34f60aed1" -> "sha256:4099ca70f7eafa43723e6ccbb256ca2cd247a5ddc852d9e1861af564abd3b104" [label=""];
  "sha256:4099ca70f7eafa43723e6ccbb256ca2cd247a5ddc852d9e1861af564abd3b104" -> "sha256:fb745df44e5fa88d8f42beb86d7d3821a7b9da30600e3b9ce773c6554e078648" [label=""];
  "sha256:fb745df44e5fa88d8f42beb86d7d3821a7b9da30600e3b9ce773c6554e078648" -> "sha256:5f1acacdeb6c12477f6d3f84a297a4e149167d48ef9fa4ab224f39fc51baec19" [label=""];
  "sha256:5f1acacdeb6c12477f6d3f84a297a4e149167d48ef9fa4ab224f39fc51baec19" -> "sha256:7d2e2aeca83ebea9001438f0535cb1e624a34447e4cf8f8953a4c302da02559e" [label=""];
  "sha256:7d2e2aeca83ebea9001438f0535cb1e624a34447e4cf8f8953a4c302da02559e" -> "sha256:692f4acf3e0606ec153a1e287b61c3448925c6cd7f850d6566475ab3c2568a2d" [label=""];
  "sha256:692f4acf3e0606ec153a1e287b61c3448925c6cd7f850d6566475ab3c2568a2d" -> "sha256:9d4cd155cd244f171ee4be979da3943a0e64fc9a5152a569f24337e9e80db9be" [label=""];
  "sha256:576465a2e275c6707cdfc539b9b23b15c71596ff5fb29ac2413b016ce9756b72" -> "sha256:9d4cd155cd244f171ee4be979da3943a0e64fc9a5152a569f24337e9e80db9be" [label=""];
  "sha256:9d4cd155cd244f171ee4be979da3943a0e64fc9a5152a569f24337e9e80db9be" -> "sha256:f234c21696aee42f556e0e959c7cf63ec420277a8af22acfa92557c5fc2e9ced" [label=""];
  "sha256:f234c21696aee42f556e0e959c7cf63ec420277a8af22acfa92557c5fc2e9ced" -> "sha256:b17764a1ec185d16a26472bde35217db7868b9667bda5c2047a8e0f6723445bc" [label=""];
  "sha256:576465a2e275c6707cdfc539b9b23b15c71596ff5fb29ac2413b016ce9756b72" -> "sha256:b17764a1ec185d16a26472bde35217db7868b9667bda5c2047a8e0f6723445bc" [label=""];
  "sha256:b17764a1ec185d16a26472bde35217db7868b9667bda5c2047a8e0f6723445bc" -> "sha256:cbbd8b72462f05eb180d22802d77135d45a0822abf11f74ddd4b65bc41e9ce1f" [label=""];
  "sha256:d88ed31e3c47d4db433beef6ba20fd8e5f9caf7b2f54fb0a8701ea98171b9d88" -> "sha256:2b94415ad14fcef0a7887113520604ea488407abf89657b6b5346975ca2190e0" [label=""];
  "sha256:cbbd8b72462f05eb180d22802d77135d45a0822abf11f74ddd4b65bc41e9ce1f" -> "sha256:2b94415ad14fcef0a7887113520604ea488407abf89657b6b5346975ca2190e0" [label=""];
  "sha256:2b94415ad14fcef0a7887113520604ea488407abf89657b6b5346975ca2190e0" -> "sha256:ff36b28a15a80f3bfc24b1278eff318c5f3ad08e5a8fbacfc834a31682a46070" [label=""];
  "sha256:ff36b28a15a80f3bfc24b1278eff318c5f3ad08e5a8fbacfc834a31682a46070" -> "sha256:8b6cb970b6fba0de0a8035f5f9e92df0c04a7c3516d2c21a22194dc68a7537c1" [label=""];
}

