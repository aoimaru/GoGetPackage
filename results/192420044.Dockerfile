[app/sources/192420044.Dockerfile]
digraph {
  "sha256:539680138299151bc5c88eebbabdf3860de54121c76ba4e7fcaec0fc5dcfd699" [label="docker-image://docker.io/library/fedora:27" shape="ellipse"];
  "sha256:0b1965855eecced4d4694d9d7ba659b0a1cdc8248898013d847af7a8aa064530" [label="/bin/sh -c dnf -y install gmp-devel libffi-devel openssl-devel python-crypto     python-devel python-dnf python-pip python-setuptools python-virtualenv     redhat-rpm-config systemd &&     dnf -y group install \"C Development Tools and Libraries\"" shape="box"];
  "sha256:b2dc312d613d3abf89cac32cffd13a4ddd804955b789cad802cf13d8cb35364f" [label="/bin/sh -c (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done);     rm -f /lib/systemd/system/multi-user.target.wants/*;    rm -f /etc/systemd/system/*.wants/*;    rm -f /lib/systemd/system/local-fs.target.wants/*;     rm -f /lib/systemd/system/sockets.target.wants/*udev*;     rm -f /lib/systemd/system/sockets.target.wants/*initctl*;     rm -f /lib/systemd/system/basic.target.wants/*;    rm -f /lib/systemd/system/anaconda.target.wants/*;" shape="box"];
  "sha256:6a7a7d56965124a001dbae0d061fe2e17f3c6e4b5cd0f7f5e3e9fbadccbf756f" [label="/bin/sh -c pip install enum34 ipaddress wheel &&     pip install ansible ansible-lint" shape="box"];
  "sha256:876a9a08080a37a85d411ebdb1bd03b409ff5e04636c53ea6ae7fd281b14a4b7" [label="local://context" shape="ellipse"];
  "sha256:c821518bcd14a9d786448c4599ba69bc23ca5055a3a1c7961a933347a4a5802b" [label="copy{src=/.ansible-lint, dest=/}" shape="note"];
  "sha256:3c18e6d8e423bc1005fbaefbdbc8582b62d843e3dc44c4262f0498a378dc6bfe" [label="sha256:3c18e6d8e423bc1005fbaefbdbc8582b62d843e3dc44c4262f0498a378dc6bfe" shape="plaintext"];
  "sha256:539680138299151bc5c88eebbabdf3860de54121c76ba4e7fcaec0fc5dcfd699" -> "sha256:0b1965855eecced4d4694d9d7ba659b0a1cdc8248898013d847af7a8aa064530" [label=""];
  "sha256:0b1965855eecced4d4694d9d7ba659b0a1cdc8248898013d847af7a8aa064530" -> "sha256:b2dc312d613d3abf89cac32cffd13a4ddd804955b789cad802cf13d8cb35364f" [label=""];
  "sha256:b2dc312d613d3abf89cac32cffd13a4ddd804955b789cad802cf13d8cb35364f" -> "sha256:6a7a7d56965124a001dbae0d061fe2e17f3c6e4b5cd0f7f5e3e9fbadccbf756f" [label=""];
  "sha256:6a7a7d56965124a001dbae0d061fe2e17f3c6e4b5cd0f7f5e3e9fbadccbf756f" -> "sha256:c821518bcd14a9d786448c4599ba69bc23ca5055a3a1c7961a933347a4a5802b" [label=""];
  "sha256:876a9a08080a37a85d411ebdb1bd03b409ff5e04636c53ea6ae7fd281b14a4b7" -> "sha256:c821518bcd14a9d786448c4599ba69bc23ca5055a3a1c7961a933347a4a5802b" [label=""];
  "sha256:c821518bcd14a9d786448c4599ba69bc23ca5055a3a1c7961a933347a4a5802b" -> "sha256:3c18e6d8e423bc1005fbaefbdbc8582b62d843e3dc44c4262f0498a378dc6bfe" [label=""];
}

