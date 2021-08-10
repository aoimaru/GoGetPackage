[app/sources/234318134.Dockerfile]
digraph {
  "sha256:733e9c2537015577fa342f415d9e8d598417f4e057c5e9d334d714de2b6473f4" [label="docker-image://docker.io/library/ubuntu:16.10" shape="ellipse"];
  "sha256:1ba4ac9356f5b1f3a1a62eedc9c32716a91d98154c55f6d5075333c2f7c9ca86" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:9293235848a7e3e1c4f96b7353818fce8197b40881960b08bfccd90082764213" [label="/bin/sh -c apt-get install -y --no-install-recommends         gcc libc6-dev qemu-user ca-certificates         gcc-mips-linux-gnu libc6-dev-mips-cross         qemu-system-mips" shape="box"];
  "sha256:cffff223134db87f1b91faec7c65728bf44da9f25bf0a192d60540f3a46a95e6" [label="sha256:cffff223134db87f1b91faec7c65728bf44da9f25bf0a192d60540f3a46a95e6" shape="plaintext"];
  "sha256:733e9c2537015577fa342f415d9e8d598417f4e057c5e9d334d714de2b6473f4" -> "sha256:1ba4ac9356f5b1f3a1a62eedc9c32716a91d98154c55f6d5075333c2f7c9ca86" [label=""];
  "sha256:1ba4ac9356f5b1f3a1a62eedc9c32716a91d98154c55f6d5075333c2f7c9ca86" -> "sha256:9293235848a7e3e1c4f96b7353818fce8197b40881960b08bfccd90082764213" [label=""];
  "sha256:9293235848a7e3e1c4f96b7353818fce8197b40881960b08bfccd90082764213" -> "sha256:cffff223134db87f1b91faec7c65728bf44da9f25bf0a192d60540f3a46a95e6" [label=""];
}

