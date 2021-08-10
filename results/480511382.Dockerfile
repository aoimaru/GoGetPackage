[app/sources/480511382.Dockerfile]
digraph {
  "sha256:df54c145ad8525d27b5739d5833f3f9e7bf9a768de9f4b375f49f3d08f028917" [label="docker-image://docker.io/nfnty/arch-mini:latest@sha256:bb7aaf660a161efb936c8cd11150962db96f25dbe707560f92a83f8377f24b57" shape="ellipse"];
  "sha256:5abc0eca23bb12e794551a809101726c570660ae20d75473b066d12443b2ac65" [label="/bin/sh -c ugid='880027' &&     groupadd --gid \"${ugid}\" contgrp &&     useradd --uid \"${ugid}\" --gid \"${ugid}\" --shell /usr/bin/false contusr" shape="box"];
  "sha256:a098d31d79a24e9feb0c39bf201faaf08e7c0b36456a50b8330f7f11bf50c93c" [label="/bin/sh -c pacman --sync --noconfirm --refresh --sysupgrade &&     pacman --sync --noconfirm \"hostapd=${VERSION_HOSTAPD}\" &&     find /var/cache/pacman/pkg -mindepth 1 -delete &&     setcap 'cap_net_admin,cap_net_raw=ep' /usr/bin/hostapd" shape="box"];
  "sha256:b727d0f5ae204e94932a6fac445c0718fa2bd8af329c9edc5b2d39bc891e13c4" [label="sha256:b727d0f5ae204e94932a6fac445c0718fa2bd8af329c9edc5b2d39bc891e13c4" shape="plaintext"];
  "sha256:df54c145ad8525d27b5739d5833f3f9e7bf9a768de9f4b375f49f3d08f028917" -> "sha256:5abc0eca23bb12e794551a809101726c570660ae20d75473b066d12443b2ac65" [label=""];
  "sha256:5abc0eca23bb12e794551a809101726c570660ae20d75473b066d12443b2ac65" -> "sha256:a098d31d79a24e9feb0c39bf201faaf08e7c0b36456a50b8330f7f11bf50c93c" [label=""];
  "sha256:a098d31d79a24e9feb0c39bf201faaf08e7c0b36456a50b8330f7f11bf50c93c" -> "sha256:b727d0f5ae204e94932a6fac445c0718fa2bd8af329c9edc5b2d39bc891e13c4" [label=""];
}

