[app/sources/205003669.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:bd945a3ede251aa4c38d0cf54dfa1c385deadc96d87c1134d2a4f12006a845b8" [label="/bin/sh -c yum -y swap -- remove fakesystemd -- install systemd systemd-libs" shape="box"];
  "sha256:7c8dc405dd8c413428de904fef60cb4e19a4330f37903ecc1c59d2bc9b187404" [label="/bin/sh -c yum -y update; yum clean all; (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done); rm -f /lib/systemd/system/multi-user.target.wants/*; rm -f /etc/systemd/system/*.wants/*; rm -f /lib/systemd/system/local-fs.target.wants/*; rm -f /lib/systemd/system/sockets.target.wants/*udev*; rm -f /lib/systemd/system/sockets.target.wants/*initctl*; rm -f /lib/systemd/system/basic.target.wants/*; rm -f /lib/systemd/system/anaconda.target.wants/*;" shape="box"];
  "sha256:42d2c05fe4da8fbb14699a122e219d3e80eacc21af7acd34eeef62ffe3d37aa0" [label="/bin/sh -c yum -y install epel-release" shape="box"];
  "sha256:44e3b91875c031b79ce595750b50c012e1d320849cfeb67d577dc0cd9e9dac5e" [label="/bin/sh -c yum -y install git python-setuptools gcc sudo libffi-devel python-devel openssl-devel" shape="box"];
  "sha256:d32c6c2e5d09a967923f640e2d7f9ed9d962b59b400555bbbe3e179d4ec345be" [label="/bin/sh -c yum clean all" shape="box"];
  "sha256:9e8a633c473514fe9241805e95ce8facbfb8dd4ba661979ac186fe8989d2ddaf" [label="/bin/sh -c easy_install pip" shape="box"];
  "sha256:04716615e97dbf53843aa1672e2b7e06c9d0510b69d406a61b39bb0490e2b997" [label="/bin/sh -c pip install ansible" shape="box"];
  "sha256:190f0b3fc3a28f70abb0c1d7ac8000d7fc13176732aee7264e1b521edcbe13a3" [label="/bin/sh -c sed -i -e 's/^\\(Defaults\\s*requiretty\\)/#--- \\1/'  /etc/sudoers" shape="box"];
  "sha256:b0a32de9b12058b9c0e1e40aea3b172fdea9b66aed553bc4ec05fa75f0680ad5" [label="/bin/sh -c mkdir - p /etc/ansible" shape="box"];
  "sha256:a909d25d862224fff8165ce1a08f5e54ef4172e76d734290e2aa5fcdf53b5237" [label="/bin/sh -c echo -e '[local]\\nlocalhost ansible_connection=local' > /etc/ansible/hosts" shape="box"];
  "sha256:816f148cf7ce0cb34bf251f6c1921191d04d1e219ab71f10705360e5ef4ec01f" [label="sha256:816f148cf7ce0cb34bf251f6c1921191d04d1e219ab71f10705360e5ef4ec01f" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:bd945a3ede251aa4c38d0cf54dfa1c385deadc96d87c1134d2a4f12006a845b8" [label=""];
  "sha256:bd945a3ede251aa4c38d0cf54dfa1c385deadc96d87c1134d2a4f12006a845b8" -> "sha256:7c8dc405dd8c413428de904fef60cb4e19a4330f37903ecc1c59d2bc9b187404" [label=""];
  "sha256:7c8dc405dd8c413428de904fef60cb4e19a4330f37903ecc1c59d2bc9b187404" -> "sha256:42d2c05fe4da8fbb14699a122e219d3e80eacc21af7acd34eeef62ffe3d37aa0" [label=""];
  "sha256:42d2c05fe4da8fbb14699a122e219d3e80eacc21af7acd34eeef62ffe3d37aa0" -> "sha256:44e3b91875c031b79ce595750b50c012e1d320849cfeb67d577dc0cd9e9dac5e" [label=""];
  "sha256:44e3b91875c031b79ce595750b50c012e1d320849cfeb67d577dc0cd9e9dac5e" -> "sha256:d32c6c2e5d09a967923f640e2d7f9ed9d962b59b400555bbbe3e179d4ec345be" [label=""];
  "sha256:d32c6c2e5d09a967923f640e2d7f9ed9d962b59b400555bbbe3e179d4ec345be" -> "sha256:9e8a633c473514fe9241805e95ce8facbfb8dd4ba661979ac186fe8989d2ddaf" [label=""];
  "sha256:9e8a633c473514fe9241805e95ce8facbfb8dd4ba661979ac186fe8989d2ddaf" -> "sha256:04716615e97dbf53843aa1672e2b7e06c9d0510b69d406a61b39bb0490e2b997" [label=""];
  "sha256:04716615e97dbf53843aa1672e2b7e06c9d0510b69d406a61b39bb0490e2b997" -> "sha256:190f0b3fc3a28f70abb0c1d7ac8000d7fc13176732aee7264e1b521edcbe13a3" [label=""];
  "sha256:190f0b3fc3a28f70abb0c1d7ac8000d7fc13176732aee7264e1b521edcbe13a3" -> "sha256:b0a32de9b12058b9c0e1e40aea3b172fdea9b66aed553bc4ec05fa75f0680ad5" [label=""];
  "sha256:b0a32de9b12058b9c0e1e40aea3b172fdea9b66aed553bc4ec05fa75f0680ad5" -> "sha256:a909d25d862224fff8165ce1a08f5e54ef4172e76d734290e2aa5fcdf53b5237" [label=""];
  "sha256:a909d25d862224fff8165ce1a08f5e54ef4172e76d734290e2aa5fcdf53b5237" -> "sha256:816f148cf7ce0cb34bf251f6c1921191d04d1e219ab71f10705360e5ef4ec01f" [label=""];
}

