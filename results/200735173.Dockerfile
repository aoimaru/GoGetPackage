[app/sources/200735173.Dockerfile]
digraph {
  "sha256:765947826a82a31b89fa722b9e6aea354add1ccf9ad797e4435db699187c3b9b" [label="docker-image://docker.io/library/centos:5" shape="ellipse"];
  "sha256:64f768d81de1774a45e7f3251156edf009ba092dbc45cc3961dd82eb6fa9cc04" [label="/bin/sh -c mkdir -p /var/cache/yum/{base,extras,updates,epel,libselinux}                                    && echo \"http://vault.centos.org/5.11/os/x86_64/\" > /var/cache/yum/base/mirrorlist.txt           && echo \"http://vault.centos.org/5.11/extras/x86_64/\" > /var/cache/yum/extras/mirrorlist.txt     && echo \"http://vault.centos.org/5.11/updates/x86_64/\" > /var/cache/yum/updates/mirrorlist.txt   && echo \"http://ftp-stud.hs-esslingen.de/pub/Mirrors/archive.fedoraproject.org/epel/5/x86_64/\"     > /var/cache/yum/epel/mirrorlist.txt   && cp /var/cache/yum/extras/mirrorlist.txt /var/cache/yum/libselinux/" shape="box"];
  "sha256:8cbe1176a6191975c4949bcdc1c7f8fa1c9c0b14515999ce648c8c19f395cf42" [label="/bin/sh -c yum -y install openssh-server" shape="box"];
  "sha256:089a465fb937e0fa3bfd30405f27180c3a93561330fd6ff9d8a0a36c2821bb5c" [label="/bin/sh -c yum -y install python-simplejson wget" shape="box"];
  "sha256:188337a2c80b4b7db983b0c9f4ab284ccb4f71755f82a24aca42c22c17dd6179" [label="/bin/sh -c wget --no-check-certificate                                                                       \"http://download.fedoraproject.org/pub/archive/epel/5/x86_64/epel-release-5-4.noarch.rpm\"     && rpm -i epel-release-5-4.noarch.rpm                                                           && yum install -y python26                                                                      && mv /usr/bin/python /usr/bin/python-                                                          && ln -sf /usr/bin/python26 /usr/bin/python" shape="box"];
  "sha256:cbb5180c4021418f6af20d1bb814db3e6e5433fd7c5d0bb6f32d5db71faa4592" [label="/bin/sh -c sed -i   's/PermitRootLogin without-password/PermitRootLogin yes/'   /etc/ssh/sshd_config" shape="box"];
  "sha256:040a967000492918fb8031f7c0626f9b4be9089d7b4dce145dd060336416453b" [label="/bin/sh -c sed -i   's@session\\s*required\\s*pam_loginuid.so@session optional pam_loginuid.so@g'   /etc/pam.d/sshd" shape="box"];
  "sha256:9b1408067bc71dfe31abd5a480c4f5e751350148f515457d115d0f42bf813f6d" [label="/bin/sh -c service sshd start  # to generate host keys" shape="box"];
  "sha256:d39bf784852f89af0f6077ee9bb9cdb0c56a5d074a65aaa423f9ae12ceb51d2f" [label="/bin/sh -c mkdir -m 700 /root/.ssh" shape="box"];
  "sha256:f328bc2cc0a5a5a2f632a5774fcbb5d9b8fa2582a1155a55e883e7a13f1a522f" [label="local://context" shape="ellipse"];
  "sha256:e63f1a1e1485bcbb36b3f190480fe18352a11a89b4a56bd5d378d8fda9a682ce" [label="copy{src=/tmp/id_rsa.pub, dest=/root/.ssh/authorized_keys}" shape="note"];
  "sha256:4fe940bd61ee38fd02199f189d7fbeb23f4380b726a99758cbe15d979e98158b" [label="/bin/sh -c chmod 400 /root/.ssh/authorized_keys" shape="box"];
  "sha256:2abf6c9d961fa47abb63d7d8b4b4e65e0d10613ca3b8a431e20b426384c4e36a" [label="sha256:2abf6c9d961fa47abb63d7d8b4b4e65e0d10613ca3b8a431e20b426384c4e36a" shape="plaintext"];
  "sha256:765947826a82a31b89fa722b9e6aea354add1ccf9ad797e4435db699187c3b9b" -> "sha256:64f768d81de1774a45e7f3251156edf009ba092dbc45cc3961dd82eb6fa9cc04" [label=""];
  "sha256:64f768d81de1774a45e7f3251156edf009ba092dbc45cc3961dd82eb6fa9cc04" -> "sha256:8cbe1176a6191975c4949bcdc1c7f8fa1c9c0b14515999ce648c8c19f395cf42" [label=""];
  "sha256:8cbe1176a6191975c4949bcdc1c7f8fa1c9c0b14515999ce648c8c19f395cf42" -> "sha256:089a465fb937e0fa3bfd30405f27180c3a93561330fd6ff9d8a0a36c2821bb5c" [label=""];
  "sha256:089a465fb937e0fa3bfd30405f27180c3a93561330fd6ff9d8a0a36c2821bb5c" -> "sha256:188337a2c80b4b7db983b0c9f4ab284ccb4f71755f82a24aca42c22c17dd6179" [label=""];
  "sha256:188337a2c80b4b7db983b0c9f4ab284ccb4f71755f82a24aca42c22c17dd6179" -> "sha256:cbb5180c4021418f6af20d1bb814db3e6e5433fd7c5d0bb6f32d5db71faa4592" [label=""];
  "sha256:cbb5180c4021418f6af20d1bb814db3e6e5433fd7c5d0bb6f32d5db71faa4592" -> "sha256:040a967000492918fb8031f7c0626f9b4be9089d7b4dce145dd060336416453b" [label=""];
  "sha256:040a967000492918fb8031f7c0626f9b4be9089d7b4dce145dd060336416453b" -> "sha256:9b1408067bc71dfe31abd5a480c4f5e751350148f515457d115d0f42bf813f6d" [label=""];
  "sha256:9b1408067bc71dfe31abd5a480c4f5e751350148f515457d115d0f42bf813f6d" -> "sha256:d39bf784852f89af0f6077ee9bb9cdb0c56a5d074a65aaa423f9ae12ceb51d2f" [label=""];
  "sha256:d39bf784852f89af0f6077ee9bb9cdb0c56a5d074a65aaa423f9ae12ceb51d2f" -> "sha256:e63f1a1e1485bcbb36b3f190480fe18352a11a89b4a56bd5d378d8fda9a682ce" [label=""];
  "sha256:f328bc2cc0a5a5a2f632a5774fcbb5d9b8fa2582a1155a55e883e7a13f1a522f" -> "sha256:e63f1a1e1485bcbb36b3f190480fe18352a11a89b4a56bd5d378d8fda9a682ce" [label=""];
  "sha256:e63f1a1e1485bcbb36b3f190480fe18352a11a89b4a56bd5d378d8fda9a682ce" -> "sha256:4fe940bd61ee38fd02199f189d7fbeb23f4380b726a99758cbe15d979e98158b" [label=""];
  "sha256:4fe940bd61ee38fd02199f189d7fbeb23f4380b726a99758cbe15d979e98158b" -> "sha256:2abf6c9d961fa47abb63d7d8b4b4e65e0d10613ca3b8a431e20b426384c4e36a" [label=""];
}

