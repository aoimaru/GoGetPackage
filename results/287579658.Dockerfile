[app/sources/287579658.Dockerfile]
digraph {
  "sha256:fc6784f712baefb5c361d7d20a045960eb1e2a585f98a66939251eea77c552b2" [label="docker-image://docker.io/mstorsjo/llvm-mingw:dev" shape="ellipse"];
  "sha256:af0d49e76de7f7f761cbfae84e5516639bd963987e67c8279aa81ffa3c0e2c82" [label="/bin/sh -c apt-get update -qq &&     apt-get install -qqy zip &&     apt-get clean -y &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ca80d0f5834b16139bb0ce6bfeebabef54b1367571db5eb398e2f4d75fcb79c9" [label="local://context" shape="ellipse"];
  "sha256:9c70f50313cd974a7dc171d4f07878edb1f5d7c8dae83acb8630d91190ff9b37" [label="copy{src=/build-llvm.sh, dest=/}" shape="note"];
  "sha256:a978a6907c82e126b4923c77200302388fbe5a78dcd3d7f019c53f5ee92b9968" [label="/bin/sh -c ./build-llvm.sh $CROSS_TOOLCHAIN_PREFIX" shape="box"];
  "sha256:ede11484b0b4b72249540d6168f87c14f31f1158ebbafc02c7b4d46850f57d34" [label="copy{src=/strip-llvm.sh, dest=/}" shape="note"];
  "sha256:98aaaf1435c24e44c6b50f86ea283c78a1297ac5b398fa0014c3cc593c4f7235" [label="/bin/sh -c ./strip-llvm.sh $CROSS_TOOLCHAIN_PREFIX" shape="box"];
  "sha256:bfe1054a32fd125a9edf92cf596f556e81dda5beb2034017570729fac13f5293" [label="copy{src=/build-mingw-w64.sh, dest=/}" shape="note"];
  "sha256:8fbc69a10886a0f02707c6a88821b285494b4e6063a96cbf51a201245b3b63ff" [label="/bin/sh -c ./build-mingw-w64.sh $CROSS_TOOLCHAIN_PREFIX --skip-include-triplet-prefix" shape="box"];
  "sha256:64844cb3df15947ef8264930ad007483a0959f9391c397e0d7f7558811c0d10a" [label="copy{src=/wrappers/*.sh, dest=/wrappers/},copy{src=/wrappers/*.c, dest=/wrappers/},copy{src=/wrappers/*.h, dest=/wrappers/}" shape="note"];
  "sha256:fdafbcd5fce09f297c8dd564028ada8a98de8dff3033d6e03a557d4dd4d24b23" [label="copy{src=/install-wrappers.sh, dest=/}" shape="note"];
  "sha256:4d010b984869e59858f7cba80d0873a678be58916e4f687ee6dbc4f5ae9646df" [label="/bin/sh -c ./install-wrappers.sh $CROSS_TOOLCHAIN_PREFIX" shape="box"];
  "sha256:5076279b1906fdf19034637ef7316e702acd5390d6e7c63c1ab2108d7c335265" [label="copy{src=/prepare-cross-toolchain.sh, dest=/}" shape="note"];
  "sha256:f8b160a4f5ed87ca690c6aa95c683178760c19f4cee1e5f031bcbc25a31c0a47" [label="/bin/sh -c ./prepare-cross-toolchain.sh $TOOLCHAIN_PREFIX $CROSS_TOOLCHAIN_PREFIX $CROSS_ARCH" shape="box"];
  "sha256:2bd5018b25149dc0341b275fa24aea12c8a24ff64d8aa25ccf1b349a2d6653c1" [label="/bin/sh -c ln -s $CROSS_TOOLCHAIN_PREFIX llvm-mingw &&     zip -9r /llvm-mingw-$TAG$CROSS_ARCH.zip llvm-mingw &&     ls -lh /llvm-mingw-$TAG$CROSS_ARCH.zip" shape="box"];
  "sha256:772e3b45a420532350364fa6c2308a6652519ef10ef6be12215bcff251f44fea" [label="sha256:772e3b45a420532350364fa6c2308a6652519ef10ef6be12215bcff251f44fea" shape="plaintext"];
  "sha256:fc6784f712baefb5c361d7d20a045960eb1e2a585f98a66939251eea77c552b2" -> "sha256:af0d49e76de7f7f761cbfae84e5516639bd963987e67c8279aa81ffa3c0e2c82" [label=""];
  "sha256:af0d49e76de7f7f761cbfae84e5516639bd963987e67c8279aa81ffa3c0e2c82" -> "sha256:9c70f50313cd974a7dc171d4f07878edb1f5d7c8dae83acb8630d91190ff9b37" [label=""];
  "sha256:ca80d0f5834b16139bb0ce6bfeebabef54b1367571db5eb398e2f4d75fcb79c9" -> "sha256:9c70f50313cd974a7dc171d4f07878edb1f5d7c8dae83acb8630d91190ff9b37" [label=""];
  "sha256:9c70f50313cd974a7dc171d4f07878edb1f5d7c8dae83acb8630d91190ff9b37" -> "sha256:a978a6907c82e126b4923c77200302388fbe5a78dcd3d7f019c53f5ee92b9968" [label=""];
  "sha256:a978a6907c82e126b4923c77200302388fbe5a78dcd3d7f019c53f5ee92b9968" -> "sha256:ede11484b0b4b72249540d6168f87c14f31f1158ebbafc02c7b4d46850f57d34" [label=""];
  "sha256:ca80d0f5834b16139bb0ce6bfeebabef54b1367571db5eb398e2f4d75fcb79c9" -> "sha256:ede11484b0b4b72249540d6168f87c14f31f1158ebbafc02c7b4d46850f57d34" [label=""];
  "sha256:ede11484b0b4b72249540d6168f87c14f31f1158ebbafc02c7b4d46850f57d34" -> "sha256:98aaaf1435c24e44c6b50f86ea283c78a1297ac5b398fa0014c3cc593c4f7235" [label=""];
  "sha256:98aaaf1435c24e44c6b50f86ea283c78a1297ac5b398fa0014c3cc593c4f7235" -> "sha256:bfe1054a32fd125a9edf92cf596f556e81dda5beb2034017570729fac13f5293" [label=""];
  "sha256:ca80d0f5834b16139bb0ce6bfeebabef54b1367571db5eb398e2f4d75fcb79c9" -> "sha256:bfe1054a32fd125a9edf92cf596f556e81dda5beb2034017570729fac13f5293" [label=""];
  "sha256:bfe1054a32fd125a9edf92cf596f556e81dda5beb2034017570729fac13f5293" -> "sha256:8fbc69a10886a0f02707c6a88821b285494b4e6063a96cbf51a201245b3b63ff" [label=""];
  "sha256:8fbc69a10886a0f02707c6a88821b285494b4e6063a96cbf51a201245b3b63ff" -> "sha256:64844cb3df15947ef8264930ad007483a0959f9391c397e0d7f7558811c0d10a" [label=""];
  "sha256:ca80d0f5834b16139bb0ce6bfeebabef54b1367571db5eb398e2f4d75fcb79c9" -> "sha256:64844cb3df15947ef8264930ad007483a0959f9391c397e0d7f7558811c0d10a" [label=""];
  "sha256:64844cb3df15947ef8264930ad007483a0959f9391c397e0d7f7558811c0d10a" -> "sha256:fdafbcd5fce09f297c8dd564028ada8a98de8dff3033d6e03a557d4dd4d24b23" [label=""];
  "sha256:ca80d0f5834b16139bb0ce6bfeebabef54b1367571db5eb398e2f4d75fcb79c9" -> "sha256:fdafbcd5fce09f297c8dd564028ada8a98de8dff3033d6e03a557d4dd4d24b23" [label=""];
  "sha256:fdafbcd5fce09f297c8dd564028ada8a98de8dff3033d6e03a557d4dd4d24b23" -> "sha256:4d010b984869e59858f7cba80d0873a678be58916e4f687ee6dbc4f5ae9646df" [label=""];
  "sha256:4d010b984869e59858f7cba80d0873a678be58916e4f687ee6dbc4f5ae9646df" -> "sha256:5076279b1906fdf19034637ef7316e702acd5390d6e7c63c1ab2108d7c335265" [label=""];
  "sha256:ca80d0f5834b16139bb0ce6bfeebabef54b1367571db5eb398e2f4d75fcb79c9" -> "sha256:5076279b1906fdf19034637ef7316e702acd5390d6e7c63c1ab2108d7c335265" [label=""];
  "sha256:5076279b1906fdf19034637ef7316e702acd5390d6e7c63c1ab2108d7c335265" -> "sha256:f8b160a4f5ed87ca690c6aa95c683178760c19f4cee1e5f031bcbc25a31c0a47" [label=""];
  "sha256:f8b160a4f5ed87ca690c6aa95c683178760c19f4cee1e5f031bcbc25a31c0a47" -> "sha256:2bd5018b25149dc0341b275fa24aea12c8a24ff64d8aa25ccf1b349a2d6653c1" [label=""];
  "sha256:2bd5018b25149dc0341b275fa24aea12c8a24ff64d8aa25ccf1b349a2d6653c1" -> "sha256:772e3b45a420532350364fa6c2308a6652519ef10ef6be12215bcff251f44fea" [label=""];
}

