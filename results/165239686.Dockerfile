[app/sources/165239686.Dockerfile]
digraph {
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" [label="docker-image://docker.io/library/centos:centos7" shape="ellipse"];
  "sha256:8299485861db989f72a182c02d10c6076d25a091bc7b8e596e58ad95c4aa5524" [label="/bin/sh -c yum -y swap -- remove fakesystemd -- install systemd systemd-libs initscripts" shape="box"];
  "sha256:af668384f5bb5eeb31f4842b23e78407e3ea195c5cfa9abf720492f3495501bc" [label="/bin/sh -c yum -y update; yum clean all; (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done); rm -f /lib/systemd/system/multi-user.target.wants/*;rm -f /etc/systemd/system/*.wants/*;rm -f /lib/systemd/system/local-fs.target.wants/*; rm -f /lib/systemd/system/sockets.target.wants/*udev*; rm -f /lib/systemd/system/sockets.target.wants/*initctl*; rm -f /lib/systemd/system/basic.target.wants/*;rm -f /lib/systemd/system/anaconda.target.wants/*;" shape="box"];
  "sha256:e1faece36f8f4bf8aa19ae644fde2fc51eaff529d06b2307c1fca6250b0e75a4" [label="/bin/sh -c yum -y install openssh-server openssh-clients" shape="box"];
  "sha256:20fcb3d5fd939f7bee4e89ecc33d9f5c7b53fec92d850322579127fd6d3d72ce" [label="/bin/sh -c yum -y install http://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm" shape="box"];
  "sha256:2d4453278e76e3a884626eb483803045afdf5ee09c32b7e8ddaf57c75d643f1b" [label="/bin/sh -c yum -y install puppet-agent hostname" shape="box"];
  "sha256:d6144ee67a2767763ecb9c8731f95f758ed007143a769922710265d3694bf396" [label="/bin/sh -c yum -y install sudo" shape="box"];
  "sha256:ddddd3cca8a809b8cf01abf3303666f1206c25e69da19b11584ba606d5e5783f" [label="/bin/sh -c useradd --create-home -s /bin/bash vagrant" shape="box"];
  "sha256:f7aaff3d62b38d847ddb47969b0c498553459bd00f33fe2a24ced7c4a773d19c" [label="/bin/sh -c echo -n 'vagrant:vagrant' | chpasswd" shape="box"];
  "sha256:d9155656ef42ebe6b503cab89faa511e643dc0c7ca95ae8633c89af10d5f4495" [label="/bin/sh -c echo 'vagrant ALL = NOPASSWD: ALL' > /etc/sudoers.d/vagrant" shape="box"];
  "sha256:a160b7e9c64f1bbe94f2b78b074876cc0d21fae571109f3824cadd5f156f0092" [label="/bin/sh -c chmod 440 /etc/sudoers.d/vagrant" shape="box"];
  "sha256:814e0afffad46944a0d40e1ee94dd316105eda1c35be446d477c3c83373f7497" [label="/bin/sh -c mkdir -p /home/vagrant/.ssh" shape="box"];
  "sha256:7f5fa4b68b50be983af1d41cd2641fa4211016589c3258b2d60decf90f28eddb" [label="/bin/sh -c chmod 700 /home/vagrant/.ssh" shape="box"];
  "sha256:5aa98614b268b21e4b06acbd7305fc2a161f6fb79b427e95ba7ac38cf4e0d1fb" [label="/bin/sh -c echo \"ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA6NF8iallvQVp22WDkTkyrtvp9eWW6A8YVr+kz4TjGYe7gHzIw+niNltGEFHzD8+v1I2YJ6oXevct1YeS0o9HZyN1Q9qgCgzUFtdOKLv6IedplqoPkcmF0aYet2PkEDo3MlTBckFXPITAMzF8dJSIFo9D8HfdOV0IAdx4O7PtixWKn5y2hMNG0zQPyUecp4pzC6kivAIhyfHilFR61RGL+GPXQ2MWZWFYbAGjyiYJnAmCP3NOTd0jMZEnDkbUvxhMmBYSdETk1rRgm+R4LOzFUGaHqHDLKLX+FIPKcF96hrucXzcWyLbIbEgE98OHlnVYCzRdK8jlqm8tehUc9c9WhQ== vagrant insecure public key\" > /home/vagrant/.ssh/authorized_keys" shape="box"];
  "sha256:2947ce078f164acb984dd0293bd63ac2eda1fda48796d3ecf48881584dbd3b05" [label="/bin/sh -c chmod 600 /home/vagrant/.ssh/authorized_keys" shape="box"];
  "sha256:dce879390af3011fbfabe06a893ec317f5fd4c17a109dd5965e526364d7ac557" [label="/bin/sh -c chown -R vagrant:vagrant /home/vagrant/.ssh" shape="box"];
  "sha256:c96e2a843f1980cd8d1cb25a6fe15b9fd6acfd5fd2e82f8123f768472e899f8c" [label="/bin/sh -c sed -i -e 's/Defaults.*requiretty/#&/' /etc/sudoers" shape="box"];
  "sha256:d4d830aca13f1d04ef7e4d4146ac4597d3ba9a5401e891cc4b0fd48a41873626" [label="/bin/sh -c sed -i -e 's/\\(UsePAM \\)yes/\\1 no/' /etc/ssh/sshd_config" shape="box"];
  "sha256:3cf0a38a49c6d379729f97ddde86a5d0967014307fc36cc16aa4efbb2eec13d9" [label="/bin/sh -c systemctl enable sshd.service" shape="box"];
  "sha256:600c137942bb60c0519278cda2c1635ea271ace4ba139776456a2ce3b5ddfc11" [label="sha256:600c137942bb60c0519278cda2c1635ea271ace4ba139776456a2ce3b5ddfc11" shape="plaintext"];
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" -> "sha256:8299485861db989f72a182c02d10c6076d25a091bc7b8e596e58ad95c4aa5524" [label=""];
  "sha256:8299485861db989f72a182c02d10c6076d25a091bc7b8e596e58ad95c4aa5524" -> "sha256:af668384f5bb5eeb31f4842b23e78407e3ea195c5cfa9abf720492f3495501bc" [label=""];
  "sha256:af668384f5bb5eeb31f4842b23e78407e3ea195c5cfa9abf720492f3495501bc" -> "sha256:e1faece36f8f4bf8aa19ae644fde2fc51eaff529d06b2307c1fca6250b0e75a4" [label=""];
  "sha256:e1faece36f8f4bf8aa19ae644fde2fc51eaff529d06b2307c1fca6250b0e75a4" -> "sha256:20fcb3d5fd939f7bee4e89ecc33d9f5c7b53fec92d850322579127fd6d3d72ce" [label=""];
  "sha256:20fcb3d5fd939f7bee4e89ecc33d9f5c7b53fec92d850322579127fd6d3d72ce" -> "sha256:2d4453278e76e3a884626eb483803045afdf5ee09c32b7e8ddaf57c75d643f1b" [label=""];
  "sha256:2d4453278e76e3a884626eb483803045afdf5ee09c32b7e8ddaf57c75d643f1b" -> "sha256:d6144ee67a2767763ecb9c8731f95f758ed007143a769922710265d3694bf396" [label=""];
  "sha256:d6144ee67a2767763ecb9c8731f95f758ed007143a769922710265d3694bf396" -> "sha256:ddddd3cca8a809b8cf01abf3303666f1206c25e69da19b11584ba606d5e5783f" [label=""];
  "sha256:ddddd3cca8a809b8cf01abf3303666f1206c25e69da19b11584ba606d5e5783f" -> "sha256:f7aaff3d62b38d847ddb47969b0c498553459bd00f33fe2a24ced7c4a773d19c" [label=""];
  "sha256:f7aaff3d62b38d847ddb47969b0c498553459bd00f33fe2a24ced7c4a773d19c" -> "sha256:d9155656ef42ebe6b503cab89faa511e643dc0c7ca95ae8633c89af10d5f4495" [label=""];
  "sha256:d9155656ef42ebe6b503cab89faa511e643dc0c7ca95ae8633c89af10d5f4495" -> "sha256:a160b7e9c64f1bbe94f2b78b074876cc0d21fae571109f3824cadd5f156f0092" [label=""];
  "sha256:a160b7e9c64f1bbe94f2b78b074876cc0d21fae571109f3824cadd5f156f0092" -> "sha256:814e0afffad46944a0d40e1ee94dd316105eda1c35be446d477c3c83373f7497" [label=""];
  "sha256:814e0afffad46944a0d40e1ee94dd316105eda1c35be446d477c3c83373f7497" -> "sha256:7f5fa4b68b50be983af1d41cd2641fa4211016589c3258b2d60decf90f28eddb" [label=""];
  "sha256:7f5fa4b68b50be983af1d41cd2641fa4211016589c3258b2d60decf90f28eddb" -> "sha256:5aa98614b268b21e4b06acbd7305fc2a161f6fb79b427e95ba7ac38cf4e0d1fb" [label=""];
  "sha256:5aa98614b268b21e4b06acbd7305fc2a161f6fb79b427e95ba7ac38cf4e0d1fb" -> "sha256:2947ce078f164acb984dd0293bd63ac2eda1fda48796d3ecf48881584dbd3b05" [label=""];
  "sha256:2947ce078f164acb984dd0293bd63ac2eda1fda48796d3ecf48881584dbd3b05" -> "sha256:dce879390af3011fbfabe06a893ec317f5fd4c17a109dd5965e526364d7ac557" [label=""];
  "sha256:dce879390af3011fbfabe06a893ec317f5fd4c17a109dd5965e526364d7ac557" -> "sha256:c96e2a843f1980cd8d1cb25a6fe15b9fd6acfd5fd2e82f8123f768472e899f8c" [label=""];
  "sha256:c96e2a843f1980cd8d1cb25a6fe15b9fd6acfd5fd2e82f8123f768472e899f8c" -> "sha256:d4d830aca13f1d04ef7e4d4146ac4597d3ba9a5401e891cc4b0fd48a41873626" [label=""];
  "sha256:d4d830aca13f1d04ef7e4d4146ac4597d3ba9a5401e891cc4b0fd48a41873626" -> "sha256:3cf0a38a49c6d379729f97ddde86a5d0967014307fc36cc16aa4efbb2eec13d9" [label=""];
  "sha256:3cf0a38a49c6d379729f97ddde86a5d0967014307fc36cc16aa4efbb2eec13d9" -> "sha256:600c137942bb60c0519278cda2c1635ea271ace4ba139776456a2ce3b5ddfc11" [label=""];
}

