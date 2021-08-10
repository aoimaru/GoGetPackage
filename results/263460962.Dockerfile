[app/sources/263460962.Dockerfile]
digraph {
  "sha256:a2ee2b563f72d08a80b1057cce0fd71ae31a2514b78648a1c446c823bc6dc736" [label="docker-image://docker.io/library/debian:stable" shape="ellipse"];
  "sha256:fd9bc93e1334bc5d8075d826d7dbb7940069dcc53153ee3a0a3c4484a5c3d6e1" [label="/bin/sh -c dpkg --add-architecture i386" shape="box"];
  "sha256:471917a49a99fba7b4ae3dd5395de189e1cf3ea1cfe633fffa701dd9fa7e7e62" [label="/bin/sh -c apt-get update -y -qq" shape="box"];
  "sha256:63af828dc09497a54d5d41e0b7c9d09fc974ee1e663e234033c911cf885b82da" [label="/bin/sh -c apt-get install -y -qq --no-install-recommends     build-essential cmake libc6:i386 gcc-multilib     bc ca-certificates file locales rsync     cvs bzr git mercurial subversion wget     cpio unzip     libncurses5-dev     python-nose2 python-pexpect qemu-system-arm qemu-system-x86" shape="box"];
  "sha256:442a7989d2f4aad69c3307ef01dd091e487b26bc2afa23ea5890c27f51f46e0c" [label="/bin/sh -c apt-get -q -y autoremove" shape="box"];
  "sha256:2dcc34b30c07fbc89f577cea81808a12823aa6920e630f884af0a152ee56f040" [label="/bin/sh -c apt-get -q -y clean" shape="box"];
  "sha256:40fce62c7bddfcd783b88492e55f133ec563dc9a3e3cb60b82a041cca88bca29" [label="/bin/sh -c sed -i 's/# \\(en_US.UTF-8\\)/\\1/' /etc/locale.gen" shape="box"];
  "sha256:f97ceb2fd98e4fbb61dc877b904d83df0d97e471aec975f3075cdcf1af096f36" [label="/bin/sh -c /usr/sbin/locale-gen" shape="box"];
  "sha256:eb5a122495eabae302643d47efb1ffd45f7210a41f787859a7dbf7bebc3ab424" [label="sha256:eb5a122495eabae302643d47efb1ffd45f7210a41f787859a7dbf7bebc3ab424" shape="plaintext"];
  "sha256:a2ee2b563f72d08a80b1057cce0fd71ae31a2514b78648a1c446c823bc6dc736" -> "sha256:fd9bc93e1334bc5d8075d826d7dbb7940069dcc53153ee3a0a3c4484a5c3d6e1" [label=""];
  "sha256:fd9bc93e1334bc5d8075d826d7dbb7940069dcc53153ee3a0a3c4484a5c3d6e1" -> "sha256:471917a49a99fba7b4ae3dd5395de189e1cf3ea1cfe633fffa701dd9fa7e7e62" [label=""];
  "sha256:471917a49a99fba7b4ae3dd5395de189e1cf3ea1cfe633fffa701dd9fa7e7e62" -> "sha256:63af828dc09497a54d5d41e0b7c9d09fc974ee1e663e234033c911cf885b82da" [label=""];
  "sha256:63af828dc09497a54d5d41e0b7c9d09fc974ee1e663e234033c911cf885b82da" -> "sha256:442a7989d2f4aad69c3307ef01dd091e487b26bc2afa23ea5890c27f51f46e0c" [label=""];
  "sha256:442a7989d2f4aad69c3307ef01dd091e487b26bc2afa23ea5890c27f51f46e0c" -> "sha256:2dcc34b30c07fbc89f577cea81808a12823aa6920e630f884af0a152ee56f040" [label=""];
  "sha256:2dcc34b30c07fbc89f577cea81808a12823aa6920e630f884af0a152ee56f040" -> "sha256:40fce62c7bddfcd783b88492e55f133ec563dc9a3e3cb60b82a041cca88bca29" [label=""];
  "sha256:40fce62c7bddfcd783b88492e55f133ec563dc9a3e3cb60b82a041cca88bca29" -> "sha256:f97ceb2fd98e4fbb61dc877b904d83df0d97e471aec975f3075cdcf1af096f36" [label=""];
  "sha256:f97ceb2fd98e4fbb61dc877b904d83df0d97e471aec975f3075cdcf1af096f36" -> "sha256:eb5a122495eabae302643d47efb1ffd45f7210a41f787859a7dbf7bebc3ab424" [label=""];
}

