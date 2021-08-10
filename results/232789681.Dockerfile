[app/sources/232789681.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:aad3cc681167ff9fffb3c394df1aea7fc5a9b91853a97b7e7f43be6c7ea8ab86" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends   ca-certificates   curl   gcc   libc-dev   python   unzip   file   make" shape="box"];
  "sha256:acbd7bee35885f90a1bec5fe336dffbedd85323899551aa074695f6d5ba9d81c" [label="mkdir{path=/android}" shape="note"];
  "sha256:5fa77028312e5f1b5a6eadbebbafc37188c23db03dce07e748b6ae81e5f2edf1" [label="local://context" shape="ellipse"];
  "sha256:a2ef708ff5b254abb6a5efb4792e2ebc82cb5fcebeff3f0908f7c23b6532585d" [label="copy{src=/android-install-ndk.sh, dest=/android/}" shape="note"];
  "sha256:c7514bb765cf72e6d51378b6c2662c51d9af3103ca0c81b1bdac1154c5dcef45" [label="/bin/sh -c sh /android/android-install-ndk.sh $ANDROID_ARCH" shape="box"];
  "sha256:31bcfdf450e86eb3d860ccd4c0a2fc4f79dc64b9d0b8f5764b47930e2a0fc06b" [label="copy{src=/android-sysimage.sh, dest=/android/}" shape="note"];
  "sha256:99f84a38c87b5d7efad558736342d27f420dc0d3736f45f62ec8c448a92edfec" [label="/bin/sh -c bash /android/android-sysimage.sh x86_64 x86_64-24_r07.zip" shape="box"];
  "sha256:388d65e3050f7c27dbb30c5b5ec674a18993b01bd7ff2d1f2a627bcbf652239d" [label="sha256:388d65e3050f7c27dbb30c5b5ec674a18993b01bd7ff2d1f2a627bcbf652239d" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:aad3cc681167ff9fffb3c394df1aea7fc5a9b91853a97b7e7f43be6c7ea8ab86" [label=""];
  "sha256:aad3cc681167ff9fffb3c394df1aea7fc5a9b91853a97b7e7f43be6c7ea8ab86" -> "sha256:acbd7bee35885f90a1bec5fe336dffbedd85323899551aa074695f6d5ba9d81c" [label=""];
  "sha256:acbd7bee35885f90a1bec5fe336dffbedd85323899551aa074695f6d5ba9d81c" -> "sha256:a2ef708ff5b254abb6a5efb4792e2ebc82cb5fcebeff3f0908f7c23b6532585d" [label=""];
  "sha256:5fa77028312e5f1b5a6eadbebbafc37188c23db03dce07e748b6ae81e5f2edf1" -> "sha256:a2ef708ff5b254abb6a5efb4792e2ebc82cb5fcebeff3f0908f7c23b6532585d" [label=""];
  "sha256:a2ef708ff5b254abb6a5efb4792e2ebc82cb5fcebeff3f0908f7c23b6532585d" -> "sha256:c7514bb765cf72e6d51378b6c2662c51d9af3103ca0c81b1bdac1154c5dcef45" [label=""];
  "sha256:c7514bb765cf72e6d51378b6c2662c51d9af3103ca0c81b1bdac1154c5dcef45" -> "sha256:31bcfdf450e86eb3d860ccd4c0a2fc4f79dc64b9d0b8f5764b47930e2a0fc06b" [label=""];
  "sha256:5fa77028312e5f1b5a6eadbebbafc37188c23db03dce07e748b6ae81e5f2edf1" -> "sha256:31bcfdf450e86eb3d860ccd4c0a2fc4f79dc64b9d0b8f5764b47930e2a0fc06b" [label=""];
  "sha256:31bcfdf450e86eb3d860ccd4c0a2fc4f79dc64b9d0b8f5764b47930e2a0fc06b" -> "sha256:99f84a38c87b5d7efad558736342d27f420dc0d3736f45f62ec8c448a92edfec" [label=""];
  "sha256:99f84a38c87b5d7efad558736342d27f420dc0d3736f45f62ec8c448a92edfec" -> "sha256:388d65e3050f7c27dbb30c5b5ec674a18993b01bd7ff2d1f2a627bcbf652239d" [label=""];
}

