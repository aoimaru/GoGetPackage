[app/sources/134607260.Dockerfile]
digraph {
  "sha256:fb3e9c548cad755dbe6b51d5ae04ace1f38638b4a3df691e7d4c3e9acad303eb" [label="docker-image://docker.io/library/ubuntu:trusty@sha256:43cb19408de1e0ecf3ba5b5372ec98978963d6d0be42d0ad825e77a3bd16b5f7" shape="ellipse"];
  "sha256:51db666b5e8a41377043c497a1eded6a918a80ebaad80ffb202850ddf7b10736" [label="/bin/sh -c apt-get update && \techo 'slapd/root_password password password' | debconf-set-selections &&    echo 'slapd/root_password_again password password' | debconf-set-selections &&     DEBIAN_FRONTEND=noninteractive apt-get install -y slapd ldap-utils &&\trm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2dfd701227faae208e81a5a41fc56e55348397ea21c2b26f68da4971a5585b38" [label="local://context" shape="ellipse"];
  "sha256:b866b09a4dd81034cde8fd79f3c2e11838aff42e9cbc8e69a40f781f48b25f92" [label="copy{src=/files, dest=/ldap}" shape="note"];
  "sha256:5e7ca34556adb2697fc1de67a464d9982a94764f1d309a8cc1f179dc564abeae" [label="/bin/sh -c service slapd start ;    cd /ldap &&\tldapadd -Y EXTERNAL -H ldapi:/// -f back.ldif &&\tldapadd -Y EXTERNAL -H ldapi:/// -f sssvlv_load.ldif &&    ldapadd -Y EXTERNAL -H ldapi:/// -f sssvlv_config.ldif &&    ldapadd -x -D cn=admin,dc=openstack,dc=org -w password -c -f front.ldif &&    ldapadd -x -D cn=admin,dc=openstack,dc=org -w password -c -f more.ldif" shape="box"];
  "sha256:f5abe1643cf4360fe2e3007a46fbfe2ca3b49e310a75c59aafade8f32e35a9dc" [label="sha256:f5abe1643cf4360fe2e3007a46fbfe2ca3b49e310a75c59aafade8f32e35a9dc" shape="plaintext"];
  "sha256:fb3e9c548cad755dbe6b51d5ae04ace1f38638b4a3df691e7d4c3e9acad303eb" -> "sha256:51db666b5e8a41377043c497a1eded6a918a80ebaad80ffb202850ddf7b10736" [label=""];
  "sha256:51db666b5e8a41377043c497a1eded6a918a80ebaad80ffb202850ddf7b10736" -> "sha256:b866b09a4dd81034cde8fd79f3c2e11838aff42e9cbc8e69a40f781f48b25f92" [label=""];
  "sha256:2dfd701227faae208e81a5a41fc56e55348397ea21c2b26f68da4971a5585b38" -> "sha256:b866b09a4dd81034cde8fd79f3c2e11838aff42e9cbc8e69a40f781f48b25f92" [label=""];
  "sha256:b866b09a4dd81034cde8fd79f3c2e11838aff42e9cbc8e69a40f781f48b25f92" -> "sha256:5e7ca34556adb2697fc1de67a464d9982a94764f1d309a8cc1f179dc564abeae" [label=""];
  "sha256:5e7ca34556adb2697fc1de67a464d9982a94764f1d309a8cc1f179dc564abeae" -> "sha256:f5abe1643cf4360fe2e3007a46fbfe2ca3b49e310a75c59aafade8f32e35a9dc" [label=""];
}

