[app/sources/482257959.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:2f1995683e16a88011fa9d77ed6b1c546552caa3418dfb4213a93b496c205aae" [label="/bin/sh -c rpm -Uvh https://download.postgresql.org/pub/repos/yum/${PGVERSION}/redhat/rhel-7-x86_64/${PGDG_REPO}" shape="box"];
  "sha256:33cd46bb11e804aa09be8f43df9f5a335779cee3fba93a4cab110eff912fcfed" [label="/bin/sh -c yum -y update && yum install -y epel-release && yum install -y gettext procps-ng postgresql95 postgresql95-server unzip hostname bind-utils && yum clean all -y" shape="box"];
  "sha256:fc7447d30dd41312700ee23e96b2e25e81fef0f9d4f8cc95390ccb9687eeb863" [label="/bin/sh -c mkdir -p /opt/cpm/bin /opt/cpm/conf /pgdata" shape="box"];
  "sha256:c705d2a1ee7a7c36f8e130d26af2819c7a8dc64523d783e40a40d08b387565c8" [label="local://context" shape="ellipse"];
  "sha256:2f4984158fd4274ac9d543f328cf36af9f2579ae0204871e7835dcfe14b0572d" [label="copy{src=/bin/backup, dest=/opt/cpm/bin}" shape="note"];
  "sha256:ac7881fbfe0e98bbba6af42432cd72a4257d9fe5aeafd194eeaa74509887c55f" [label="copy{src=/bin/common, dest=/opt/cpm/bin}" shape="note"];
  "sha256:7e5b3c67383baf312a8b610d634f17d2d70d455ce83b8b8923d5a30f8c1c7cd6" [label="copy{src=/conf/backup, dest=/opt/cpm/conf}" shape="note"];
  "sha256:6f958fd3ffcd8bbe3a29ba031e2edabb9e68cd6e239c5b7e3b1d93b051c60801" [label="/bin/sh -c chown -R postgres:postgres  /opt/cpm /pgdata &&         chmod -R g=u /opt/cpm /pgdata" shape="box"];
  "sha256:b8a4ab5f3c853b557b079a2613c18075c83cc7e552b32a23f257b7a78fa68af4" [label="/bin/sh -c chmod g=u /etc/passwd && \tchmod g=u /etc/group" shape="box"];
  "sha256:0968ed41c97c7664d82d09c8f738c15aa271c64c77700afd3324bc7fae77fcba" [label="sha256:0968ed41c97c7664d82d09c8f738c15aa271c64c77700afd3324bc7fae77fcba" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:2f1995683e16a88011fa9d77ed6b1c546552caa3418dfb4213a93b496c205aae" [label=""];
  "sha256:2f1995683e16a88011fa9d77ed6b1c546552caa3418dfb4213a93b496c205aae" -> "sha256:33cd46bb11e804aa09be8f43df9f5a335779cee3fba93a4cab110eff912fcfed" [label=""];
  "sha256:33cd46bb11e804aa09be8f43df9f5a335779cee3fba93a4cab110eff912fcfed" -> "sha256:fc7447d30dd41312700ee23e96b2e25e81fef0f9d4f8cc95390ccb9687eeb863" [label=""];
  "sha256:fc7447d30dd41312700ee23e96b2e25e81fef0f9d4f8cc95390ccb9687eeb863" -> "sha256:2f4984158fd4274ac9d543f328cf36af9f2579ae0204871e7835dcfe14b0572d" [label=""];
  "sha256:c705d2a1ee7a7c36f8e130d26af2819c7a8dc64523d783e40a40d08b387565c8" -> "sha256:2f4984158fd4274ac9d543f328cf36af9f2579ae0204871e7835dcfe14b0572d" [label=""];
  "sha256:2f4984158fd4274ac9d543f328cf36af9f2579ae0204871e7835dcfe14b0572d" -> "sha256:ac7881fbfe0e98bbba6af42432cd72a4257d9fe5aeafd194eeaa74509887c55f" [label=""];
  "sha256:c705d2a1ee7a7c36f8e130d26af2819c7a8dc64523d783e40a40d08b387565c8" -> "sha256:ac7881fbfe0e98bbba6af42432cd72a4257d9fe5aeafd194eeaa74509887c55f" [label=""];
  "sha256:ac7881fbfe0e98bbba6af42432cd72a4257d9fe5aeafd194eeaa74509887c55f" -> "sha256:7e5b3c67383baf312a8b610d634f17d2d70d455ce83b8b8923d5a30f8c1c7cd6" [label=""];
  "sha256:c705d2a1ee7a7c36f8e130d26af2819c7a8dc64523d783e40a40d08b387565c8" -> "sha256:7e5b3c67383baf312a8b610d634f17d2d70d455ce83b8b8923d5a30f8c1c7cd6" [label=""];
  "sha256:7e5b3c67383baf312a8b610d634f17d2d70d455ce83b8b8923d5a30f8c1c7cd6" -> "sha256:6f958fd3ffcd8bbe3a29ba031e2edabb9e68cd6e239c5b7e3b1d93b051c60801" [label=""];
  "sha256:6f958fd3ffcd8bbe3a29ba031e2edabb9e68cd6e239c5b7e3b1d93b051c60801" -> "sha256:b8a4ab5f3c853b557b079a2613c18075c83cc7e552b32a23f257b7a78fa68af4" [label=""];
  "sha256:b8a4ab5f3c853b557b079a2613c18075c83cc7e552b32a23f257b7a78fa68af4" -> "sha256:0968ed41c97c7664d82d09c8f738c15aa271c64c77700afd3324bc7fae77fcba" [label=""];
}

