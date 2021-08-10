[app/sources/192420744.Dockerfile]
digraph {
  "sha256:00ffb9be2adbb6d7a44f784e2f971d2f7f883148eb7ae52d92212ba9ea1109c9" [label="local://context" shape="ellipse"];
  "sha256:4717eb240fd757944b48f36740d44b96bd2a8a81ca250e6bcf631f8700988a83" [label="docker-image://docker.io/library/fedora:28" shape="ellipse"];
  "sha256:616f4ba7948a5ce092e0741c53895c4c8f56f40eb1abc0ceb3df54ddbaf7ea24" [label="/bin/sh -c dnf -y install gmp-devel libffi-devel openssl-devel python-crypto     python-devel python-dnf python-pip python-setuptools python-virtualenv     redhat-rpm-config systemd &&     dnf -y group install \"C Development Tools and Libraries\"" shape="box"];
  "sha256:5324874d604c3da019e98e04841fab9d20c1dda7101fe9da7dfe5dec02afd063" [label="/bin/sh -c (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done);     rm -f /lib/systemd/system/multi-user.target.wants/*;    rm -f /etc/systemd/system/*.wants/*;    rm -f /lib/systemd/system/local-fs.target.wants/*;     rm -f /lib/systemd/system/sockets.target.wants/*udev*;     rm -f /lib/systemd/system/sockets.target.wants/*initctl*;     rm -f /lib/systemd/system/basic.target.wants/*;    rm -f /lib/systemd/system/anaconda.target.wants/*;" shape="box"];
  "sha256:1d881f03706fc9d9d24868294afcf994611e2f9c78ff22b458686da8da9cb9f7" [label="/bin/sh -c pip install enum34 ipaddress wheel &&     pip install ansible ansible-lint" shape="box"];
  "sha256:174d3220b86bcbf1898464f37c7c26a0a200b5eb49ce64e1393fa5d259510b3d" [label="copy{src=/.ansible-lint, dest=/}" shape="note"];
  "sha256:1ac781de7328c3ffb3d6b09e49e080d18bf15c7995768124a2f07f0ec08825e2" [label="sha256:1ac781de7328c3ffb3d6b09e49e080d18bf15c7995768124a2f07f0ec08825e2" shape="plaintext"];
  "sha256:4717eb240fd757944b48f36740d44b96bd2a8a81ca250e6bcf631f8700988a83" -> "sha256:616f4ba7948a5ce092e0741c53895c4c8f56f40eb1abc0ceb3df54ddbaf7ea24" [label=""];
  "sha256:616f4ba7948a5ce092e0741c53895c4c8f56f40eb1abc0ceb3df54ddbaf7ea24" -> "sha256:5324874d604c3da019e98e04841fab9d20c1dda7101fe9da7dfe5dec02afd063" [label=""];
  "sha256:5324874d604c3da019e98e04841fab9d20c1dda7101fe9da7dfe5dec02afd063" -> "sha256:1d881f03706fc9d9d24868294afcf994611e2f9c78ff22b458686da8da9cb9f7" [label=""];
  "sha256:1d881f03706fc9d9d24868294afcf994611e2f9c78ff22b458686da8da9cb9f7" -> "sha256:174d3220b86bcbf1898464f37c7c26a0a200b5eb49ce64e1393fa5d259510b3d" [label=""];
  "sha256:00ffb9be2adbb6d7a44f784e2f971d2f7f883148eb7ae52d92212ba9ea1109c9" -> "sha256:174d3220b86bcbf1898464f37c7c26a0a200b5eb49ce64e1393fa5d259510b3d" [label=""];
  "sha256:174d3220b86bcbf1898464f37c7c26a0a200b5eb49ce64e1393fa5d259510b3d" -> "sha256:1ac781de7328c3ffb3d6b09e49e080d18bf15c7995768124a2f07f0ec08825e2" [label=""];
}

