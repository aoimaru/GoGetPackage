[app/sources/192424011.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:f3515ae37fff6e7612b3461426b741bb0740f1de03447e0ea59b75223926ba16" [label="/bin/sh -c yum -y install epel-release &&     yum -y install gmp-devel libffi-devel openssl-devel python-crypto     python-devel python-pip python-setuptools python-virtualenv     redhat-rpm-config &&     yum -y group install \"Development Tools\"" shape="box"];
  "sha256:12b51cae0e29f075476f5bed1797308aeb3e39e4a74df442bd7d398c2e338936" [label="/bin/sh -c (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done);     rm -f /lib/systemd/system/multi-user.target.wants/*;    rm -f /etc/systemd/system/*.wants/*;    rm -f /lib/systemd/system/local-fs.target.wants/*;     rm -f /lib/systemd/system/sockets.target.wants/*udev*;     rm -f /lib/systemd/system/sockets.target.wants/*initctl*;     rm -f /lib/systemd/system/basic.target.wants/*;    rm -f /lib/systemd/system/anaconda.target.wants/*;" shape="box"];
  "sha256:44d0592a3df6ea482c93ee119a47147c3da3d6ce66304a509a84c466a6feeb02" [label="/bin/sh -c pip install enum34 ipaddress wheel &&     pip install ansible ansible-lint" shape="box"];
  "sha256:ad0ccc7f062e3c1ee6b93d74e44ea8d428368481a1912eea609135f488eab1bc" [label="local://context" shape="ellipse"];
  "sha256:ec26d47a5bcc46a790b741ede5f5d57a07ef2da584b29112191822413ea20e58" [label="copy{src=/.ansible-lint, dest=/}" shape="note"];
  "sha256:bb6c3065999dd0de0a6f11b7a86d6506cc1e7fa5fbac4ee9dd7562ea3d2e7df9" [label="sha256:bb6c3065999dd0de0a6f11b7a86d6506cc1e7fa5fbac4ee9dd7562ea3d2e7df9" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:f3515ae37fff6e7612b3461426b741bb0740f1de03447e0ea59b75223926ba16" [label=""];
  "sha256:f3515ae37fff6e7612b3461426b741bb0740f1de03447e0ea59b75223926ba16" -> "sha256:12b51cae0e29f075476f5bed1797308aeb3e39e4a74df442bd7d398c2e338936" [label=""];
  "sha256:12b51cae0e29f075476f5bed1797308aeb3e39e4a74df442bd7d398c2e338936" -> "sha256:44d0592a3df6ea482c93ee119a47147c3da3d6ce66304a509a84c466a6feeb02" [label=""];
  "sha256:44d0592a3df6ea482c93ee119a47147c3da3d6ce66304a509a84c466a6feeb02" -> "sha256:ec26d47a5bcc46a790b741ede5f5d57a07ef2da584b29112191822413ea20e58" [label=""];
  "sha256:ad0ccc7f062e3c1ee6b93d74e44ea8d428368481a1912eea609135f488eab1bc" -> "sha256:ec26d47a5bcc46a790b741ede5f5d57a07ef2da584b29112191822413ea20e58" [label=""];
  "sha256:ec26d47a5bcc46a790b741ede5f5d57a07ef2da584b29112191822413ea20e58" -> "sha256:bb6c3065999dd0de0a6f11b7a86d6506cc1e7fa5fbac4ee9dd7562ea3d2e7df9" [label=""];
}

