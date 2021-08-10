[app/sources/293343831.Dockerfile]
digraph {
  "sha256:8f5a8b8ff63cee90098b80cfce433604b9a6392d99eff4be1b2aad7f26325031" [label="local://context" shape="ellipse"];
  "sha256:8cc4bae3ff696431ab970fc29043e2797e36a975f9f8cb2e9af8759760010d12" [label="docker-image://docker.io/nvidia/cudagl:8.0-devel-ubuntu16.04" shape="ellipse"];
  "sha256:2b52753d72346479d50cddcf2b563f5a09164e88346d1aedeb685aa8b2cbaa54" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends     build-essential     git     vim     wget     libopencv-dev     libxmu-dev libxi-dev freeglut3 freeglut3-dev glew-utils libglew-dev libglew-dbg" shape="box"];
  "sha256:576d82f0991e0bd3d376f8a285c48d8118024d21477b4ac68b4b86303ec53aae" [label="/bin/sh -c apt-get install -y --no-install-recommends     binutils-dev      libgflags-dev     libpng++-dev     libpthread-stubs0-dev" shape="box"];
  "sha256:b09f71748cd797776afcad0a6d86428ac59eced2d61acadfe0e466c165544c51" [label="mkdir{path=/opt/DynSLAM}" shape="note"];
  "sha256:e4a7936ce0b5171a89765487bd6c93d76a0348180a9113c260f88be6c11024f6" [label="copy{src=/scripts, dest=/opt/DynSLAM/scripts}" shape="note"];
  "sha256:124302b1b7ad7d4506cde9472c66c76626439b62dd67c81b5eb137b5effc412e" [label="/bin/sh -c scripts/install_cmake.sh sudo" shape="box"];
  "sha256:e56f73328ff53735b48aa40b2d5e5d152e8dc0d8321cc81ce2f2001ca95f7759" [label="/bin/sh -c cmake --version" shape="box"];
  "sha256:c9fec371ca99ecf5006e8ff26abffa9c1d259980f143243c8f428cd415aa8f1e" [label="copy{src=/CMakeLists.txt, dest=/opt/DynSLAM/}" shape="note"];
  "sha256:2e57e63dbe2173b183ba2d3ce8e25cbc57cf5ad4b81fa54d80f05aee738ca40c" [label="copy{src=/src, dest=/opt/DynSLAM/src}" shape="note"];
  "sha256:2da655cc72df2c8cbf324bedeb9ff910ecf0cc1df95983560d0ad401e354c6b6" [label="/bin/sh -c mkdir -p build/eigen    && cd build/eigen && cmake $DYNSLAM_ROOT/src/eigen    && make -j$(nproc)" shape="box"];
  "sha256:49a8f667cf63ee92f705ee7a2bca25e818f8537ecabd9e5029ff8815d397bcb0" [label="/bin/sh -c mkdir -p build/Pangolin && cd build/Pangolin && cmake $DYNSLAM_ROOT/src/Pangolin && make -j$(nproc)" shape="box"];
  "sha256:f0f20538f67983dcc9f5347ae71a478502cd314ce6ba046f622a00e2e295dad7" [label="/bin/sh -c apt-get install -y --no-install-recommends     binutils-dev      mesa-utils" shape="box"];
  "sha256:009365b5f806d75e43faee7035d92d18966eb768fb6eef5ce46f69a102e2fde9" [label="/bin/sh -c mkdir -p build/DynSLAM && cd build/DynSLAM &&     cmake $DYNSLAM_ROOT -DCUDA_COMPUTE_CAPABILITY=$ITM_CUDA_COMPUTE_CAPABILITY" shape="box"];
  "sha256:29f89af5675b9ff575a65a49051617d166bbe4ac3a857f3656ea7c9cf6bc28b3" [label="/bin/sh -c cd build/DynSLAM && make -j$(nproc)" shape="box"];
  "sha256:b89e70d817d05d49475826e0fbf2d9736f33a2e95535392b2a434102378eecee" [label="sha256:b89e70d817d05d49475826e0fbf2d9736f33a2e95535392b2a434102378eecee" shape="plaintext"];
  "sha256:8cc4bae3ff696431ab970fc29043e2797e36a975f9f8cb2e9af8759760010d12" -> "sha256:2b52753d72346479d50cddcf2b563f5a09164e88346d1aedeb685aa8b2cbaa54" [label=""];
  "sha256:2b52753d72346479d50cddcf2b563f5a09164e88346d1aedeb685aa8b2cbaa54" -> "sha256:576d82f0991e0bd3d376f8a285c48d8118024d21477b4ac68b4b86303ec53aae" [label=""];
  "sha256:576d82f0991e0bd3d376f8a285c48d8118024d21477b4ac68b4b86303ec53aae" -> "sha256:b09f71748cd797776afcad0a6d86428ac59eced2d61acadfe0e466c165544c51" [label=""];
  "sha256:b09f71748cd797776afcad0a6d86428ac59eced2d61acadfe0e466c165544c51" -> "sha256:e4a7936ce0b5171a89765487bd6c93d76a0348180a9113c260f88be6c11024f6" [label=""];
  "sha256:8f5a8b8ff63cee90098b80cfce433604b9a6392d99eff4be1b2aad7f26325031" -> "sha256:e4a7936ce0b5171a89765487bd6c93d76a0348180a9113c260f88be6c11024f6" [label=""];
  "sha256:e4a7936ce0b5171a89765487bd6c93d76a0348180a9113c260f88be6c11024f6" -> "sha256:124302b1b7ad7d4506cde9472c66c76626439b62dd67c81b5eb137b5effc412e" [label=""];
  "sha256:124302b1b7ad7d4506cde9472c66c76626439b62dd67c81b5eb137b5effc412e" -> "sha256:e56f73328ff53735b48aa40b2d5e5d152e8dc0d8321cc81ce2f2001ca95f7759" [label=""];
  "sha256:e56f73328ff53735b48aa40b2d5e5d152e8dc0d8321cc81ce2f2001ca95f7759" -> "sha256:c9fec371ca99ecf5006e8ff26abffa9c1d259980f143243c8f428cd415aa8f1e" [label=""];
  "sha256:8f5a8b8ff63cee90098b80cfce433604b9a6392d99eff4be1b2aad7f26325031" -> "sha256:c9fec371ca99ecf5006e8ff26abffa9c1d259980f143243c8f428cd415aa8f1e" [label=""];
  "sha256:c9fec371ca99ecf5006e8ff26abffa9c1d259980f143243c8f428cd415aa8f1e" -> "sha256:2e57e63dbe2173b183ba2d3ce8e25cbc57cf5ad4b81fa54d80f05aee738ca40c" [label=""];
  "sha256:8f5a8b8ff63cee90098b80cfce433604b9a6392d99eff4be1b2aad7f26325031" -> "sha256:2e57e63dbe2173b183ba2d3ce8e25cbc57cf5ad4b81fa54d80f05aee738ca40c" [label=""];
  "sha256:2e57e63dbe2173b183ba2d3ce8e25cbc57cf5ad4b81fa54d80f05aee738ca40c" -> "sha256:2da655cc72df2c8cbf324bedeb9ff910ecf0cc1df95983560d0ad401e354c6b6" [label=""];
  "sha256:2da655cc72df2c8cbf324bedeb9ff910ecf0cc1df95983560d0ad401e354c6b6" -> "sha256:49a8f667cf63ee92f705ee7a2bca25e818f8537ecabd9e5029ff8815d397bcb0" [label=""];
  "sha256:49a8f667cf63ee92f705ee7a2bca25e818f8537ecabd9e5029ff8815d397bcb0" -> "sha256:f0f20538f67983dcc9f5347ae71a478502cd314ce6ba046f622a00e2e295dad7" [label=""];
  "sha256:f0f20538f67983dcc9f5347ae71a478502cd314ce6ba046f622a00e2e295dad7" -> "sha256:009365b5f806d75e43faee7035d92d18966eb768fb6eef5ce46f69a102e2fde9" [label=""];
  "sha256:009365b5f806d75e43faee7035d92d18966eb768fb6eef5ce46f69a102e2fde9" -> "sha256:29f89af5675b9ff575a65a49051617d166bbe4ac3a857f3656ea7c9cf6bc28b3" [label=""];
  "sha256:29f89af5675b9ff575a65a49051617d166bbe4ac3a857f3656ea7c9cf6bc28b3" -> "sha256:b89e70d817d05d49475826e0fbf2d9736f33a2e95535392b2a434102378eecee" [label=""];
}

