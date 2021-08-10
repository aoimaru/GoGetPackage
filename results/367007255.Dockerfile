[app/sources/367007255.Dockerfile]
digraph {
  "sha256:afc3d86fc4da381d68e365add1d296cd92c67913bae27f46405b3dc9f651c5b9" [label="docker-image://docker.io/circleci/golang:1.12@sha256:ae191834590b2cdee6ca9bb6985f02e05b3f9b326536f83494f788889481b408" shape="ellipse"];
  "sha256:52db8e9c565d2c873778e8c461aa8f02c601548e657e65445896cf0f24e11869" [label="/bin/sh -c sudo apt-get update &&                              sudo apt-get install -y --no-install-recommends         `# Linux dependencies`                              git                                                 bc                                                  bison                                               flex                                                gcc-arm-linux-gnueabi                               make                                                `# QEMU dependencies`                               libglib2.0-dev                                      libfdt-dev                                          libpixman-1-dev                                     zlib1g-dev                                          `# Linux kernel build deps`                         libelf-dev &&                                   sudo rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:dc3398599c4da20a48ab2a79eea58c5c91af62ae3677aaef69024e87e8cc9f0f" [label="mkdir{path=/home/circleci}" shape="note"];
  "sha256:bc01586736c17a63a3b16138f8d99daf7e79a17f70f3936bfb15152028e2322a" [label="local://context" shape="ellipse"];
  "sha256:d635729495085ece54d0dadef32145706057eb1fa510d10327430fd0cd12ded7" [label="copy{src=/config_linux4.20_arm.txt, dest=/home/circleci/.config}" shape="note"];
  "sha256:3f5066047fdac624154420a5e0d89c9d09077bf1569aa64b323eb82dcb559f64" [label="/bin/sh -c set -eux;                                                                 git clone --depth=1 --branch=v4.20 https://github.com/torvalds/linux;     sudo chmod 0444 .config;                                                  mv .config linux/;                                                        cd linux;                                                                 export ARCH=arm;                                                          export CROSS_COMPILE=/usr/bin/arm-linux-gnueabi-;                         make -j$(($(nproc) * 2 + 1));                                             cd ~;                                                                     cp linux/arch/arm/boot/zImage zImage;                                     rm -rf linux/" shape="box"];
  "sha256:766119044aa491c78542f4d62f28f04f068cba16cb7f8a07e432deeba6d5cb74" [label="/bin/sh -c set -eux;                                                              git clone --depth=1 --branch=v2.12.0 https://github.com/qemu/qemu;     cd qemu;                                                               mkdir build;                                                           cd build;                                                              ../configure                                                               --target-list=arm-softmmu                                              --disable-docs                                                         --disable-sdl                                                          --disable-kvm;                                                     make -j$(($(nproc) * 2 + 1));                                          cd ~;                                                                  cp -rL qemu/build/pc-bios/ ~/pc-bios;                                  cp qemu/build/arm-softmmu/qemu-system-arm .;                           rm -rf qemu/" shape="box"];
  "sha256:380ec3f01adde7c97ab4d6961a5329fc94da9d3daf6b00ab71714b54e683cb95" [label="sha256:380ec3f01adde7c97ab4d6961a5329fc94da9d3daf6b00ab71714b54e683cb95" shape="plaintext"];
  "sha256:afc3d86fc4da381d68e365add1d296cd92c67913bae27f46405b3dc9f651c5b9" -> "sha256:52db8e9c565d2c873778e8c461aa8f02c601548e657e65445896cf0f24e11869" [label=""];
  "sha256:52db8e9c565d2c873778e8c461aa8f02c601548e657e65445896cf0f24e11869" -> "sha256:dc3398599c4da20a48ab2a79eea58c5c91af62ae3677aaef69024e87e8cc9f0f" [label=""];
  "sha256:dc3398599c4da20a48ab2a79eea58c5c91af62ae3677aaef69024e87e8cc9f0f" -> "sha256:d635729495085ece54d0dadef32145706057eb1fa510d10327430fd0cd12ded7" [label=""];
  "sha256:bc01586736c17a63a3b16138f8d99daf7e79a17f70f3936bfb15152028e2322a" -> "sha256:d635729495085ece54d0dadef32145706057eb1fa510d10327430fd0cd12ded7" [label=""];
  "sha256:d635729495085ece54d0dadef32145706057eb1fa510d10327430fd0cd12ded7" -> "sha256:3f5066047fdac624154420a5e0d89c9d09077bf1569aa64b323eb82dcb559f64" [label=""];
  "sha256:3f5066047fdac624154420a5e0d89c9d09077bf1569aa64b323eb82dcb559f64" -> "sha256:766119044aa491c78542f4d62f28f04f068cba16cb7f8a07e432deeba6d5cb74" [label=""];
  "sha256:766119044aa491c78542f4d62f28f04f068cba16cb7f8a07e432deeba6d5cb74" -> "sha256:380ec3f01adde7c97ab4d6961a5329fc94da9d3daf6b00ab71714b54e683cb95" [label=""];
}
