[app/sources/480511428.Dockerfile]
digraph {
  "sha256:82ef21914ff75d896d3d8ea36e79a4667a59491f6818c7395c1ee7cccff477ae" [label="docker-image://docker.io/nfnty/arch-mini:latest" shape="ellipse"];
  "sha256:739930a6496ddbcebe3ca89482731104c793994ee19700d39bde2343e8a17201" [label="/bin/sh -c ugid='880042' &&     groupadd --gid \"${ugid}\" contgrp &&     useradd --uid \"${ugid}\" --gid \"${ugid}\" --shell /usr/bin/false contusr" shape="box"];
  "sha256:ba44466d0bc370d40e12a712ea2705d6693221426cac70e4466b109eaeffd6a0" [label="/bin/sh -c pacman --sync --noconfirm --refresh --sysupgrade &&     pacman --sync --noconfirm \"radvd=${VERSION_RADVD}\" &&     find /var/cache/pacman/pkg -mindepth 1 -delete &&     setcap 'cap_net_raw=ep' /usr/bin/radvd" shape="box"];
  "sha256:b3938d34ce3188285a75a6fb3de45f66de93387d8111257adc55d0bb0818e0bb" [label="sha256:b3938d34ce3188285a75a6fb3de45f66de93387d8111257adc55d0bb0818e0bb" shape="plaintext"];
  "sha256:82ef21914ff75d896d3d8ea36e79a4667a59491f6818c7395c1ee7cccff477ae" -> "sha256:739930a6496ddbcebe3ca89482731104c793994ee19700d39bde2343e8a17201" [label=""];
  "sha256:739930a6496ddbcebe3ca89482731104c793994ee19700d39bde2343e8a17201" -> "sha256:ba44466d0bc370d40e12a712ea2705d6693221426cac70e4466b109eaeffd6a0" [label=""];
  "sha256:ba44466d0bc370d40e12a712ea2705d6693221426cac70e4466b109eaeffd6a0" -> "sha256:b3938d34ce3188285a75a6fb3de45f66de93387d8111257adc55d0bb0818e0bb" [label=""];
}

