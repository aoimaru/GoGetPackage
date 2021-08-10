[app/sources/354166244.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:d5dce1a0e46092b913946036cdd00d5d29985759092bfe759a28b4f441a3504f" [label="/bin/sh -c yum install -y wget &&     wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm &&     rpm -ivh epel-release-7-5.noarch.rpm &&     wget -P /etc/yum.repos.d http://download.gluster.org/pub/gluster/glusterfs/LATEST/EPEL.repo/glusterfs-epel.repo &&     yum install -y glusterfs-server glusterfs glusterfs-fuse jq curl" shape="box"];
  "sha256:73a9ca3e0e7e6a56bba3fd0bec31bcc558e3a8a31aeaa01b21bf885813e1b3a9" [label="local://context" shape="ellipse"];
  "sha256:8ee544796b510a9474343496cd18e08979a110957e4b53a2526ef077e5081c72" [label="copy{src=/*.sh, dest=/opt/rancher/}" shape="note"];
  "sha256:2fbebc589b6c6db32b6a7e16f6cd6da78a1ef957544150f5109d5dc89b467cf2" [label="sha256:2fbebc589b6c6db32b6a7e16f6cd6da78a1ef957544150f5109d5dc89b467cf2" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:d5dce1a0e46092b913946036cdd00d5d29985759092bfe759a28b4f441a3504f" [label=""];
  "sha256:d5dce1a0e46092b913946036cdd00d5d29985759092bfe759a28b4f441a3504f" -> "sha256:8ee544796b510a9474343496cd18e08979a110957e4b53a2526ef077e5081c72" [label=""];
  "sha256:73a9ca3e0e7e6a56bba3fd0bec31bcc558e3a8a31aeaa01b21bf885813e1b3a9" -> "sha256:8ee544796b510a9474343496cd18e08979a110957e4b53a2526ef077e5081c72" [label=""];
  "sha256:8ee544796b510a9474343496cd18e08979a110957e4b53a2526ef077e5081c72" -> "sha256:2fbebc589b6c6db32b6a7e16f6cd6da78a1ef957544150f5109d5dc89b467cf2" [label=""];
}

