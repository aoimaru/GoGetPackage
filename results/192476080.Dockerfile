[app/sources/192476080.Dockerfile]
digraph {
  "sha256:6dfe359d94b4aadd78a88d5081ae2f39c9215c44f97e98e3e4e5a52e20f86346" [label="docker-image://docker.io/rancher/os-fedoraconsole-base:latest" shape="ellipse"];
  "sha256:7247fded00e35d233fcb552aeb6881edef524a61562594d46dd5201258913f23" [label="local://context" shape="ellipse"];
  "sha256:156f57062f82d8a99b99b854df9499f91240a216e554a04191ec47d8e3685bb8" [label="copy{src=/prompt.sh, dest=/etc/profile.d/}" shape="note"];
  "sha256:dd9b5bfec4df6bf09c77e00d0b74641c43b13590fb23820bdf78cc0afa31390b" [label="copy{src=/build/sshd_config.append.tpl, dest=/etc/ssh/}" shape="note"];
  "sha256:a548fe44023ba57e280973581282fcfa3723ddda876f941475dbac4116acab9c" [label="/bin/sh -c dnf install -y iptables openssh-server rsync sudo vim-minimal                     less ca-certificates psmisc htop procps-ng                     iproute openssh-clients bash-completion iputils wget     && dnf clean all     && rm -rf /etc/ssh/*key*     && groupadd --gid 1100 rancher     && groupadd --gid 1101 docker     && useradd -u 1100 -g rancher -G docker,wheel -m -s /bin/bash rancher     && useradd -u 1101 -g docker -G docker,wheel -m -s /bin/bash docker     && echo '## allow password less for rancher user' >> /etc/sudoers     && echo 'rancher ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers     && echo '## allow password less for docker user' >> /etc/sudoers     && echo 'docker ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers     && cat /etc/ssh/sshd_config > /etc/ssh/sshd_config.tpl     && cat /etc/ssh/sshd_config.append.tpl >> /etc/ssh/sshd_config.tpl     && rm -f /etc/ssh/sshd_config.append.tpl /etc/ssh/sshd_config     && sed -i '0,/PermitRootLogin/{//d}' /etc/ssh/sshd_config.tpl" shape="box"];
  "sha256:0e6f786854c97210d4cf8dec01cf28511c70292e9964b0dd60a1069487ff9848" [label="sha256:0e6f786854c97210d4cf8dec01cf28511c70292e9964b0dd60a1069487ff9848" shape="plaintext"];
  "sha256:6dfe359d94b4aadd78a88d5081ae2f39c9215c44f97e98e3e4e5a52e20f86346" -> "sha256:156f57062f82d8a99b99b854df9499f91240a216e554a04191ec47d8e3685bb8" [label=""];
  "sha256:7247fded00e35d233fcb552aeb6881edef524a61562594d46dd5201258913f23" -> "sha256:156f57062f82d8a99b99b854df9499f91240a216e554a04191ec47d8e3685bb8" [label=""];
  "sha256:156f57062f82d8a99b99b854df9499f91240a216e554a04191ec47d8e3685bb8" -> "sha256:dd9b5bfec4df6bf09c77e00d0b74641c43b13590fb23820bdf78cc0afa31390b" [label=""];
  "sha256:7247fded00e35d233fcb552aeb6881edef524a61562594d46dd5201258913f23" -> "sha256:dd9b5bfec4df6bf09c77e00d0b74641c43b13590fb23820bdf78cc0afa31390b" [label=""];
  "sha256:dd9b5bfec4df6bf09c77e00d0b74641c43b13590fb23820bdf78cc0afa31390b" -> "sha256:a548fe44023ba57e280973581282fcfa3723ddda876f941475dbac4116acab9c" [label=""];
  "sha256:a548fe44023ba57e280973581282fcfa3723ddda876f941475dbac4116acab9c" -> "sha256:0e6f786854c97210d4cf8dec01cf28511c70292e9964b0dd60a1069487ff9848" [label=""];
}

