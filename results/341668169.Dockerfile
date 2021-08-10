[app/sources/341668169.Dockerfile]
digraph {
  "sha256:7565af90a228347373b59a8371c92175a44c9a2b21695228bfd73468d5568dfe" [label="docker-image://docker.io/dockcross/base:latest" shape="ellipse"];
  "sha256:c61c679d42ab97c7b9232172ea20d898fae85dac57da5e95c337658bcbfcd29c" [label="/bin/sh -c apt-get update && apt-get install -y   qemu-user   qemu-user-static   unzip" shape="box"];
  "sha256:91b955e9c35e3786de5757df7176c260a6da691dccd870c9cf8dd7a13fc4c295" [label="/bin/sh -c mkdir -p /build &&     cd /build &&     curl -O https://dl.google.com/android/repository/android-ndk-r${ANDROID_NDK_REVISION}-linux-x86_64.zip &&     unzip ./android-ndk-r${ANDROID_NDK_REVISION}-linux-x86_64.zip &&     cd android-ndk-r${ANDROID_NDK_REVISION} &&     ./build/tools/make_standalone_toolchain.py       --stl=libc++       --arch arm64       --api 21       --install-dir=${CROSS_ROOT} &&     cd / &&     rm -rf /build &&     find ${CROSS_ROOT} -exec chmod a+r '{}' \\; &&     find ${CROSS_ROOT} -executable -exec chmod a+x '{}' \\;" shape="box"];
  "sha256:e2db9e8ab8fbc9d062156dc278ecd5fc0df7ac3c26357e72d7a92c54483c4051" [label="/bin/sh -c git clone https://github.com/xianyi/OpenBLAS.git &&     cd OpenBLAS &&     make -j$(nproc) TARGET=ARMV8 ARM_SOFTFP_ABI=1 HOSTCC=gcc NOFORTRAN=1 libs" shape="box"];
  "sha256:440d59c8ac9b887c62fbdea49c0bf67c6257306f0f7e7842749e7b9de657cf8c" [label="mkdir{path=/work}" shape="note"];
  "sha256:62fa2cb0b3a67e720b8f99c7f1cfd3e748fc1206be910db6520089f98dd0a796" [label="local://context" shape="ellipse"];
  "sha256:45fee0662fb954284749615fd9b57c73772290916fc0556aa31bcd3ae35c34e2" [label="copy{src=/mxnet, dest=/work/mxnet}" shape="note"];
  "sha256:9f442be629d772f4794aefea5de88f42c4a388714fbe9089de2b4f9aeb63058b" [label="copy{src=/arm.crosscompile.android.mk, dest=/work/mxnet/make/config.mk}" shape="note"];
  "sha256:c4460f66114e66a3bd04c8ff906cc094fd7db252b48cc50bdc350074a7bb33e6" [label="/bin/sh -c cd mxnet &&     make -j$(nproc) $BUILD_OPTS" shape="box"];
  "sha256:5ddfe36babc3050404e990a8b54f9b97e20ae2f88657a1c73af7980d2f9646c8" [label="mkdir{path=/work/build}" shape="note"];
  "sha256:d9a27cfdf8c19f682bf970b39bc4ae3200d1847833e0e72eb8f74841f6278e89" [label="/bin/sh -c cp /work/mxnet/lib/* ." shape="box"];
  "sha256:cf0e5c9dc385b26ec502b6394426f66515ce851ee0f6341af498cd96ec0e5a15" [label="sha256:cf0e5c9dc385b26ec502b6394426f66515ce851ee0f6341af498cd96ec0e5a15" shape="plaintext"];
  "sha256:7565af90a228347373b59a8371c92175a44c9a2b21695228bfd73468d5568dfe" -> "sha256:c61c679d42ab97c7b9232172ea20d898fae85dac57da5e95c337658bcbfcd29c" [label=""];
  "sha256:c61c679d42ab97c7b9232172ea20d898fae85dac57da5e95c337658bcbfcd29c" -> "sha256:91b955e9c35e3786de5757df7176c260a6da691dccd870c9cf8dd7a13fc4c295" [label=""];
  "sha256:91b955e9c35e3786de5757df7176c260a6da691dccd870c9cf8dd7a13fc4c295" -> "sha256:e2db9e8ab8fbc9d062156dc278ecd5fc0df7ac3c26357e72d7a92c54483c4051" [label=""];
  "sha256:e2db9e8ab8fbc9d062156dc278ecd5fc0df7ac3c26357e72d7a92c54483c4051" -> "sha256:440d59c8ac9b887c62fbdea49c0bf67c6257306f0f7e7842749e7b9de657cf8c" [label=""];
  "sha256:440d59c8ac9b887c62fbdea49c0bf67c6257306f0f7e7842749e7b9de657cf8c" -> "sha256:45fee0662fb954284749615fd9b57c73772290916fc0556aa31bcd3ae35c34e2" [label=""];
  "sha256:62fa2cb0b3a67e720b8f99c7f1cfd3e748fc1206be910db6520089f98dd0a796" -> "sha256:45fee0662fb954284749615fd9b57c73772290916fc0556aa31bcd3ae35c34e2" [label=""];
  "sha256:45fee0662fb954284749615fd9b57c73772290916fc0556aa31bcd3ae35c34e2" -> "sha256:9f442be629d772f4794aefea5de88f42c4a388714fbe9089de2b4f9aeb63058b" [label=""];
  "sha256:62fa2cb0b3a67e720b8f99c7f1cfd3e748fc1206be910db6520089f98dd0a796" -> "sha256:9f442be629d772f4794aefea5de88f42c4a388714fbe9089de2b4f9aeb63058b" [label=""];
  "sha256:9f442be629d772f4794aefea5de88f42c4a388714fbe9089de2b4f9aeb63058b" -> "sha256:c4460f66114e66a3bd04c8ff906cc094fd7db252b48cc50bdc350074a7bb33e6" [label=""];
  "sha256:c4460f66114e66a3bd04c8ff906cc094fd7db252b48cc50bdc350074a7bb33e6" -> "sha256:5ddfe36babc3050404e990a8b54f9b97e20ae2f88657a1c73af7980d2f9646c8" [label=""];
  "sha256:5ddfe36babc3050404e990a8b54f9b97e20ae2f88657a1c73af7980d2f9646c8" -> "sha256:d9a27cfdf8c19f682bf970b39bc4ae3200d1847833e0e72eb8f74841f6278e89" [label=""];
  "sha256:d9a27cfdf8c19f682bf970b39bc4ae3200d1847833e0e72eb8f74841f6278e89" -> "sha256:cf0e5c9dc385b26ec502b6394426f66515ce851ee0f6341af498cd96ec0e5a15" [label=""];
}

