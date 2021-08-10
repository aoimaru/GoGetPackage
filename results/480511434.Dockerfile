[app/sources/480511434.Dockerfile]
digraph {
  "sha256:82ef21914ff75d896d3d8ea36e79a4667a59491f6818c7395c1ee7cccff477ae" [label="docker-image://docker.io/nfnty/arch-mini:latest" shape="ellipse"];
  "sha256:00b1995df04d72d57967a872e1c80bf75c1d0395ad745738f10a77de325983f0" [label="/bin/sh -c ugid='880050' &&     groupadd --gid \"${ugid}\" contgrp &&     useradd --uid \"${ugid}\" --gid \"${ugid}\" --shell /usr/bin/false contusr" shape="box"];
  "sha256:2061533faf3e0ca17ddd3b7eb4b76f04accc73e63e73d264d1679ebc43dbf78f" [label="/bin/sh -c pacman --sync --noconfirm --refresh --sysupgrade &&     pacman --sync --noconfirm \"stubby=${VERSION_STUBBY}\" &&     find /var/cache/pacman/pkg -mindepth 1 -delete &&     setcap         'cap_net_bind_service=eip' /usr/bin/tini         'cap_net_bind_service=ei' /usr/bin/stubby" shape="box"];
  "sha256:5387a6d36a50a9e4102ef1ab5e914baa3e782cc8110b8a7f65489f3e74fbb142" [label="sha256:5387a6d36a50a9e4102ef1ab5e914baa3e782cc8110b8a7f65489f3e74fbb142" shape="plaintext"];
  "sha256:82ef21914ff75d896d3d8ea36e79a4667a59491f6818c7395c1ee7cccff477ae" -> "sha256:00b1995df04d72d57967a872e1c80bf75c1d0395ad745738f10a77de325983f0" [label=""];
  "sha256:00b1995df04d72d57967a872e1c80bf75c1d0395ad745738f10a77de325983f0" -> "sha256:2061533faf3e0ca17ddd3b7eb4b76f04accc73e63e73d264d1679ebc43dbf78f" [label=""];
  "sha256:2061533faf3e0ca17ddd3b7eb4b76f04accc73e63e73d264d1679ebc43dbf78f" -> "sha256:5387a6d36a50a9e4102ef1ab5e914baa3e782cc8110b8a7f65489f3e74fbb142" [label=""];
}

