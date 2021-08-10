[app/sources/260509157.Dockerfile]
digraph {
  "sha256:a82657dc9009ab4ecab0a966d899b2972800cfe1ee9d42fc736a0cac1581ac52" [label="docker-image://docker.io/library/centos:7@sha256:0f4ec88e21daf75124b8a9e5ca03c37a5e937e0e108a255d890492430789b60e" shape="ellipse"];
  "sha256:5bb7cdd5bd1f56da591af841d8598134a0bfe10aa20855b618bf308c9dd97510" [label="/bin/sh -c yum -y swap -- remove fakesystemd -- install systemd systemd-libs" shape="box"];
  "sha256:6a27f632856ff75c1354dd9e0e470eb1869b76589a93094b28908b1ab8566c0a" [label="/bin/sh -c yum -y update; yum clean all; (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done); rm -f /lib/systemd/system/multi-user.target.wants/*; rm -f /etc/systemd/system/*.wants/*; rm -f /lib/systemd/system/local-fs.target.wants/*; rm -f /lib/systemd/system/sockets.target.wants/*udev*; rm -f /lib/systemd/system/sockets.target.wants/*initctl*; rm -f /lib/systemd/system/basic.target.wants/*; rm -f /lib/systemd/system/anaconda.target.wants/*;" shape="box"];
  "sha256:35cb3c5757e142595e9fca52655d2906f0cecaf17bef4e0e9f6c42dce7a89740" [label="/bin/sh -c yum -y install epel-release" shape="box"];
  "sha256:ced8ea713f201c551bc5675392bad972db1a95a246c181c592336f93fdb5a7d0" [label="/bin/sh -c yum -y install git ansible sudo python-pip" shape="box"];
  "sha256:f39bb8cd76a97bf3b51ddfcec2354a4de62e0c22b2fd6b34c357d6569218be9f" [label="/bin/sh -c yum clean all" shape="box"];
  "sha256:e564290ab029b76fa9ea2e3e28d91ac075d603161ebc1e50563a257ca75d8c76" [label="/bin/sh -c sed -i -e 's/^\\(Defaults\\s*requiretty\\)/#--- \\1/'  /etc/sudoers" shape="box"];
  "sha256:cb29a61cdaa3800631e5251a893c806ff3130114a4526320d1de72251c2e6cd5" [label="/bin/sh -c echo -e '[local]\\nlocalhost ansible_connection=local' > /etc/ansible/hosts" shape="box"];
  "sha256:a52214be8e9352efc6358c6f78193774d71c21dafc25fde95d2aff378f57d43f" [label="sha256:a52214be8e9352efc6358c6f78193774d71c21dafc25fde95d2aff378f57d43f" shape="plaintext"];
  "sha256:a82657dc9009ab4ecab0a966d899b2972800cfe1ee9d42fc736a0cac1581ac52" -> "sha256:5bb7cdd5bd1f56da591af841d8598134a0bfe10aa20855b618bf308c9dd97510" [label=""];
  "sha256:5bb7cdd5bd1f56da591af841d8598134a0bfe10aa20855b618bf308c9dd97510" -> "sha256:6a27f632856ff75c1354dd9e0e470eb1869b76589a93094b28908b1ab8566c0a" [label=""];
  "sha256:6a27f632856ff75c1354dd9e0e470eb1869b76589a93094b28908b1ab8566c0a" -> "sha256:35cb3c5757e142595e9fca52655d2906f0cecaf17bef4e0e9f6c42dce7a89740" [label=""];
  "sha256:35cb3c5757e142595e9fca52655d2906f0cecaf17bef4e0e9f6c42dce7a89740" -> "sha256:ced8ea713f201c551bc5675392bad972db1a95a246c181c592336f93fdb5a7d0" [label=""];
  "sha256:ced8ea713f201c551bc5675392bad972db1a95a246c181c592336f93fdb5a7d0" -> "sha256:f39bb8cd76a97bf3b51ddfcec2354a4de62e0c22b2fd6b34c357d6569218be9f" [label=""];
  "sha256:f39bb8cd76a97bf3b51ddfcec2354a4de62e0c22b2fd6b34c357d6569218be9f" -> "sha256:e564290ab029b76fa9ea2e3e28d91ac075d603161ebc1e50563a257ca75d8c76" [label=""];
  "sha256:e564290ab029b76fa9ea2e3e28d91ac075d603161ebc1e50563a257ca75d8c76" -> "sha256:cb29a61cdaa3800631e5251a893c806ff3130114a4526320d1de72251c2e6cd5" [label=""];
  "sha256:cb29a61cdaa3800631e5251a893c806ff3130114a4526320d1de72251c2e6cd5" -> "sha256:a52214be8e9352efc6358c6f78193774d71c21dafc25fde95d2aff378f57d43f" [label=""];
}

