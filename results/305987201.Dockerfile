[app/sources/305987201.Dockerfile]
digraph {
  "sha256:aa32aedc0038c09c3a4681b9ed82077ffb2376f3ba4c9c2ebea016213d05acab" [label="docker-image://docker.io/library/oraclelinux:6@sha256:f4f7375d3a220de1158f57719eb1df7a7438cad9e33c3a8b8ce88907684b656b" shape="ellipse"];
  "sha256:45ec972a56e6b29ed93a10127e8efd3cdd5ca3216804bc73efb6e1e6e79c650e" [label="/bin/sh -c yum install -y yum-utils && curl -o /etc/yum.repos.d/public-yum-ol6.repo http://yum.oracle.com/public-yum-ol6.repo && yum-config-manager -q --enable ol6_UEKR4" shape="box"];
  "sha256:1e028a8ae3e5ceac8c177d7ce2485ff02871d46dc14d755cc6726b8185080b0d" [label="/bin/sh -c yum install -y kernel-uek-devel-4.1.12-32.el6uek" shape="box"];
  "sha256:7726173dfed1cd43fe660302ab6ee0672baf75e89a01382020c51e6fef54d299" [label="/bin/sh -c yum groupinstall -y \"Development Tools\"" shape="box"];
  "sha256:2e6f1b0438b8c664e4601908b5c97bf920ed52325489c0457668e726d84d69c2" [label="/bin/sh -c yum install -y btrfs-progs-devel device-mapper-devel glibc-static  libselinux-devel libtool-ltdl-devel pkgconfig selinux-policy selinux-policy-devel sqlite-devel  tar git cmake vim-common" shape="box"];
  "sha256:94683888e8a80cfe3898a12d530deb5baec5fcfb804af4d4362c196470ad3ca9" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:c989fed8252d4f60fb54821efddd4344b93f538ab584e90e1f065924fadf9c47" [label="sha256:c989fed8252d4f60fb54821efddd4344b93f538ab584e90e1f065924fadf9c47" shape="plaintext"];
  "sha256:aa32aedc0038c09c3a4681b9ed82077ffb2376f3ba4c9c2ebea016213d05acab" -> "sha256:45ec972a56e6b29ed93a10127e8efd3cdd5ca3216804bc73efb6e1e6e79c650e" [label=""];
  "sha256:45ec972a56e6b29ed93a10127e8efd3cdd5ca3216804bc73efb6e1e6e79c650e" -> "sha256:1e028a8ae3e5ceac8c177d7ce2485ff02871d46dc14d755cc6726b8185080b0d" [label=""];
  "sha256:1e028a8ae3e5ceac8c177d7ce2485ff02871d46dc14d755cc6726b8185080b0d" -> "sha256:7726173dfed1cd43fe660302ab6ee0672baf75e89a01382020c51e6fef54d299" [label=""];
  "sha256:7726173dfed1cd43fe660302ab6ee0672baf75e89a01382020c51e6fef54d299" -> "sha256:2e6f1b0438b8c664e4601908b5c97bf920ed52325489c0457668e726d84d69c2" [label=""];
  "sha256:2e6f1b0438b8c664e4601908b5c97bf920ed52325489c0457668e726d84d69c2" -> "sha256:94683888e8a80cfe3898a12d530deb5baec5fcfb804af4d4362c196470ad3ca9" [label=""];
  "sha256:94683888e8a80cfe3898a12d530deb5baec5fcfb804af4d4362c196470ad3ca9" -> "sha256:c989fed8252d4f60fb54821efddd4344b93f538ab584e90e1f065924fadf9c47" [label=""];
}

