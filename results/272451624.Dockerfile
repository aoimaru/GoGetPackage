[app/sources/272451624.Dockerfile]
digraph {
  "sha256:ea253c9bfd585c3ba49df63949c4d43a52ff3459858f2e7addb0de982c1e121a" [label="local://context" shape="ellipse"];
  "sha256:3e28eeb8fd7fae639258d1edcc9ca7fd104ab7697a51ff3f73905659c01291fc" [label="docker-image://docker.io/library/golang:1.8.3-stretch" shape="ellipse"];
  "sha256:bf74ec6bb9f5667260add0d435fca1ca081e55caeab4feb337bcc46e9c182372" [label="/bin/sh -c apt update -y" shape="box"];
  "sha256:bf935a7a5fa0fa0f977473868f3bff3b499022be1209a280ee61d9adff8049c5" [label="/bin/sh -c go get github.com/mattn/goreman" shape="box"];
  "sha256:7192dafcd103963efb110fdd1559275ffd1846044c10e82bd58acd3c730a3a2d" [label="/bin/sh -c apt install -y bind9" shape="box"];
  "sha256:68c45c407f003bac621597607ff2057a28ba0983d2fb3fc849652165d8b2c096" [label="/bin/sh -c mkdir /var/bind" shape="box"];
  "sha256:0f058f3ff9c9d7c3324fa0bb22ba2e11d79795f898a9238cbac5247ac6891872" [label="/bin/sh -c chown bind /var/bind" shape="box"];
  "sha256:c994a952ed9283ca010b854cdf4eef34ea0889700d62d0e0bbd199d5fd03b2b3" [label="copy{src=/Procfile.tls, dest=/Procfile.tls}" shape="note"];
  "sha256:bf21c1f4f329e91a656f3811fbb9ecf66817ec4512fa5569e1784adaab8a2b08" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:d4af001856e9274b7bbe3a8c3ad0964719a05b0ac2584cf6322939a276541ce5" [label="copy{src=/named.conf, dest=/etc/bind/},copy{src=/etcd.zone, dest=/etc/bind/},copy{src=/rdns.zone, dest=/etc/bind/}" shape="note"];
  "sha256:b873c1bd474bba55c60115658501cebc5c691668543f452dd44726b83c283757" [label="copy{src=/resolv.conf, dest=/etc/resolv.conf}" shape="note"];
  "sha256:b2af79147fff99a78c0bf1aad209ed5223079321a7102d92535413a6e4efe2d4" [label="sha256:b2af79147fff99a78c0bf1aad209ed5223079321a7102d92535413a6e4efe2d4" shape="plaintext"];
  "sha256:3e28eeb8fd7fae639258d1edcc9ca7fd104ab7697a51ff3f73905659c01291fc" -> "sha256:bf74ec6bb9f5667260add0d435fca1ca081e55caeab4feb337bcc46e9c182372" [label=""];
  "sha256:bf74ec6bb9f5667260add0d435fca1ca081e55caeab4feb337bcc46e9c182372" -> "sha256:bf935a7a5fa0fa0f977473868f3bff3b499022be1209a280ee61d9adff8049c5" [label=""];
  "sha256:bf935a7a5fa0fa0f977473868f3bff3b499022be1209a280ee61d9adff8049c5" -> "sha256:7192dafcd103963efb110fdd1559275ffd1846044c10e82bd58acd3c730a3a2d" [label=""];
  "sha256:7192dafcd103963efb110fdd1559275ffd1846044c10e82bd58acd3c730a3a2d" -> "sha256:68c45c407f003bac621597607ff2057a28ba0983d2fb3fc849652165d8b2c096" [label=""];
  "sha256:68c45c407f003bac621597607ff2057a28ba0983d2fb3fc849652165d8b2c096" -> "sha256:0f058f3ff9c9d7c3324fa0bb22ba2e11d79795f898a9238cbac5247ac6891872" [label=""];
  "sha256:0f058f3ff9c9d7c3324fa0bb22ba2e11d79795f898a9238cbac5247ac6891872" -> "sha256:c994a952ed9283ca010b854cdf4eef34ea0889700d62d0e0bbd199d5fd03b2b3" [label=""];
  "sha256:ea253c9bfd585c3ba49df63949c4d43a52ff3459858f2e7addb0de982c1e121a" -> "sha256:c994a952ed9283ca010b854cdf4eef34ea0889700d62d0e0bbd199d5fd03b2b3" [label=""];
  "sha256:c994a952ed9283ca010b854cdf4eef34ea0889700d62d0e0bbd199d5fd03b2b3" -> "sha256:bf21c1f4f329e91a656f3811fbb9ecf66817ec4512fa5569e1784adaab8a2b08" [label=""];
  "sha256:ea253c9bfd585c3ba49df63949c4d43a52ff3459858f2e7addb0de982c1e121a" -> "sha256:bf21c1f4f329e91a656f3811fbb9ecf66817ec4512fa5569e1784adaab8a2b08" [label=""];
  "sha256:bf21c1f4f329e91a656f3811fbb9ecf66817ec4512fa5569e1784adaab8a2b08" -> "sha256:d4af001856e9274b7bbe3a8c3ad0964719a05b0ac2584cf6322939a276541ce5" [label=""];
  "sha256:ea253c9bfd585c3ba49df63949c4d43a52ff3459858f2e7addb0de982c1e121a" -> "sha256:d4af001856e9274b7bbe3a8c3ad0964719a05b0ac2584cf6322939a276541ce5" [label=""];
  "sha256:d4af001856e9274b7bbe3a8c3ad0964719a05b0ac2584cf6322939a276541ce5" -> "sha256:b873c1bd474bba55c60115658501cebc5c691668543f452dd44726b83c283757" [label=""];
  "sha256:ea253c9bfd585c3ba49df63949c4d43a52ff3459858f2e7addb0de982c1e121a" -> "sha256:b873c1bd474bba55c60115658501cebc5c691668543f452dd44726b83c283757" [label=""];
  "sha256:b873c1bd474bba55c60115658501cebc5c691668543f452dd44726b83c283757" -> "sha256:b2af79147fff99a78c0bf1aad209ed5223079321a7102d92535413a6e4efe2d4" [label=""];
}

