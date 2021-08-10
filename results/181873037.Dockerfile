[app/sources/181873037.Dockerfile]
digraph {
  "sha256:339fcea1d5a96ca170af0e3a4cbdc0d2d62f911b8a1c92caf1e91220a1393f1b" [label="docker-image://docker.io/library/oraclelinux:6" shape="ellipse"];
  "sha256:77613031973bfcba04de4718afaef137f248135a39a9309bc5eab6213125472f" [label="/bin/sh -c yum groupinstall -y \"Development Tools\"" shape="box"];
  "sha256:46dd2d293b2a4b2832a62b824176e00fbe7a8b3c14b19445528f82208a6086d0" [label="/bin/sh -c yum install -y btrfs-progs-devel device-mapper-devel glibc-static  libselinux-devel libtool-ltdl-devel pkgconfig selinux-policy selinux-policy-devel sqlite-devel  tar git" shape="box"];
  "sha256:ecbb0f7df8aee152ea476bce5925701ffe2649af412f99e82e2999c28762b65f" [label="/bin/sh -c yum install -y yum-utils && curl -o /etc/yum.repos.d/public-yum-ol6.repo http://yum.oracle.com/public-yum-ol6.repo && yum-config-manager -q --enable ol6_UEKR4" shape="box"];
  "sha256:e640a1a2e4a15e457de34b8565eb3f870bb890de1d1d49d9cb7038a4131725dd" [label="/bin/sh -c yum install -y kernel-uek-devel-4.1.12-32.el6uek" shape="box"];
  "sha256:878215307dd4cfb20c8ac62fdb2fe6b032e9a6614c01d9812436c106bcbb554e" [label="/bin/sh -c curl -fSL \"https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:3d2896f9c951849137c1e639ec6663819ad4be3ffad670d05d4a21593bebc798" [label="sha256:3d2896f9c951849137c1e639ec6663819ad4be3ffad670d05d4a21593bebc798" shape="plaintext"];
  "sha256:339fcea1d5a96ca170af0e3a4cbdc0d2d62f911b8a1c92caf1e91220a1393f1b" -> "sha256:77613031973bfcba04de4718afaef137f248135a39a9309bc5eab6213125472f" [label=""];
  "sha256:77613031973bfcba04de4718afaef137f248135a39a9309bc5eab6213125472f" -> "sha256:46dd2d293b2a4b2832a62b824176e00fbe7a8b3c14b19445528f82208a6086d0" [label=""];
  "sha256:46dd2d293b2a4b2832a62b824176e00fbe7a8b3c14b19445528f82208a6086d0" -> "sha256:ecbb0f7df8aee152ea476bce5925701ffe2649af412f99e82e2999c28762b65f" [label=""];
  "sha256:ecbb0f7df8aee152ea476bce5925701ffe2649af412f99e82e2999c28762b65f" -> "sha256:e640a1a2e4a15e457de34b8565eb3f870bb890de1d1d49d9cb7038a4131725dd" [label=""];
  "sha256:e640a1a2e4a15e457de34b8565eb3f870bb890de1d1d49d9cb7038a4131725dd" -> "sha256:878215307dd4cfb20c8ac62fdb2fe6b032e9a6614c01d9812436c106bcbb554e" [label=""];
  "sha256:878215307dd4cfb20c8ac62fdb2fe6b032e9a6614c01d9812436c106bcbb554e" -> "sha256:3d2896f9c951849137c1e639ec6663819ad4be3ffad670d05d4a21593bebc798" [label=""];
}

