[app/sources/350479230.Dockerfile]
digraph {
  "sha256:87b0fed4e3375033563caf55f78ad2d56cb390b4644bfa2496bb68390c450e7c" [label="docker-image://docker.io/library/fedora:22" shape="ellipse"];
  "sha256:21dc399a1a856559e8e3748f0e5621fdc42b979cbb955a3bb36708aea5d410e8" [label="/bin/sh -c dnf -y update && dnf clean all" shape="box"];
  "sha256:cbd6bb2f860188744bdd8f8aa1f5ade40092171d860bae9cbe3dc15be51b539b" [label="/bin/sh -c dnf install -y git tar patch gzip curl hostname pcre-devel && dnf clean all" shape="box"];
  "sha256:799f02db1879de49fd49db4fc5a792e5a97b188d6d3ac97db07540e4718dd153" [label="/bin/sh -c dnf install -y gcc gcc-c++ libgcc.i686 gcc-c++.i686 glibc-static pkgconfig && dnf clean all" shape="box"];
  "sha256:f2792d5c64df489d3ef781f2de95779e84a7ec99f14e0e9462a8ec49e48fc0ec" [label="/bin/sh -c dnf install -y glibc-devel glibc-static && dnf clean all" shape="box"];
  "sha256:a8731fffe4252a3040f59be512054d5c59f0b7d1e7c3747ff1f82da963ad9eb0" [label="/bin/sh -c dnf install -y glibc-devel.i686 glib2-static.i686 glibc.i686 && dnf clean all" shape="box"];
  "sha256:b3fc443dc7c05ee265f007e475c6322e99590ab69cdef232dbd6ac44edd35d56" [label="/bin/sh -c dnf install -y make vim strace tmux && dnf clean all" shape="box"];
  "sha256:4b6270fa6a807b0ae35b1bdea9288322a59bd3413aa2cd16b870e6c09a05fd07" [label="/bin/sh -c (curl -sSL https://golang.org/dl/go1.5.3.linux-amd64.tar.gz | tar -vxz -C /tmp) && \tmv /tmp/go $GOROOT_BOOTSTRAP" shape="box"];
  "sha256:f8b0e4b33980aff6f7dba4be6de1f07a7c255a3c29d53550cc3476bcf3a8e0da" [label="/bin/sh -c mkdir -p $GOROOT &&     curl -sSL \"https://go.googlesource.com/go/+archive/$GO_REV.tar.gz\" | tar -vxz -C $GOROOT" shape="box"];
  "sha256:11136341bfeac8398d65c6dcc2277a4877df02ec51a57019be08c7ae510319a8" [label="/bin/sh -c echo $GO_VERSION > $GOROOT/VERSION" shape="box"];
  "sha256:1113506773b45e36fc06cf87156f411cdfd47f3fd68cef74fc56fbe71ff4d06f" [label="/bin/sh -c cd $GOROOT/src && ./all.bash" shape="box"];
  "sha256:b9e7a21008f2938d0c79b7ea1fee90ca2e03912c5b46c1b694efeb4f4aef4df9" [label="/bin/sh -c dnf install -y java-1.8.0-openjdk-devel.x86_64" shape="box"];
  "sha256:61b1c8de1bc581f53580e29728529d0c2c39ed4e825a6741ab1318e32090f08e" [label="/bin/sh -c curl -L http://dl.google.com/android/android-sdk_r22-linux.tgz | tar xz -C /usr/local" shape="box"];
  "sha256:89cf6a0f22ed2f46653fdac9a3ee1273cb5c86da1f719ebd36eabb6e88582e0b" [label="/bin/sh -c echo y | /usr/local/android-sdk-linux/tools/android update sdk --no-ui --all --filter platform-tools,build-tools-21.1.2,android-22,extra-android-support" shape="box"];
  "sha256:52a3f3aede92d9efb9550aa989caa6bb21ab037a53faeb770e50b4358ffd7e2d" [label="/bin/sh -c go get -v golang.org/x/mobile/cmd/gomobile" shape="box"];
  "sha256:1f7fe297f0cdb51903d52754859781d7859358ad1f8e263633a88defb67a8de3" [label="/bin/sh -c gomobile init -v" shape="box"];
  "sha256:5bf322833eed2264b213933f021a9b0e180015783051a9451fac08b32667f2c9" [label="/bin/sh -c dnf install -y zip unzip && dnf clean all" shape="box"];
  "sha256:0e75a8dff27fd44ac621199035645b055370ee61301e8ab6d8fa4127014edc45" [label="/bin/sh -c mkdir -p $WORKDIR" shape="box"];
  "sha256:267a53f0bf4818ab21a8660135b31f727882d0db46f8f661300f53f060df14ed" [label="mkdir{path=/lantern}" shape="note"];
  "sha256:834b1affc2f6a1259838e592a9d01a302693f1dee7c0e60b7254a6ba23c0732f" [label="sha256:834b1affc2f6a1259838e592a9d01a302693f1dee7c0e60b7254a6ba23c0732f" shape="plaintext"];
  "sha256:87b0fed4e3375033563caf55f78ad2d56cb390b4644bfa2496bb68390c450e7c" -> "sha256:21dc399a1a856559e8e3748f0e5621fdc42b979cbb955a3bb36708aea5d410e8" [label=""];
  "sha256:21dc399a1a856559e8e3748f0e5621fdc42b979cbb955a3bb36708aea5d410e8" -> "sha256:cbd6bb2f860188744bdd8f8aa1f5ade40092171d860bae9cbe3dc15be51b539b" [label=""];
  "sha256:cbd6bb2f860188744bdd8f8aa1f5ade40092171d860bae9cbe3dc15be51b539b" -> "sha256:799f02db1879de49fd49db4fc5a792e5a97b188d6d3ac97db07540e4718dd153" [label=""];
  "sha256:799f02db1879de49fd49db4fc5a792e5a97b188d6d3ac97db07540e4718dd153" -> "sha256:f2792d5c64df489d3ef781f2de95779e84a7ec99f14e0e9462a8ec49e48fc0ec" [label=""];
  "sha256:f2792d5c64df489d3ef781f2de95779e84a7ec99f14e0e9462a8ec49e48fc0ec" -> "sha256:a8731fffe4252a3040f59be512054d5c59f0b7d1e7c3747ff1f82da963ad9eb0" [label=""];
  "sha256:a8731fffe4252a3040f59be512054d5c59f0b7d1e7c3747ff1f82da963ad9eb0" -> "sha256:b3fc443dc7c05ee265f007e475c6322e99590ab69cdef232dbd6ac44edd35d56" [label=""];
  "sha256:b3fc443dc7c05ee265f007e475c6322e99590ab69cdef232dbd6ac44edd35d56" -> "sha256:4b6270fa6a807b0ae35b1bdea9288322a59bd3413aa2cd16b870e6c09a05fd07" [label=""];
  "sha256:4b6270fa6a807b0ae35b1bdea9288322a59bd3413aa2cd16b870e6c09a05fd07" -> "sha256:f8b0e4b33980aff6f7dba4be6de1f07a7c255a3c29d53550cc3476bcf3a8e0da" [label=""];
  "sha256:f8b0e4b33980aff6f7dba4be6de1f07a7c255a3c29d53550cc3476bcf3a8e0da" -> "sha256:11136341bfeac8398d65c6dcc2277a4877df02ec51a57019be08c7ae510319a8" [label=""];
  "sha256:11136341bfeac8398d65c6dcc2277a4877df02ec51a57019be08c7ae510319a8" -> "sha256:1113506773b45e36fc06cf87156f411cdfd47f3fd68cef74fc56fbe71ff4d06f" [label=""];
  "sha256:1113506773b45e36fc06cf87156f411cdfd47f3fd68cef74fc56fbe71ff4d06f" -> "sha256:b9e7a21008f2938d0c79b7ea1fee90ca2e03912c5b46c1b694efeb4f4aef4df9" [label=""];
  "sha256:b9e7a21008f2938d0c79b7ea1fee90ca2e03912c5b46c1b694efeb4f4aef4df9" -> "sha256:61b1c8de1bc581f53580e29728529d0c2c39ed4e825a6741ab1318e32090f08e" [label=""];
  "sha256:61b1c8de1bc581f53580e29728529d0c2c39ed4e825a6741ab1318e32090f08e" -> "sha256:89cf6a0f22ed2f46653fdac9a3ee1273cb5c86da1f719ebd36eabb6e88582e0b" [label=""];
  "sha256:89cf6a0f22ed2f46653fdac9a3ee1273cb5c86da1f719ebd36eabb6e88582e0b" -> "sha256:52a3f3aede92d9efb9550aa989caa6bb21ab037a53faeb770e50b4358ffd7e2d" [label=""];
  "sha256:52a3f3aede92d9efb9550aa989caa6bb21ab037a53faeb770e50b4358ffd7e2d" -> "sha256:1f7fe297f0cdb51903d52754859781d7859358ad1f8e263633a88defb67a8de3" [label=""];
  "sha256:1f7fe297f0cdb51903d52754859781d7859358ad1f8e263633a88defb67a8de3" -> "sha256:5bf322833eed2264b213933f021a9b0e180015783051a9451fac08b32667f2c9" [label=""];
  "sha256:5bf322833eed2264b213933f021a9b0e180015783051a9451fac08b32667f2c9" -> "sha256:0e75a8dff27fd44ac621199035645b055370ee61301e8ab6d8fa4127014edc45" [label=""];
  "sha256:0e75a8dff27fd44ac621199035645b055370ee61301e8ab6d8fa4127014edc45" -> "sha256:267a53f0bf4818ab21a8660135b31f727882d0db46f8f661300f53f060df14ed" [label=""];
  "sha256:267a53f0bf4818ab21a8660135b31f727882d0db46f8f661300f53f060df14ed" -> "sha256:834b1affc2f6a1259838e592a9d01a302693f1dee7c0e60b7254a6ba23c0732f" [label=""];
}

