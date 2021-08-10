[app/sources/366062363.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:f3515ae37fff6e7612b3461426b741bb0740f1de03447e0ea59b75223926ba16" [label="/bin/sh -c yum -y install epel-release &&     yum -y install gmp-devel libffi-devel openssl-devel python-crypto     python-devel python-pip python-setuptools python-virtualenv     redhat-rpm-config &&     yum -y group install \"Development Tools\"" shape="box"];
  "sha256:12b51cae0e29f075476f5bed1797308aeb3e39e4a74df442bd7d398c2e338936" [label="/bin/sh -c (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done);     rm -f /lib/systemd/system/multi-user.target.wants/*;    rm -f /etc/systemd/system/*.wants/*;    rm -f /lib/systemd/system/local-fs.target.wants/*;     rm -f /lib/systemd/system/sockets.target.wants/*udev*;     rm -f /lib/systemd/system/sockets.target.wants/*initctl*;     rm -f /lib/systemd/system/basic.target.wants/*;    rm -f /lib/systemd/system/anaconda.target.wants/*;" shape="box"];
  "sha256:44d0592a3df6ea482c93ee119a47147c3da3d6ce66304a509a84c466a6feeb02" [label="/bin/sh -c pip install enum34 ipaddress wheel &&     pip install ansible ansible-lint" shape="box"];
  "sha256:1dbf187ed993c6e9d0ec3e4edf4c09e25217e5f32874d522cf11e532aa7f880f" [label="local://context" shape="ellipse"];
  "sha256:f2cc993ce28226fd365d2b90befb81709e71b03c490950c4ad240932bb423358" [label="copy{src=/.ansible-lint, dest=/}" shape="note"];
  "sha256:6fd9f63ff041310af26302213dd5686887a9c07e72e68d4392558becb66d80a9" [label="sha256:6fd9f63ff041310af26302213dd5686887a9c07e72e68d4392558becb66d80a9" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:f3515ae37fff6e7612b3461426b741bb0740f1de03447e0ea59b75223926ba16" [label=""];
  "sha256:f3515ae37fff6e7612b3461426b741bb0740f1de03447e0ea59b75223926ba16" -> "sha256:12b51cae0e29f075476f5bed1797308aeb3e39e4a74df442bd7d398c2e338936" [label=""];
  "sha256:12b51cae0e29f075476f5bed1797308aeb3e39e4a74df442bd7d398c2e338936" -> "sha256:44d0592a3df6ea482c93ee119a47147c3da3d6ce66304a509a84c466a6feeb02" [label=""];
  "sha256:44d0592a3df6ea482c93ee119a47147c3da3d6ce66304a509a84c466a6feeb02" -> "sha256:f2cc993ce28226fd365d2b90befb81709e71b03c490950c4ad240932bb423358" [label=""];
  "sha256:1dbf187ed993c6e9d0ec3e4edf4c09e25217e5f32874d522cf11e532aa7f880f" -> "sha256:f2cc993ce28226fd365d2b90befb81709e71b03c490950c4ad240932bb423358" [label=""];
  "sha256:f2cc993ce28226fd365d2b90befb81709e71b03c490950c4ad240932bb423358" -> "sha256:6fd9f63ff041310af26302213dd5686887a9c07e72e68d4392558becb66d80a9" [label=""];
}

