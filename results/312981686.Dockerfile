[app/sources/312981686.Dockerfile]
digraph {
  "sha256:150a1b4887342b27b90638b37c401895f5a929790b1b8c708c4b1c6bc3ece922" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:d85b94c23f2207314e65c2b65f8174fe8e9f9a171cdda392eb5b3a6093800fe1" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:571d68425eeb64adee8f20943c5a4b9cd746589963ea54988dd6f7d20680cf2b" [label="/bin/sh -c apt-get -y install curl" shape="box"];
  "sha256:8197dcf78e91f0b95ba322a1bb67a6cba9c185665a3965b798c643371af85182" [label="/bin/sh -c curl -OL https://bitcoin.org/bin/bitcoin-core-0.16.0/bitcoin-0.16.0-x86_64-linux-gnu.tar.gz" shape="box"];
  "sha256:8bc806a97540863519d82a3d42d12c0fe74cec6a05294465b74665048dc96892" [label="/bin/sh -c tar zxvf bitcoin-0.16.0-x86_64-linux-gnu.tar.gz" shape="box"];
  "sha256:9a1ddc8a9b32e77195ce5597c681f46e028d09fd1f3533d9e06b87fbbe384421" [label="/bin/sh -c ln -s /bitcoin-0.16.0/bin/bitcoin-cli /bitcoin-cli" shape="box"];
  "sha256:5d036ca3138343075d04e7127f804eb977286fdb12233f917e309dd86831a796" [label="copy{src=/bitcoin.conf, dest=/root/.bitcoin/bitcoin.conf}" shape="note"];
  "sha256:9e6ed297afcb1c88e24c3d45f891bb6177b664cd677c1979ddc322321633d376" [label="sha256:9e6ed297afcb1c88e24c3d45f891bb6177b664cd677c1979ddc322321633d376" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:d85b94c23f2207314e65c2b65f8174fe8e9f9a171cdda392eb5b3a6093800fe1" [label=""];
  "sha256:d85b94c23f2207314e65c2b65f8174fe8e9f9a171cdda392eb5b3a6093800fe1" -> "sha256:571d68425eeb64adee8f20943c5a4b9cd746589963ea54988dd6f7d20680cf2b" [label=""];
  "sha256:571d68425eeb64adee8f20943c5a4b9cd746589963ea54988dd6f7d20680cf2b" -> "sha256:8197dcf78e91f0b95ba322a1bb67a6cba9c185665a3965b798c643371af85182" [label=""];
  "sha256:8197dcf78e91f0b95ba322a1bb67a6cba9c185665a3965b798c643371af85182" -> "sha256:8bc806a97540863519d82a3d42d12c0fe74cec6a05294465b74665048dc96892" [label=""];
  "sha256:8bc806a97540863519d82a3d42d12c0fe74cec6a05294465b74665048dc96892" -> "sha256:9a1ddc8a9b32e77195ce5597c681f46e028d09fd1f3533d9e06b87fbbe384421" [label=""];
  "sha256:9a1ddc8a9b32e77195ce5597c681f46e028d09fd1f3533d9e06b87fbbe384421" -> "sha256:5d036ca3138343075d04e7127f804eb977286fdb12233f917e309dd86831a796" [label=""];
  "sha256:150a1b4887342b27b90638b37c401895f5a929790b1b8c708c4b1c6bc3ece922" -> "sha256:5d036ca3138343075d04e7127f804eb977286fdb12233f917e309dd86831a796" [label=""];
  "sha256:5d036ca3138343075d04e7127f804eb977286fdb12233f917e309dd86831a796" -> "sha256:9e6ed297afcb1c88e24c3d45f891bb6177b664cd677c1979ddc322321633d376" [label=""];
}

