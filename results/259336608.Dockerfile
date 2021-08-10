[app/sources/259336608.Dockerfile]
digraph {
  "sha256:339fcea1d5a96ca170af0e3a4cbdc0d2d62f911b8a1c92caf1e91220a1393f1b" [label="docker-image://docker.io/library/oraclelinux:6" shape="ellipse"];
  "sha256:630184c0425f97ae36aaabde0cd81c8ead3fe0258838e72160d4dc8ebbda8db6" [label="/bin/sh -c yum install -y yum-utils && curl -o /etc/yum.repos.d/public-yum-ol6.repo http://yum.oracle.com/public-yum-ol6.repo && yum-config-manager -q --enable ol6_UEKR4" shape="box"];
  "sha256:3b103622d8be140bb49c7e197a26c177fb190a8096e7b7644ed84c0c730bf69e" [label="/bin/sh -c yum install -y kernel-uek-devel-4.1.12-32.el6uek" shape="box"];
  "sha256:0bdca5deb0d783217a65a75a8d0b1701709a903eaa9e897f0963d2493528565d" [label="/bin/sh -c yum groupinstall -y \"Development Tools\"" shape="box"];
  "sha256:accc178b530cb43c47e90f373fd9ff84ebedc96f9ecc08a0ebfda52569bcaa3a" [label="/bin/sh -c yum install -y btrfs-progs-devel device-mapper-devel glibc-static  libselinux-devel libtool-ltdl-devel pkgconfig selinux-policy selinux-policy-devel  tar git cmake vim-common" shape="box"];
  "sha256:d5de6ddf304f3530c67300c4c5516bfa9c7cdda54e326e7c928c143c83efd737" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:0d20ac011d243b9a8925eae722b8c43ff25f3617bd3b257a5799fe7fe6475604" [label="sha256:0d20ac011d243b9a8925eae722b8c43ff25f3617bd3b257a5799fe7fe6475604" shape="plaintext"];
  "sha256:339fcea1d5a96ca170af0e3a4cbdc0d2d62f911b8a1c92caf1e91220a1393f1b" -> "sha256:630184c0425f97ae36aaabde0cd81c8ead3fe0258838e72160d4dc8ebbda8db6" [label=""];
  "sha256:630184c0425f97ae36aaabde0cd81c8ead3fe0258838e72160d4dc8ebbda8db6" -> "sha256:3b103622d8be140bb49c7e197a26c177fb190a8096e7b7644ed84c0c730bf69e" [label=""];
  "sha256:3b103622d8be140bb49c7e197a26c177fb190a8096e7b7644ed84c0c730bf69e" -> "sha256:0bdca5deb0d783217a65a75a8d0b1701709a903eaa9e897f0963d2493528565d" [label=""];
  "sha256:0bdca5deb0d783217a65a75a8d0b1701709a903eaa9e897f0963d2493528565d" -> "sha256:accc178b530cb43c47e90f373fd9ff84ebedc96f9ecc08a0ebfda52569bcaa3a" [label=""];
  "sha256:accc178b530cb43c47e90f373fd9ff84ebedc96f9ecc08a0ebfda52569bcaa3a" -> "sha256:d5de6ddf304f3530c67300c4c5516bfa9c7cdda54e326e7c928c143c83efd737" [label=""];
  "sha256:d5de6ddf304f3530c67300c4c5516bfa9c7cdda54e326e7c928c143c83efd737" -> "sha256:0d20ac011d243b9a8925eae722b8c43ff25f3617bd3b257a5799fe7fe6475604" [label=""];
}

