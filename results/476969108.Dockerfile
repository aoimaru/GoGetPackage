[app/sources/476969108.Dockerfile]
digraph {
  "sha256:fac4fb88f7240cfb151953bebb730d0f036ea9076286abe1e22b87cbf8564e39" [label="local://context" shape="ellipse"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:fab0ff98d25ea83fbee36b85901a5d352112b6c6444a394b28bd4e78f716467c" [label="/bin/sh -c apk --no-cache add       clamav-daemon       clamav-libunrar &&     rm -rf /var/log/clamav" shape="box"];
  "sha256:2a4120477cbb7e6ae08e44d87ab898cdeca1a7016354fda3fdcf2ae76984270e" [label="copy{src=/rootfs, dest=/}" shape="note"];
  "sha256:5ec63a1949d37ad7f705735b95a776a21df54295fcbacce5cac908cfff52232c" [label="/bin/sh -c /usr/bin/freshclam -l /dev/null" shape="box"];
  "sha256:6a2e7f0d22b9b48d17750a29d5ca268d30b2e10f38c1976e823a859910b34210" [label="sha256:6a2e7f0d22b9b48d17750a29d5ca268d30b2e10f38c1976e823a859910b34210" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:fab0ff98d25ea83fbee36b85901a5d352112b6c6444a394b28bd4e78f716467c" [label=""];
  "sha256:fab0ff98d25ea83fbee36b85901a5d352112b6c6444a394b28bd4e78f716467c" -> "sha256:2a4120477cbb7e6ae08e44d87ab898cdeca1a7016354fda3fdcf2ae76984270e" [label=""];
  "sha256:fac4fb88f7240cfb151953bebb730d0f036ea9076286abe1e22b87cbf8564e39" -> "sha256:2a4120477cbb7e6ae08e44d87ab898cdeca1a7016354fda3fdcf2ae76984270e" [label=""];
  "sha256:2a4120477cbb7e6ae08e44d87ab898cdeca1a7016354fda3fdcf2ae76984270e" -> "sha256:5ec63a1949d37ad7f705735b95a776a21df54295fcbacce5cac908cfff52232c" [label=""];
  "sha256:5ec63a1949d37ad7f705735b95a776a21df54295fcbacce5cac908cfff52232c" -> "sha256:6a2e7f0d22b9b48d17750a29d5ca268d30b2e10f38c1976e823a859910b34210" [label=""];
}

