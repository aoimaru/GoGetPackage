[app/sources/473587265.Dockerfile]
digraph {
  "sha256:b9b9a74f1218fa29972591b90fc9280fd425449842b7faf3bb263ae4027b71ee" [label="docker-image://docker.io/library/debian:unstable-slim" shape="ellipse"];
  "sha256:6ed56fa0b18d459344d280662e75ebd2197f8c0e315e3b05bf6b38e07b8a30e5" [label="/bin/sh -c sed -i 's/deb.debian.org/ftp.cz.debian.org/' /etc/apt/sources.list" shape="box"];
  "sha256:a09bc21acdab18e69872ee9a0def551fdcfbf38a794b6fda4373b7c28dd9381e" [label="/bin/sh -c apt-get -y update" shape="box"];
  "sha256:9aa6acfc0efd0e2b9d9cf5e1f9cad9b598076ca26e13ec2e1ef064d1e3862d22" [label="/bin/sh -c apt-get -y dist-upgrade" shape="box"];
  "sha256:45999ae78e514e5e308155fe75e6a6ca76b78f7eb23e8727f9df1d4a76711acd" [label="/bin/sh -c apt-get -y install \tapt-utils \tautoconf \tautomake \tautotools-dev \tbuild-essential \tclang-6.0 \tcurl \tghostscript \tgit \tlibedit-dev \tlibfstrm-dev \tlibgnutls28-dev \tlibidn2-0-dev \tliblmdb-dev \tlibmaxminddb-dev \tlibprotobuf-c-dev \tlibsystemd-dev \tlibtool \tliburcu-dev \tlocales-all \tpkg-config \tprotobuf-c-compiler \tpython-sphinx \ttexinfo texlive \ttexlive-font-utils \ttexlive-generic-extra \ttexlive-latex-extra \tunzip" shape="box"];
  "sha256:73043843c4c46b5ae68a431f8cba6673b81b7ab8a69714cca1c1d6d079bf82bd" [label="sha256:73043843c4c46b5ae68a431f8cba6673b81b7ab8a69714cca1c1d6d079bf82bd" shape="plaintext"];
  "sha256:b9b9a74f1218fa29972591b90fc9280fd425449842b7faf3bb263ae4027b71ee" -> "sha256:6ed56fa0b18d459344d280662e75ebd2197f8c0e315e3b05bf6b38e07b8a30e5" [label=""];
  "sha256:6ed56fa0b18d459344d280662e75ebd2197f8c0e315e3b05bf6b38e07b8a30e5" -> "sha256:a09bc21acdab18e69872ee9a0def551fdcfbf38a794b6fda4373b7c28dd9381e" [label=""];
  "sha256:a09bc21acdab18e69872ee9a0def551fdcfbf38a794b6fda4373b7c28dd9381e" -> "sha256:9aa6acfc0efd0e2b9d9cf5e1f9cad9b598076ca26e13ec2e1ef064d1e3862d22" [label=""];
  "sha256:9aa6acfc0efd0e2b9d9cf5e1f9cad9b598076ca26e13ec2e1ef064d1e3862d22" -> "sha256:45999ae78e514e5e308155fe75e6a6ca76b78f7eb23e8727f9df1d4a76711acd" [label=""];
  "sha256:45999ae78e514e5e308155fe75e6a6ca76b78f7eb23e8727f9df1d4a76711acd" -> "sha256:73043843c4c46b5ae68a431f8cba6673b81b7ab8a69714cca1c1d6d079bf82bd" [label=""];
}

