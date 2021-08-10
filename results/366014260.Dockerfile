[app/sources/366014260.Dockerfile]
digraph {
  "sha256:d19758662293df0f2eee93ddec580b57e3114637e1b274f4b0e906753d6c7a90" [label="docker-image://docker.io/library/fedora:26" shape="ellipse"];
  "sha256:1ae32b31b389ff2b2d15820123b714d37636fc32a1331ca84a6fcdc896db2336" [label="/bin/sh -c dnf -y install gmp-devel libffi-devel openssl-devel python-crypto     python-devel python-dnf python-pip python-setuptools python-virtualenv     redhat-rpm-config systemd &&     dnf -y group install \"C Development Tools and Libraries\"" shape="box"];
  "sha256:2b345bbd2b4cbb28a850a6dd241ae88154b59b233aa95a87d503418e4e69100f" [label="/bin/sh -c (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done);     rm -f /lib/systemd/system/multi-user.target.wants/*;    rm -f /etc/systemd/system/*.wants/*;    rm -f /lib/systemd/system/local-fs.target.wants/*;     rm -f /lib/systemd/system/sockets.target.wants/*udev*;     rm -f /lib/systemd/system/sockets.target.wants/*initctl*;     rm -f /lib/systemd/system/basic.target.wants/*;    rm -f /lib/systemd/system/anaconda.target.wants/*;" shape="box"];
  "sha256:abead103081eca44a63d61da4d5359b35e8f9c5cc14c4ee6c3ed3ff3c54e0c98" [label="/bin/sh -c pip install enum34 ipaddress wheel &&     pip install ansible ansible-lint" shape="box"];
  "sha256:c5029b78d2ccf411a42c30999ff4320257931e618d4ef142456e2a67618bfdb1" [label="local://context" shape="ellipse"];
  "sha256:8ada7e888399ed782a41c293bd716319d238bf211593dbcb177a7e2fbd017817" [label="copy{src=/.ansible-lint, dest=/}" shape="note"];
  "sha256:837b1a0ca55231035669127d82c996ac9d779d0b0ba7cd10eb90ba9b3b21a0ce" [label="sha256:837b1a0ca55231035669127d82c996ac9d779d0b0ba7cd10eb90ba9b3b21a0ce" shape="plaintext"];
  "sha256:d19758662293df0f2eee93ddec580b57e3114637e1b274f4b0e906753d6c7a90" -> "sha256:1ae32b31b389ff2b2d15820123b714d37636fc32a1331ca84a6fcdc896db2336" [label=""];
  "sha256:1ae32b31b389ff2b2d15820123b714d37636fc32a1331ca84a6fcdc896db2336" -> "sha256:2b345bbd2b4cbb28a850a6dd241ae88154b59b233aa95a87d503418e4e69100f" [label=""];
  "sha256:2b345bbd2b4cbb28a850a6dd241ae88154b59b233aa95a87d503418e4e69100f" -> "sha256:abead103081eca44a63d61da4d5359b35e8f9c5cc14c4ee6c3ed3ff3c54e0c98" [label=""];
  "sha256:abead103081eca44a63d61da4d5359b35e8f9c5cc14c4ee6c3ed3ff3c54e0c98" -> "sha256:8ada7e888399ed782a41c293bd716319d238bf211593dbcb177a7e2fbd017817" [label=""];
  "sha256:c5029b78d2ccf411a42c30999ff4320257931e618d4ef142456e2a67618bfdb1" -> "sha256:8ada7e888399ed782a41c293bd716319d238bf211593dbcb177a7e2fbd017817" [label=""];
  "sha256:8ada7e888399ed782a41c293bd716319d238bf211593dbcb177a7e2fbd017817" -> "sha256:837b1a0ca55231035669127d82c996ac9d779d0b0ba7cd10eb90ba9b3b21a0ce" [label=""];
}

