[app/sources/210939381.Dockerfile]
digraph {
  "sha256:4db217f0433485263b4e23a52a0bdafa53bfaf2e84bd298f1af71eb7dd27c5f9" [label="docker-image://docker.io/arm64v8/openjdk:8-slim-stretch" shape="ellipse"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:6230c4e38eed955d83787cc23669565b265c52dd9db33a54629cc27dea2e44eb" [label="docker-image://docker.io/multiarch/qemu-user-static:aarch64" shape="ellipse"];
  "sha256:012556babdb8229ce399c5c3cdf5130c38b4df0063232c0f6c2711dd773af80a" [label="copy{src=/usr/bin, dest=/tmp/qemu-aarch64-static.tar.gz}" shape="note"];
  "sha256:a6069dd415f93468444e532c3d956dee7a9c72636da7e947de24cc9696a131ff" [label="/bin/sh -c tar -C /usr/bin -zxvf /tmp/qemu-aarch64-static.tar.gz" shape="box"];
  "sha256:447c6769f1895e38cd75a985b3b9c68fbe8cd0a822c7d1300cac05733e47c6d8" [label="copy{src=/usr/bin/qemu-aarch64-static, dest=/usr/bin/qemu-aarch64-static}" shape="note"];
  "sha256:1d84ce61d0e526887475c899d294cd97ba79a67b012ca212b6eea6d0160f7a86" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends       wget       ca-certificates       gnupg       dirmngr     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:657daf69e4cc67984baf8f4698bc71532f2a3f8fc291914172a96241bd80bca5" [label="/bin/sh -c mkdir -p /tmp/build &&       cd /tmp/build &&       wget -O /etc/apt/trusted.gpg.d/unifi-repo.gpg https://dl.ui.com/unifi/unifi-repo.gpg &&       wget https://www.ubnt.com/downloads/unifi/${UNIFI_VERSION}/unifi_sysvinit_all.deb &&       apt-get update && apt-get install -y --no-install-recommends         ./unifi_sysvinit_all.deb         procps &&       rm -rf /var/lib/apt/lists/* &&       rm -rf /tmp/build" shape="box"];
  "sha256:5b8b4191c7ac11ad4bcd5014290a910cc230d24aed1fcab955c09857f607e1c0" [label="/bin/sh -c ln -s /var/lib/unifi /usr/lib/unifi/data" shape="box"];
  "sha256:8e0add29347554b98f7143c36dd214c5a09c68fab078420cd3dd963928dd37a5" [label="mkdir{path=/var/lib/unifi}" shape="note"];
  "sha256:79acb915f62e10ed334090136e1cb158ab681ecf4297baa09f8eb3f577b7b35a" [label="sha256:79acb915f62e10ed334090136e1cb158ab681ecf4297baa09f8eb3f577b7b35a" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:012556babdb8229ce399c5c3cdf5130c38b4df0063232c0f6c2711dd773af80a" [label=""];
  "sha256:6230c4e38eed955d83787cc23669565b265c52dd9db33a54629cc27dea2e44eb" -> "sha256:012556babdb8229ce399c5c3cdf5130c38b4df0063232c0f6c2711dd773af80a" [label=""];
  "sha256:012556babdb8229ce399c5c3cdf5130c38b4df0063232c0f6c2711dd773af80a" -> "sha256:a6069dd415f93468444e532c3d956dee7a9c72636da7e947de24cc9696a131ff" [label=""];
  "sha256:4db217f0433485263b4e23a52a0bdafa53bfaf2e84bd298f1af71eb7dd27c5f9" -> "sha256:447c6769f1895e38cd75a985b3b9c68fbe8cd0a822c7d1300cac05733e47c6d8" [label=""];
  "sha256:a6069dd415f93468444e532c3d956dee7a9c72636da7e947de24cc9696a131ff" -> "sha256:447c6769f1895e38cd75a985b3b9c68fbe8cd0a822c7d1300cac05733e47c6d8" [label=""];
  "sha256:447c6769f1895e38cd75a985b3b9c68fbe8cd0a822c7d1300cac05733e47c6d8" -> "sha256:1d84ce61d0e526887475c899d294cd97ba79a67b012ca212b6eea6d0160f7a86" [label=""];
  "sha256:1d84ce61d0e526887475c899d294cd97ba79a67b012ca212b6eea6d0160f7a86" -> "sha256:657daf69e4cc67984baf8f4698bc71532f2a3f8fc291914172a96241bd80bca5" [label=""];
  "sha256:657daf69e4cc67984baf8f4698bc71532f2a3f8fc291914172a96241bd80bca5" -> "sha256:5b8b4191c7ac11ad4bcd5014290a910cc230d24aed1fcab955c09857f607e1c0" [label=""];
  "sha256:5b8b4191c7ac11ad4bcd5014290a910cc230d24aed1fcab955c09857f607e1c0" -> "sha256:8e0add29347554b98f7143c36dd214c5a09c68fab078420cd3dd963928dd37a5" [label=""];
  "sha256:8e0add29347554b98f7143c36dd214c5a09c68fab078420cd3dd963928dd37a5" -> "sha256:79acb915f62e10ed334090136e1cb158ab681ecf4297baa09f8eb3f577b7b35a" [label=""];
}

