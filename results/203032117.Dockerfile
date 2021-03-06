[app/sources/203032117.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:cf0de093b1b9a94dc9a59a27111bf92194ec882a61bd8bb454f99833e129a79f" [label="/bin/sh -c mkdir ${OPENFACE_DIR}" shape="box"];
  "sha256:4fa27cfdc89a4708f6600e4e3acd7a6d2c0cafb0b2574bea3e1a0bb46d235b62" [label="mkdir{path=/home/openface-build}" shape="note"];
  "sha256:bca409ad6e7877fefe3ec2356c3e211f5b3d62022b4dcf51f535d0c23fa9f719" [label="local://context" shape="ellipse"];
  "sha256:31d08d74e9aede36e38b84b3e76ac4b3988e3a1bc30195f0e515c168b7b29c1e" [label="copy{src=/CMakeLists.txt, dest=/home/openface-build}" shape="note"];
  "sha256:ebdbf1aaa5f2e0ac0fc97609705ee772395b1bc733b19a3b38754fe2adacc2bd" [label="copy{src=/cmake, dest=/home/openface-build/cmake}" shape="note"];
  "sha256:01c47a47203b050cc75be5b354d15ed7a6cb40688bd16738bd67ca4950acc7bc" [label="copy{src=/exe, dest=/home/openface-build/exe}" shape="note"];
  "sha256:c8d67cc834beb67d0b8415bef0bcb83d3d7bd3dccecb03ead7e7b8b2ceb688d5" [label="copy{src=/lib, dest=/home/openface-build/lib}" shape="note"];
  "sha256:037388de9728c5e72da2516e6afa3928c46ce195b114eabda4b81451571c4903" [label="https://www.dropbox.com/s/7na5qsjzz8yfoer/cen_patches_0.25_of.dat?dl=1" shape="ellipse"];
  "sha256:09753bee85397c61cc29adff6c2df69829c67b13a262ef5ca57dbb5c4561e329" [label="copy{src=/cen_patches_0.25_of.dat, dest=/home/openface-build/lib/local/LandmarkDetector/model/patch_experts/cen_patches_0.25_of.dat}" shape="note"];
  "sha256:0b81832702a674bb9ebf8b7504dde7015a9c5eeee2759e1c0ec8152610605422" [label="https://www.dropbox.com/s/k7bj804cyiu474t/cen_patches_0.35_of.dat?dl=1" shape="ellipse"];
  "sha256:32358a4ea9b63e181f56e3991b5276ba79457dd272b47c91d8385c39b8489271" [label="copy{src=/cen_patches_0.35_of.dat, dest=/home/openface-build/lib/local/LandmarkDetector/model/patch_experts/cen_patches_0.35_of.dat}" shape="note"];
  "sha256:778d32152fc19fbac873261c2abdadd983426f8aa37fa9c7757e84a960d77d5f" [label="https://www.dropbox.com/s/ixt4vkbmxgab1iu/cen_patches_0.50_of.dat?dl=1" shape="ellipse"];
  "sha256:4639948999b03f6f083d4fc5536b07bcad87c498dca8d0d0b34cdeff42484dcb" [label="copy{src=/cen_patches_0.50_of.dat, dest=/home/openface-build/lib/local/LandmarkDetector/model/patch_experts/cen_patches_0.50_of.dat}" shape="note"];
  "sha256:353d6426ebf6a9a7b173a48809507b894832e08619bd177ac89dc352942d3aff" [label="https://www.dropbox.com/s/2t5t1sdpshzfhpj/cen_patches_1.00_of.dat?dl=1" shape="ellipse"];
  "sha256:c903c509d46ad52c262d134cba8022bd12e5ea89d5fe9b569dd551299a8b93a7" [label="copy{src=/cen_patches_1.00_of.dat, dest=/home/openface-build/lib/local/LandmarkDetector/model/patch_experts/cen_patches_1.00_of.dat}" shape="note"];
  "sha256:2a9bda319557046c2a96c2c906cec8c19d002f01f43fd4e58b2e36904f63ed3c" [label="/bin/sh -c mkdir ${BUILD_DIR}" shape="box"];
  "sha256:e2ef70d91b94d19feb250b67c6c265247686b46b7ba9a83d17ccf8b127e198cd" [label="https://github.com/opencv/opencv/archive/3.4.0.zip" shape="ellipse"];
  "sha256:661ae579a98a7edb6ff5c1e64aa012ce70d259354ed3b83705ad3cbb2fcb1d1b" [label="copy{src=/3.4.0.zip, dest=/home/build-dep}" shape="note"];
  "sha256:021cf6561b9eb1ceb04de91bd916bc7414b78bd922b4297814f5dad7410c768c" [label="/bin/sh -c apt-get update && apt-get install -qq -y     curl build-essential llvm clang-3.7 libc++-dev     libc++abi-dev cmake libopenblas-dev liblapack-dev git libgtk2.0-dev     pkg-config libavcodec-dev libavformat-dev libswscale-dev     python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev     libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev checkinstall     libboost-all-dev wget unzip &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:7514e0f2638701ac819f70258b3b47cfe2a74ee768a605066c491b01ac69e7d5" [label="/bin/sh -c cd ${BUILD_DIR} && unzip 3.4.0.zip &&     cd opencv-3.4.0 &&     mkdir -p build &&     cd build &&     cmake -D CMAKE_BUILD_TYPE=RELEASE     -D CMAKE_INSTALL_PREFIX=/usr/local     -D WITH_TBB=ON -D WITH_CUDA=OFF     -D BUILD_SHARED_LIBS=OFF .. &&     make -j4 &&     make install" shape="box"];
  "sha256:1183585808d34ccd96aff043c30b592a58d5732fd392a0bd1e1c314d64d8f2f0" [label="/bin/sh -c cd ${OPENFACE_DIR} && mkdir -p build && cd build &&     cmake -D CMAKE_BUILD_TYPE=RELEASE .. &&     make -j4" shape="box"];
  "sha256:9d775d7c8159d12c012f2b108f6a0dd653d69a89fcc886b8f671f09556dbe328" [label="/bin/sh -c ln /dev/null /dev/raw1394" shape="box"];
  "sha256:b498152f2c299fdd4b3a7903a302dee9e73d819e30d5ecb93fbde9c1855cf39e" [label="sha256:b498152f2c299fdd4b3a7903a302dee9e73d819e30d5ecb93fbde9c1855cf39e" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:cf0de093b1b9a94dc9a59a27111bf92194ec882a61bd8bb454f99833e129a79f" [label=""];
  "sha256:cf0de093b1b9a94dc9a59a27111bf92194ec882a61bd8bb454f99833e129a79f" -> "sha256:4fa27cfdc89a4708f6600e4e3acd7a6d2c0cafb0b2574bea3e1a0bb46d235b62" [label=""];
  "sha256:4fa27cfdc89a4708f6600e4e3acd7a6d2c0cafb0b2574bea3e1a0bb46d235b62" -> "sha256:31d08d74e9aede36e38b84b3e76ac4b3988e3a1bc30195f0e515c168b7b29c1e" [label=""];
  "sha256:bca409ad6e7877fefe3ec2356c3e211f5b3d62022b4dcf51f535d0c23fa9f719" -> "sha256:31d08d74e9aede36e38b84b3e76ac4b3988e3a1bc30195f0e515c168b7b29c1e" [label=""];
  "sha256:31d08d74e9aede36e38b84b3e76ac4b3988e3a1bc30195f0e515c168b7b29c1e" -> "sha256:ebdbf1aaa5f2e0ac0fc97609705ee772395b1bc733b19a3b38754fe2adacc2bd" [label=""];
  "sha256:bca409ad6e7877fefe3ec2356c3e211f5b3d62022b4dcf51f535d0c23fa9f719" -> "sha256:ebdbf1aaa5f2e0ac0fc97609705ee772395b1bc733b19a3b38754fe2adacc2bd" [label=""];
  "sha256:ebdbf1aaa5f2e0ac0fc97609705ee772395b1bc733b19a3b38754fe2adacc2bd" -> "sha256:01c47a47203b050cc75be5b354d15ed7a6cb40688bd16738bd67ca4950acc7bc" [label=""];
  "sha256:bca409ad6e7877fefe3ec2356c3e211f5b3d62022b4dcf51f535d0c23fa9f719" -> "sha256:01c47a47203b050cc75be5b354d15ed7a6cb40688bd16738bd67ca4950acc7bc" [label=""];
  "sha256:01c47a47203b050cc75be5b354d15ed7a6cb40688bd16738bd67ca4950acc7bc" -> "sha256:c8d67cc834beb67d0b8415bef0bcb83d3d7bd3dccecb03ead7e7b8b2ceb688d5" [label=""];
  "sha256:bca409ad6e7877fefe3ec2356c3e211f5b3d62022b4dcf51f535d0c23fa9f719" -> "sha256:c8d67cc834beb67d0b8415bef0bcb83d3d7bd3dccecb03ead7e7b8b2ceb688d5" [label=""];
  "sha256:c8d67cc834beb67d0b8415bef0bcb83d3d7bd3dccecb03ead7e7b8b2ceb688d5" -> "sha256:09753bee85397c61cc29adff6c2df69829c67b13a262ef5ca57dbb5c4561e329" [label=""];
  "sha256:037388de9728c5e72da2516e6afa3928c46ce195b114eabda4b81451571c4903" -> "sha256:09753bee85397c61cc29adff6c2df69829c67b13a262ef5ca57dbb5c4561e329" [label=""];
  "sha256:09753bee85397c61cc29adff6c2df69829c67b13a262ef5ca57dbb5c4561e329" -> "sha256:32358a4ea9b63e181f56e3991b5276ba79457dd272b47c91d8385c39b8489271" [label=""];
  "sha256:0b81832702a674bb9ebf8b7504dde7015a9c5eeee2759e1c0ec8152610605422" -> "sha256:32358a4ea9b63e181f56e3991b5276ba79457dd272b47c91d8385c39b8489271" [label=""];
  "sha256:32358a4ea9b63e181f56e3991b5276ba79457dd272b47c91d8385c39b8489271" -> "sha256:4639948999b03f6f083d4fc5536b07bcad87c498dca8d0d0b34cdeff42484dcb" [label=""];
  "sha256:778d32152fc19fbac873261c2abdadd983426f8aa37fa9c7757e84a960d77d5f" -> "sha256:4639948999b03f6f083d4fc5536b07bcad87c498dca8d0d0b34cdeff42484dcb" [label=""];
  "sha256:4639948999b03f6f083d4fc5536b07bcad87c498dca8d0d0b34cdeff42484dcb" -> "sha256:c903c509d46ad52c262d134cba8022bd12e5ea89d5fe9b569dd551299a8b93a7" [label=""];
  "sha256:353d6426ebf6a9a7b173a48809507b894832e08619bd177ac89dc352942d3aff" -> "sha256:c903c509d46ad52c262d134cba8022bd12e5ea89d5fe9b569dd551299a8b93a7" [label=""];
  "sha256:c903c509d46ad52c262d134cba8022bd12e5ea89d5fe9b569dd551299a8b93a7" -> "sha256:2a9bda319557046c2a96c2c906cec8c19d002f01f43fd4e58b2e36904f63ed3c" [label=""];
  "sha256:2a9bda319557046c2a96c2c906cec8c19d002f01f43fd4e58b2e36904f63ed3c" -> "sha256:661ae579a98a7edb6ff5c1e64aa012ce70d259354ed3b83705ad3cbb2fcb1d1b" [label=""];
  "sha256:e2ef70d91b94d19feb250b67c6c265247686b46b7ba9a83d17ccf8b127e198cd" -> "sha256:661ae579a98a7edb6ff5c1e64aa012ce70d259354ed3b83705ad3cbb2fcb1d1b" [label=""];
  "sha256:661ae579a98a7edb6ff5c1e64aa012ce70d259354ed3b83705ad3cbb2fcb1d1b" -> "sha256:021cf6561b9eb1ceb04de91bd916bc7414b78bd922b4297814f5dad7410c768c" [label=""];
  "sha256:021cf6561b9eb1ceb04de91bd916bc7414b78bd922b4297814f5dad7410c768c" -> "sha256:7514e0f2638701ac819f70258b3b47cfe2a74ee768a605066c491b01ac69e7d5" [label=""];
  "sha256:7514e0f2638701ac819f70258b3b47cfe2a74ee768a605066c491b01ac69e7d5" -> "sha256:1183585808d34ccd96aff043c30b592a58d5732fd392a0bd1e1c314d64d8f2f0" [label=""];
  "sha256:1183585808d34ccd96aff043c30b592a58d5732fd392a0bd1e1c314d64d8f2f0" -> "sha256:9d775d7c8159d12c012f2b108f6a0dd653d69a89fcc886b8f671f09556dbe328" [label=""];
  "sha256:9d775d7c8159d12c012f2b108f6a0dd653d69a89fcc886b8f671f09556dbe328" -> "sha256:b498152f2c299fdd4b3a7903a302dee9e73d819e30d5ecb93fbde9c1855cf39e" [label=""];
}

