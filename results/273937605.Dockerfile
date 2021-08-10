[app/sources/273937605.Dockerfile]
digraph {
  "sha256:339fcea1d5a96ca170af0e3a4cbdc0d2d62f911b8a1c92caf1e91220a1393f1b" [label="docker-image://docker.io/library/oraclelinux:6" shape="ellipse"];
  "sha256:630184c0425f97ae36aaabde0cd81c8ead3fe0258838e72160d4dc8ebbda8db6" [label="/bin/sh -c yum install -y yum-utils && curl -o /etc/yum.repos.d/public-yum-ol6.repo http://yum.oracle.com/public-yum-ol6.repo && yum-config-manager -q --enable ol6_UEKR4" shape="box"];
  "sha256:3b103622d8be140bb49c7e197a26c177fb190a8096e7b7644ed84c0c730bf69e" [label="/bin/sh -c yum install -y kernel-uek-devel-4.1.12-32.el6uek" shape="box"];
  "sha256:0bdca5deb0d783217a65a75a8d0b1701709a903eaa9e897f0963d2493528565d" [label="/bin/sh -c yum groupinstall -y \"Development Tools\"" shape="box"];
  "sha256:eaf10c1fed98ce7bf91307073e88f5f0ac00cba1ad078fb083add8f4cbf357b8" [label="/bin/sh -c yum install -y btrfs-progs-devel device-mapper-devel glibc-static  libselinux-devel libtool-ltdl-devel pkgconfig selinux-policy selinux-policy-devel sqlite-devel  tar git cmake vim-common" shape="box"];
  "sha256:0557fac1af5ab80ef78a68edce415f0832c2c1b5b2b64fc138b8f72ec17b49bc" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:d008af1b00f26f55577340efec1ef7f3694e19b85f76f3720cbe8def4a0511fe" [label="sha256:d008af1b00f26f55577340efec1ef7f3694e19b85f76f3720cbe8def4a0511fe" shape="plaintext"];
  "sha256:339fcea1d5a96ca170af0e3a4cbdc0d2d62f911b8a1c92caf1e91220a1393f1b" -> "sha256:630184c0425f97ae36aaabde0cd81c8ead3fe0258838e72160d4dc8ebbda8db6" [label=""];
  "sha256:630184c0425f97ae36aaabde0cd81c8ead3fe0258838e72160d4dc8ebbda8db6" -> "sha256:3b103622d8be140bb49c7e197a26c177fb190a8096e7b7644ed84c0c730bf69e" [label=""];
  "sha256:3b103622d8be140bb49c7e197a26c177fb190a8096e7b7644ed84c0c730bf69e" -> "sha256:0bdca5deb0d783217a65a75a8d0b1701709a903eaa9e897f0963d2493528565d" [label=""];
  "sha256:0bdca5deb0d783217a65a75a8d0b1701709a903eaa9e897f0963d2493528565d" -> "sha256:eaf10c1fed98ce7bf91307073e88f5f0ac00cba1ad078fb083add8f4cbf357b8" [label=""];
  "sha256:eaf10c1fed98ce7bf91307073e88f5f0ac00cba1ad078fb083add8f4cbf357b8" -> "sha256:0557fac1af5ab80ef78a68edce415f0832c2c1b5b2b64fc138b8f72ec17b49bc" [label=""];
  "sha256:0557fac1af5ab80ef78a68edce415f0832c2c1b5b2b64fc138b8f72ec17b49bc" -> "sha256:d008af1b00f26f55577340efec1ef7f3694e19b85f76f3720cbe8def4a0511fe" [label=""];
}

