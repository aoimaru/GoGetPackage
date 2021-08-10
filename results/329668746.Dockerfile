[app/sources/329668746.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:8e4b122269e6ac922b4eb102d652cd4c5750bd8137e5b3e9e753a14960875317" [label="local://context" shape="ellipse"];
  "sha256:142201f87c6275683ecfcccfa904fe73eeaa6c0154be044061f3c8e331112969" [label="copy{src=/docker/compose/mozdef_syslog/files/syslog-ng.repo, dest=/etc/yum.repos.d/syslog-ng.repo}" shape="note"];
  "sha256:7924164456026aff8601fe36398ab05f767f05456c4e9cbdbf56d8128b539012" [label="/bin/sh -c gpg=\"gpg --no-default-keyring --secret-keyring /dev/null --keyring /dev/null --no-option --keyid-format 0xlong\" &&   rpmkeys --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 &&   rpm -qi gpg-pubkey-f4a80eb5 | $gpg | grep 0x24C6A8A7F4A80EB5 &&   rpmkeys --import https://copr-be.cloud.fedoraproject.org/results/czanik/syslog-ng312/pubkey.gpg &&   rpm -qi gpg-pubkey-2b04b9af | $gpg | grep 0x1AACFE032B04B9AF &&   rpmkeys --import https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-7 &&   rpm -qi gpg-pubkey-352c64e5 | $gpg | grep 0x6A2FAEA2352C64E5 &&   yum install -y epel-release &&   yum install -y syslog-ng.x86_64 syslog-ng-json &&   yum clean all" shape="box"];
  "sha256:6a7a13447dd04d3f723afb022e676e1a3b422691e0ca3a141d150270fabe9ede" [label="copy{src=/docker/compose/mozdef_syslog/files/syslog-ng.conf, dest=/etc/syslog-ng/syslog-ng.conf}" shape="note"];
  "sha256:bc9a6386aac5f0271c1a19593ce142b51b8ae63fdd1cfa845d62f2f2cf5fa360" [label="sha256:bc9a6386aac5f0271c1a19593ce142b51b8ae63fdd1cfa845d62f2f2cf5fa360" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:142201f87c6275683ecfcccfa904fe73eeaa6c0154be044061f3c8e331112969" [label=""];
  "sha256:8e4b122269e6ac922b4eb102d652cd4c5750bd8137e5b3e9e753a14960875317" -> "sha256:142201f87c6275683ecfcccfa904fe73eeaa6c0154be044061f3c8e331112969" [label=""];
  "sha256:142201f87c6275683ecfcccfa904fe73eeaa6c0154be044061f3c8e331112969" -> "sha256:7924164456026aff8601fe36398ab05f767f05456c4e9cbdbf56d8128b539012" [label=""];
  "sha256:7924164456026aff8601fe36398ab05f767f05456c4e9cbdbf56d8128b539012" -> "sha256:6a7a13447dd04d3f723afb022e676e1a3b422691e0ca3a141d150270fabe9ede" [label=""];
  "sha256:8e4b122269e6ac922b4eb102d652cd4c5750bd8137e5b3e9e753a14960875317" -> "sha256:6a7a13447dd04d3f723afb022e676e1a3b422691e0ca3a141d150270fabe9ede" [label=""];
  "sha256:6a7a13447dd04d3f723afb022e676e1a3b422691e0ca3a141d150270fabe9ede" -> "sha256:bc9a6386aac5f0271c1a19593ce142b51b8ae63fdd1cfa845d62f2f2cf5fa360" [label=""];
}

