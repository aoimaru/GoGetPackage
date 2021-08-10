[app/sources/192420011.Dockerfile]
digraph {
  "sha256:4717eb240fd757944b48f36740d44b96bd2a8a81ca250e6bcf631f8700988a83" [label="docker-image://docker.io/library/fedora:28" shape="ellipse"];
  "sha256:616f4ba7948a5ce092e0741c53895c4c8f56f40eb1abc0ceb3df54ddbaf7ea24" [label="/bin/sh -c dnf -y install gmp-devel libffi-devel openssl-devel python-crypto     python-devel python-dnf python-pip python-setuptools python-virtualenv     redhat-rpm-config systemd &&     dnf -y group install \"C Development Tools and Libraries\"" shape="box"];
  "sha256:5324874d604c3da019e98e04841fab9d20c1dda7101fe9da7dfe5dec02afd063" [label="/bin/sh -c (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done);     rm -f /lib/systemd/system/multi-user.target.wants/*;    rm -f /etc/systemd/system/*.wants/*;    rm -f /lib/systemd/system/local-fs.target.wants/*;     rm -f /lib/systemd/system/sockets.target.wants/*udev*;     rm -f /lib/systemd/system/sockets.target.wants/*initctl*;     rm -f /lib/systemd/system/basic.target.wants/*;    rm -f /lib/systemd/system/anaconda.target.wants/*;" shape="box"];
  "sha256:1d881f03706fc9d9d24868294afcf994611e2f9c78ff22b458686da8da9cb9f7" [label="/bin/sh -c pip install enum34 ipaddress wheel &&     pip install ansible ansible-lint" shape="box"];
  "sha256:4a3eefbfcea23e32b395a6ab267f4ecb5548cc57481fbbb0ef8c7bdc3b6ef2dc" [label="local://context" shape="ellipse"];
  "sha256:34c3b45ef064a2cee24a11b72736b80f8e285638c0631d9bffdddf11b0347542" [label="copy{src=/.ansible-lint, dest=/}" shape="note"];
  "sha256:c5f671be6c7e410a245839366033877191a01d88529343214e83f12af86d0a4f" [label="sha256:c5f671be6c7e410a245839366033877191a01d88529343214e83f12af86d0a4f" shape="plaintext"];
  "sha256:4717eb240fd757944b48f36740d44b96bd2a8a81ca250e6bcf631f8700988a83" -> "sha256:616f4ba7948a5ce092e0741c53895c4c8f56f40eb1abc0ceb3df54ddbaf7ea24" [label=""];
  "sha256:616f4ba7948a5ce092e0741c53895c4c8f56f40eb1abc0ceb3df54ddbaf7ea24" -> "sha256:5324874d604c3da019e98e04841fab9d20c1dda7101fe9da7dfe5dec02afd063" [label=""];
  "sha256:5324874d604c3da019e98e04841fab9d20c1dda7101fe9da7dfe5dec02afd063" -> "sha256:1d881f03706fc9d9d24868294afcf994611e2f9c78ff22b458686da8da9cb9f7" [label=""];
  "sha256:1d881f03706fc9d9d24868294afcf994611e2f9c78ff22b458686da8da9cb9f7" -> "sha256:34c3b45ef064a2cee24a11b72736b80f8e285638c0631d9bffdddf11b0347542" [label=""];
  "sha256:4a3eefbfcea23e32b395a6ab267f4ecb5548cc57481fbbb0ef8c7bdc3b6ef2dc" -> "sha256:34c3b45ef064a2cee24a11b72736b80f8e285638c0631d9bffdddf11b0347542" [label=""];
  "sha256:34c3b45ef064a2cee24a11b72736b80f8e285638c0631d9bffdddf11b0347542" -> "sha256:c5f671be6c7e410a245839366033877191a01d88529343214e83f12af86d0a4f" [label=""];
}

