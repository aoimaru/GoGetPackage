[app/sources/192426020.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:f3515ae37fff6e7612b3461426b741bb0740f1de03447e0ea59b75223926ba16" [label="/bin/sh -c yum -y install epel-release &&     yum -y install gmp-devel libffi-devel openssl-devel python-crypto     python-devel python-pip python-setuptools python-virtualenv     redhat-rpm-config &&     yum -y group install \"Development Tools\"" shape="box"];
  "sha256:12b51cae0e29f075476f5bed1797308aeb3e39e4a74df442bd7d398c2e338936" [label="/bin/sh -c (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done);     rm -f /lib/systemd/system/multi-user.target.wants/*;    rm -f /etc/systemd/system/*.wants/*;    rm -f /lib/systemd/system/local-fs.target.wants/*;     rm -f /lib/systemd/system/sockets.target.wants/*udev*;     rm -f /lib/systemd/system/sockets.target.wants/*initctl*;     rm -f /lib/systemd/system/basic.target.wants/*;    rm -f /lib/systemd/system/anaconda.target.wants/*;" shape="box"];
  "sha256:44d0592a3df6ea482c93ee119a47147c3da3d6ce66304a509a84c466a6feeb02" [label="/bin/sh -c pip install enum34 ipaddress wheel &&     pip install ansible ansible-lint" shape="box"];
  "sha256:42f5f1240b9e82bb2b46683e0c67da1a960567935b06942c50d0b237bbb2776b" [label="local://context" shape="ellipse"];
  "sha256:ab2b2a0a5f6eb6c376945af3d57c238f40e4c8153dbf5f58ee347bd59f69b622" [label="copy{src=/.ansible-lint, dest=/}" shape="note"];
  "sha256:18195990510488d43178f86e085ff9175380ddd04a7cebd72cc08ffd1bb6623c" [label="sha256:18195990510488d43178f86e085ff9175380ddd04a7cebd72cc08ffd1bb6623c" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:f3515ae37fff6e7612b3461426b741bb0740f1de03447e0ea59b75223926ba16" [label=""];
  "sha256:f3515ae37fff6e7612b3461426b741bb0740f1de03447e0ea59b75223926ba16" -> "sha256:12b51cae0e29f075476f5bed1797308aeb3e39e4a74df442bd7d398c2e338936" [label=""];
  "sha256:12b51cae0e29f075476f5bed1797308aeb3e39e4a74df442bd7d398c2e338936" -> "sha256:44d0592a3df6ea482c93ee119a47147c3da3d6ce66304a509a84c466a6feeb02" [label=""];
  "sha256:44d0592a3df6ea482c93ee119a47147c3da3d6ce66304a509a84c466a6feeb02" -> "sha256:ab2b2a0a5f6eb6c376945af3d57c238f40e4c8153dbf5f58ee347bd59f69b622" [label=""];
  "sha256:42f5f1240b9e82bb2b46683e0c67da1a960567935b06942c50d0b237bbb2776b" -> "sha256:ab2b2a0a5f6eb6c376945af3d57c238f40e4c8153dbf5f58ee347bd59f69b622" [label=""];
  "sha256:ab2b2a0a5f6eb6c376945af3d57c238f40e4c8153dbf5f58ee347bd59f69b622" -> "sha256:18195990510488d43178f86e085ff9175380ddd04a7cebd72cc08ffd1bb6623c" [label=""];
}

