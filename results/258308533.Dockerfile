[app/sources/258308533.Dockerfile]
digraph {
  "sha256:48bef556c2a213931d644a1c37cd166f12bafc4de68eb63f01788a9388a7f57a" [label="docker-image://registry.access.redhat.com/rhel7.3:latest" shape="ellipse"];
  "sha256:482a1c9c510ecd61a4e464cc4c3b7b9d39938045244995be7ccebd5929e65569" [label="/bin/sh -c yum clean all &&     rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release &&     yum-config-manager --add=https://download.ceph.com/rpm-jewel/el7/x86_64/ &&     yum-config-manager --add=https://download.ceph.com/rpm-jewel/el7/noarch/ &&     yum-config-manager --enable rhel-7-server-extras-rpms &&     yum-config-manager --enable rhel-7-server-optional-rpms &&     yum clean all &&     curl https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm -o ./epel-release-latest-7.noarch.rpm &&     rpm -i epel-release-latest-7.noarch.rpm &&     yum -y update" shape="box"];
  "sha256:4b06ea80e2e2a2778b7bfaf6b61d5e99aac914cdfb0d91cb5075974b5a0b55f4" [label="/bin/sh -c (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done) &&     rm -f /lib/systemd/system/multi-user.target.wants/* &&     rm -f /etc/systemd/system/*.wants/* &&     rm -f /lib/systemd/system/local-fs.target.wants/* &&     rm -f /lib/systemd/system/sockets.target.wants/*udev* &&     rm -f /lib/systemd/system/sockets.target.wants/*initctl* &&     rm -f /lib/systemd/system/basic.target.wants/* &&    rm -f /lib/systemd/system/anaconda.target.wants/*" shape="box"];
  "sha256:9703e96b949bbc862fa0f9b59b0692a44cf8e3dc865632936878b1d9d611e25f" [label="/bin/sh -c yum -y install ceph-mon ceph-osd ceph-mds ceph-radosgw rbd-mirror nfs-ganesha-rgw --nogpgcheck &&     yum clean all" shape="box"];
  "sha256:c930c314893fab9760589b0edb8979f5971ac32bbf1c1cdd53f5bddcef13e97d" [label="/bin/sh -c echo \"Red Hat Ceph Storage Server 2.0 (Container)\" > /etc/redhat-storage-release" shape="box"];
  "sha256:f7848e2ed3b540caabdeb05bf0547a23a48fafadafcb336aef02d944694f241a" [label="local://context" shape="ellipse"];
  "sha256:0bb4b87004c86bdc62ecc3d99d4b6970aaf878abbdd44c3f7f62c15ef9975367" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:906e0eb9ea5a10545c73db0d58ba71aaa0b8775aa8454c7da8e0ebade678ddad" [label="copy{src=/config.*.sh, dest=/}" shape="note"];
  "sha256:5f9f0992b566800743140558c3311ed415375e9695dad8af9d7f217a3a5083e0" [label="copy{src=/install.sh, dest=/install.sh}" shape="note"];
  "sha256:fccfbd9e2dd9421c9f8c56ce86a61cbeab85e62f598a8efbdb2a6e52633ddc68" [label="sha256:fccfbd9e2dd9421c9f8c56ce86a61cbeab85e62f598a8efbdb2a6e52633ddc68" shape="plaintext"];
  "sha256:48bef556c2a213931d644a1c37cd166f12bafc4de68eb63f01788a9388a7f57a" -> "sha256:482a1c9c510ecd61a4e464cc4c3b7b9d39938045244995be7ccebd5929e65569" [label=""];
  "sha256:482a1c9c510ecd61a4e464cc4c3b7b9d39938045244995be7ccebd5929e65569" -> "sha256:4b06ea80e2e2a2778b7bfaf6b61d5e99aac914cdfb0d91cb5075974b5a0b55f4" [label=""];
  "sha256:4b06ea80e2e2a2778b7bfaf6b61d5e99aac914cdfb0d91cb5075974b5a0b55f4" -> "sha256:9703e96b949bbc862fa0f9b59b0692a44cf8e3dc865632936878b1d9d611e25f" [label=""];
  "sha256:9703e96b949bbc862fa0f9b59b0692a44cf8e3dc865632936878b1d9d611e25f" -> "sha256:c930c314893fab9760589b0edb8979f5971ac32bbf1c1cdd53f5bddcef13e97d" [label=""];
  "sha256:c930c314893fab9760589b0edb8979f5971ac32bbf1c1cdd53f5bddcef13e97d" -> "sha256:0bb4b87004c86bdc62ecc3d99d4b6970aaf878abbdd44c3f7f62c15ef9975367" [label=""];
  "sha256:f7848e2ed3b540caabdeb05bf0547a23a48fafadafcb336aef02d944694f241a" -> "sha256:0bb4b87004c86bdc62ecc3d99d4b6970aaf878abbdd44c3f7f62c15ef9975367" [label=""];
  "sha256:0bb4b87004c86bdc62ecc3d99d4b6970aaf878abbdd44c3f7f62c15ef9975367" -> "sha256:906e0eb9ea5a10545c73db0d58ba71aaa0b8775aa8454c7da8e0ebade678ddad" [label=""];
  "sha256:f7848e2ed3b540caabdeb05bf0547a23a48fafadafcb336aef02d944694f241a" -> "sha256:906e0eb9ea5a10545c73db0d58ba71aaa0b8775aa8454c7da8e0ebade678ddad" [label=""];
  "sha256:906e0eb9ea5a10545c73db0d58ba71aaa0b8775aa8454c7da8e0ebade678ddad" -> "sha256:5f9f0992b566800743140558c3311ed415375e9695dad8af9d7f217a3a5083e0" [label=""];
  "sha256:f7848e2ed3b540caabdeb05bf0547a23a48fafadafcb336aef02d944694f241a" -> "sha256:5f9f0992b566800743140558c3311ed415375e9695dad8af9d7f217a3a5083e0" [label=""];
  "sha256:5f9f0992b566800743140558c3311ed415375e9695dad8af9d7f217a3a5083e0" -> "sha256:fccfbd9e2dd9421c9f8c56ce86a61cbeab85e62f598a8efbdb2a6e52633ddc68" [label=""];
}

