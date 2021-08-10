[app/sources/314440438.Dockerfile]
digraph {
  "sha256:18d330840f93deedee4764ca77f617cd1acb1206993774150a007dae2d4480e3" [label="local://context" shape="ellipse"];
  "sha256:7565af90a228347373b59a8371c92175a44c9a2b21695228bfd73468d5568dfe" [label="docker-image://docker.io/dockcross/base:latest" shape="ellipse"];
  "sha256:c61c679d42ab97c7b9232172ea20d898fae85dac57da5e95c337658bcbfcd29c" [label="/bin/sh -c apt-get update && apt-get install -y   qemu-user   qemu-user-static   unzip" shape="box"];
  "sha256:1761cf910c54206b84f15ccecb5e38a642e8f140eb2c66ef458f1e27daf80cfa" [label="/bin/sh -c mkdir -p /build &&     cd /build &&     curl -O https://dl.google.com/android/repository/android-ndk-r${ANDROID_NDK_REVISION}-linux-x86_64.zip &&     unzip ./android-ndk-r${ANDROID_NDK_REVISION}-linux-x86_64.zip &&     cd android-ndk-r${ANDROID_NDK_REVISION} &&     ./build/tools/make_standalone_toolchain.py       --stl=libc++       --arch arm       --api 16       --install-dir=${CROSS_ROOT} &&     cd / &&     rm -rf /build &&     find ${CROSS_ROOT} -exec chmod a+r '{}' \\; &&     find ${CROSS_ROOT} -executable -exec chmod a+x '{}' \\;" shape="box"];
  "sha256:80a8696f020dbe1a646e22d662b107dbd115f6e6d0d0dfbe617fecd4118acc85" [label="/bin/sh -c git clone https://github.com/xianyi/OpenBLAS.git &&     cd OpenBLAS &&     make -j$(nproc) TARGET=ARMV7 ARM_SOFTFP_ABI=1 HOSTCC=gcc NOFORTRAN=1 libs" shape="box"];
  "sha256:21503dfb667beff324c6d0e79b3055a86bf9482ab175acd3c7934c17b0abca44" [label="mkdir{path=/work}" shape="note"];
  "sha256:37bcb1819a735bb77cf96d3e073fa7edcca4b79c2f4a509adda770ccff0331e0" [label="copy{src=/mxnet, dest=/work/mxnet}" shape="note"];
  "sha256:e4e18e6dcb3a76a9b8f1716d97976c79e5aac80ea55a746698c8b7bb8ee68431" [label="copy{src=/arm.crosscompile.android.mk, dest=/work/mxnet/make/config.mk}" shape="note"];
  "sha256:b22f9490f836c21fab7ca486f80bcbdbb7c73b0b3cd055ae52f8a262677f4f20" [label="/bin/sh -c cd mxnet &&     make -j$(nproc) $BUILD_OPTS" shape="box"];
  "sha256:f04f65913893798d2cf8caad32dee3822c93d3b1786fbcc483d9d161350387d8" [label="mkdir{path=/work/build}" shape="note"];
  "sha256:5150e62b7d7081fccc541c57dabea8aca1cd267049b363776b3923108ae4f8f3" [label="/bin/sh -c cp /work/mxnet/lib/* ." shape="box"];
  "sha256:750a1ca111227d718f3de967c4dbdcbf7078b259a948289a47e12e0c0f1e8238" [label="sha256:750a1ca111227d718f3de967c4dbdcbf7078b259a948289a47e12e0c0f1e8238" shape="plaintext"];
  "sha256:7565af90a228347373b59a8371c92175a44c9a2b21695228bfd73468d5568dfe" -> "sha256:c61c679d42ab97c7b9232172ea20d898fae85dac57da5e95c337658bcbfcd29c" [label=""];
  "sha256:c61c679d42ab97c7b9232172ea20d898fae85dac57da5e95c337658bcbfcd29c" -> "sha256:1761cf910c54206b84f15ccecb5e38a642e8f140eb2c66ef458f1e27daf80cfa" [label=""];
  "sha256:1761cf910c54206b84f15ccecb5e38a642e8f140eb2c66ef458f1e27daf80cfa" -> "sha256:80a8696f020dbe1a646e22d662b107dbd115f6e6d0d0dfbe617fecd4118acc85" [label=""];
  "sha256:80a8696f020dbe1a646e22d662b107dbd115f6e6d0d0dfbe617fecd4118acc85" -> "sha256:21503dfb667beff324c6d0e79b3055a86bf9482ab175acd3c7934c17b0abca44" [label=""];
  "sha256:21503dfb667beff324c6d0e79b3055a86bf9482ab175acd3c7934c17b0abca44" -> "sha256:37bcb1819a735bb77cf96d3e073fa7edcca4b79c2f4a509adda770ccff0331e0" [label=""];
  "sha256:18d330840f93deedee4764ca77f617cd1acb1206993774150a007dae2d4480e3" -> "sha256:37bcb1819a735bb77cf96d3e073fa7edcca4b79c2f4a509adda770ccff0331e0" [label=""];
  "sha256:37bcb1819a735bb77cf96d3e073fa7edcca4b79c2f4a509adda770ccff0331e0" -> "sha256:e4e18e6dcb3a76a9b8f1716d97976c79e5aac80ea55a746698c8b7bb8ee68431" [label=""];
  "sha256:18d330840f93deedee4764ca77f617cd1acb1206993774150a007dae2d4480e3" -> "sha256:e4e18e6dcb3a76a9b8f1716d97976c79e5aac80ea55a746698c8b7bb8ee68431" [label=""];
  "sha256:e4e18e6dcb3a76a9b8f1716d97976c79e5aac80ea55a746698c8b7bb8ee68431" -> "sha256:b22f9490f836c21fab7ca486f80bcbdbb7c73b0b3cd055ae52f8a262677f4f20" [label=""];
  "sha256:b22f9490f836c21fab7ca486f80bcbdbb7c73b0b3cd055ae52f8a262677f4f20" -> "sha256:f04f65913893798d2cf8caad32dee3822c93d3b1786fbcc483d9d161350387d8" [label=""];
  "sha256:f04f65913893798d2cf8caad32dee3822c93d3b1786fbcc483d9d161350387d8" -> "sha256:5150e62b7d7081fccc541c57dabea8aca1cd267049b363776b3923108ae4f8f3" [label=""];
  "sha256:5150e62b7d7081fccc541c57dabea8aca1cd267049b363776b3923108ae4f8f3" -> "sha256:750a1ca111227d718f3de967c4dbdcbf7078b259a948289a47e12e0c0f1e8238" [label=""];
}

