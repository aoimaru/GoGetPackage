[app/sources/192420184.Dockerfile]
digraph {
  "sha256:36aea01cfe65e9eb29a37d74b45d24bc65ae2bd028a137fcf49f6de9fc970545" [label="docker-image://docker.io/library/fedora:25" shape="ellipse"];
  "sha256:2b814c2f315814f04834c67ae15c29a6ef003b3dba9517b8bf5f9a679ce67209" [label="/bin/sh -c dnf -y install gmp-devel libffi-devel openssl-devel python-crypto     python-devel python-dnf python-pip python-setuptools python-virtualenv     redhat-rpm-config systemd &&     dnf -y group install \"C Development Tools and Libraries\"" shape="box"];
  "sha256:16a0ec06aa2580edf714c6d02e60309dc5c90be589efa2af1166d1775657bc07" [label="/bin/sh -c (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done);     rm -f /lib/systemd/system/multi-user.target.wants/*;    rm -f /etc/systemd/system/*.wants/*;    rm -f /lib/systemd/system/local-fs.target.wants/*;     rm -f /lib/systemd/system/sockets.target.wants/*udev*;     rm -f /lib/systemd/system/sockets.target.wants/*initctl*;     rm -f /lib/systemd/system/basic.target.wants/*;    rm -f /lib/systemd/system/anaconda.target.wants/*;" shape="box"];
  "sha256:0bc4eabf18a1ff26870f86302e03447b6819502618e48cd0e9700d54c65e5e84" [label="/bin/sh -c pip install enum34 ipaddress wheel &&     pip install ansible ansible-lint" shape="box"];
  "sha256:a2e30498546ca9e4ecb10eac64d4113a91f8c9588f37e4cc5562d45ad4ad3413" [label="local://context" shape="ellipse"];
  "sha256:d024944050cf80e9f6b55418fe709ff53676af2fa9f617bf8ffd1a5fde0ff294" [label="copy{src=/.ansible-lint, dest=/}" shape="note"];
  "sha256:d8902b779301c3b3eb88ea729fd1287a69230d2d4ff474d372ca2fc5fd312974" [label="sha256:d8902b779301c3b3eb88ea729fd1287a69230d2d4ff474d372ca2fc5fd312974" shape="plaintext"];
  "sha256:36aea01cfe65e9eb29a37d74b45d24bc65ae2bd028a137fcf49f6de9fc970545" -> "sha256:2b814c2f315814f04834c67ae15c29a6ef003b3dba9517b8bf5f9a679ce67209" [label=""];
  "sha256:2b814c2f315814f04834c67ae15c29a6ef003b3dba9517b8bf5f9a679ce67209" -> "sha256:16a0ec06aa2580edf714c6d02e60309dc5c90be589efa2af1166d1775657bc07" [label=""];
  "sha256:16a0ec06aa2580edf714c6d02e60309dc5c90be589efa2af1166d1775657bc07" -> "sha256:0bc4eabf18a1ff26870f86302e03447b6819502618e48cd0e9700d54c65e5e84" [label=""];
  "sha256:0bc4eabf18a1ff26870f86302e03447b6819502618e48cd0e9700d54c65e5e84" -> "sha256:d024944050cf80e9f6b55418fe709ff53676af2fa9f617bf8ffd1a5fde0ff294" [label=""];
  "sha256:a2e30498546ca9e4ecb10eac64d4113a91f8c9588f37e4cc5562d45ad4ad3413" -> "sha256:d024944050cf80e9f6b55418fe709ff53676af2fa9f617bf8ffd1a5fde0ff294" [label=""];
  "sha256:d024944050cf80e9f6b55418fe709ff53676af2fa9f617bf8ffd1a5fde0ff294" -> "sha256:d8902b779301c3b3eb88ea729fd1287a69230d2d4ff474d372ca2fc5fd312974" [label=""];
}

