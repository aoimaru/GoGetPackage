[app/sources/192421467.Dockerfile]
digraph {
  "sha256:4717eb240fd757944b48f36740d44b96bd2a8a81ca250e6bcf631f8700988a83" [label="docker-image://docker.io/library/fedora:28" shape="ellipse"];
  "sha256:616f4ba7948a5ce092e0741c53895c4c8f56f40eb1abc0ceb3df54ddbaf7ea24" [label="/bin/sh -c dnf -y install gmp-devel libffi-devel openssl-devel python-crypto     python-devel python-dnf python-pip python-setuptools python-virtualenv     redhat-rpm-config systemd &&     dnf -y group install \"C Development Tools and Libraries\"" shape="box"];
  "sha256:5324874d604c3da019e98e04841fab9d20c1dda7101fe9da7dfe5dec02afd063" [label="/bin/sh -c (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done);     rm -f /lib/systemd/system/multi-user.target.wants/*;    rm -f /etc/systemd/system/*.wants/*;    rm -f /lib/systemd/system/local-fs.target.wants/*;     rm -f /lib/systemd/system/sockets.target.wants/*udev*;     rm -f /lib/systemd/system/sockets.target.wants/*initctl*;     rm -f /lib/systemd/system/basic.target.wants/*;    rm -f /lib/systemd/system/anaconda.target.wants/*;" shape="box"];
  "sha256:1d881f03706fc9d9d24868294afcf994611e2f9c78ff22b458686da8da9cb9f7" [label="/bin/sh -c pip install enum34 ipaddress wheel &&     pip install ansible ansible-lint" shape="box"];
  "sha256:d4a5d607c8d76536cb6d3277a98c600d96a95b8285a8df43054ad0bd6acc5a8f" [label="local://context" shape="ellipse"];
  "sha256:a42c447655a8a7751f3bd8324a64fbfba816bdea6334aa09a63527e88e00f2ed" [label="copy{src=/.ansible-lint, dest=/}" shape="note"];
  "sha256:57e58505ce17b1cff9d6001233a1fab72596777ac7dd91c152ecd73019631555" [label="sha256:57e58505ce17b1cff9d6001233a1fab72596777ac7dd91c152ecd73019631555" shape="plaintext"];
  "sha256:4717eb240fd757944b48f36740d44b96bd2a8a81ca250e6bcf631f8700988a83" -> "sha256:616f4ba7948a5ce092e0741c53895c4c8f56f40eb1abc0ceb3df54ddbaf7ea24" [label=""];
  "sha256:616f4ba7948a5ce092e0741c53895c4c8f56f40eb1abc0ceb3df54ddbaf7ea24" -> "sha256:5324874d604c3da019e98e04841fab9d20c1dda7101fe9da7dfe5dec02afd063" [label=""];
  "sha256:5324874d604c3da019e98e04841fab9d20c1dda7101fe9da7dfe5dec02afd063" -> "sha256:1d881f03706fc9d9d24868294afcf994611e2f9c78ff22b458686da8da9cb9f7" [label=""];
  "sha256:1d881f03706fc9d9d24868294afcf994611e2f9c78ff22b458686da8da9cb9f7" -> "sha256:a42c447655a8a7751f3bd8324a64fbfba816bdea6334aa09a63527e88e00f2ed" [label=""];
  "sha256:d4a5d607c8d76536cb6d3277a98c600d96a95b8285a8df43054ad0bd6acc5a8f" -> "sha256:a42c447655a8a7751f3bd8324a64fbfba816bdea6334aa09a63527e88e00f2ed" [label=""];
  "sha256:a42c447655a8a7751f3bd8324a64fbfba816bdea6334aa09a63527e88e00f2ed" -> "sha256:57e58505ce17b1cff9d6001233a1fab72596777ac7dd91c152ecd73019631555" [label=""];
}

