[app/sources/203902281.Dockerfile]
digraph {
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:1da45b7af3a076e9b4c7ff5539ec43c94b97e587ab8c33a6deeb2903106c7e7e" [label="/bin/sh -c yum install --setopt=tsflags=nodocs -y docker container-selinux cloud-utils-growpart python-docker-py docker-novolume-plugin docker-lvm-plugin lvm2 iptables procps-ng xz oci-register-machine && rpm -V docker container-selinux cloud-utils-growpart python-docker-py docker-novolume-plugin docker-lvm-plugin lvm2 iptables procps-ng xz oci-register-machine && mkdir -p /usr/lib/modules && yum-config-manager --nogpgcheck --add-repo https://cbs.centos.org/repos/virt7-docker-common-candidate/x86_64/os/ && yum install --setopt=tsflags=nodocs -y --nogpgcheck docker-rhel-push-plugin && rpm -V docker-rhel-push-plugin && mkdir -p /exports/hostfs/etc/docker && yum clean all" shape="box"];
  "sha256:500fb5a26b4bf57fa2bf8219b978ed9947335b4e351136d9cc9992bea92ac2be" [label="local://context" shape="ellipse"];
  "sha256:0cfc324b38a09fb598c40bb55edba9ec1fa4f02472f4e76676137421d664d320" [label="copy{src=/init.sh, dest=/usr/bin}" shape="note"];
  "sha256:79ea24afc2add06125ffed879cfb8b8fa82fad986cafb43bd0df78de1c97a324" [label="copy{src=/service.template, dest=/exports/},copy{src=/tmpfiles.template, dest=/exports/},copy{src=/config.json.template, dest=/exports/},copy{src=/manifest.json, dest=/exports/}" shape="note"];
  "sha256:495ea342224f5068ae774bfa4354d7fa4520ae298525a08f75759e8438249d11" [label="copy{src=/daemon.json, dest=/exports/hostfs/etc/docker/container-daemon.json}" shape="note"];
  "sha256:d4f919f4109419976c3c18dda4b09ce4ee41f229bbd8432077a72d922c5a6130" [label="/bin/sh -c (test -e /etc/oci-umount.conf && cp /etc/oci-umount.conf /exports/hostfs/etc) || true" shape="box"];
  "sha256:dfa71bb29c2c817c3b2a3ee4803f68d056a3216ca1e67ca2edfddcba69ac1793" [label="sha256:dfa71bb29c2c817c3b2a3ee4803f68d056a3216ca1e67ca2edfddcba69ac1793" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:1da45b7af3a076e9b4c7ff5539ec43c94b97e587ab8c33a6deeb2903106c7e7e" [label=""];
  "sha256:1da45b7af3a076e9b4c7ff5539ec43c94b97e587ab8c33a6deeb2903106c7e7e" -> "sha256:0cfc324b38a09fb598c40bb55edba9ec1fa4f02472f4e76676137421d664d320" [label=""];
  "sha256:500fb5a26b4bf57fa2bf8219b978ed9947335b4e351136d9cc9992bea92ac2be" -> "sha256:0cfc324b38a09fb598c40bb55edba9ec1fa4f02472f4e76676137421d664d320" [label=""];
  "sha256:0cfc324b38a09fb598c40bb55edba9ec1fa4f02472f4e76676137421d664d320" -> "sha256:79ea24afc2add06125ffed879cfb8b8fa82fad986cafb43bd0df78de1c97a324" [label=""];
  "sha256:500fb5a26b4bf57fa2bf8219b978ed9947335b4e351136d9cc9992bea92ac2be" -> "sha256:79ea24afc2add06125ffed879cfb8b8fa82fad986cafb43bd0df78de1c97a324" [label=""];
  "sha256:79ea24afc2add06125ffed879cfb8b8fa82fad986cafb43bd0df78de1c97a324" -> "sha256:495ea342224f5068ae774bfa4354d7fa4520ae298525a08f75759e8438249d11" [label=""];
  "sha256:500fb5a26b4bf57fa2bf8219b978ed9947335b4e351136d9cc9992bea92ac2be" -> "sha256:495ea342224f5068ae774bfa4354d7fa4520ae298525a08f75759e8438249d11" [label=""];
  "sha256:495ea342224f5068ae774bfa4354d7fa4520ae298525a08f75759e8438249d11" -> "sha256:d4f919f4109419976c3c18dda4b09ce4ee41f229bbd8432077a72d922c5a6130" [label=""];
  "sha256:d4f919f4109419976c3c18dda4b09ce4ee41f229bbd8432077a72d922c5a6130" -> "sha256:dfa71bb29c2c817c3b2a3ee4803f68d056a3216ca1e67ca2edfddcba69ac1793" [label=""];
}

