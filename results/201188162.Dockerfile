[app/sources/201188162.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:34ab2ac1aa1a2d2c55ad6de9fac4f9cb6b63430cbe761fcb0551d56a33a171d3" [label="/bin/sh -c apk add --no-cache bash openssh findutils git emacs" shape="box"];
  "sha256:63ea13937518c3efb6dbe211736788fd9d6927cd146d5d107873ce2fcb57a65e" [label="/bin/sh -c echo \"export TERM=xterm\" >> /root/.bashrc" shape="box"];
  "sha256:c94756d7a0f241c041b55f2ea938b004c62beb3e0782ec01e0ba03837b253dbd" [label="local://context" shape="ellipse"];
  "sha256:3feeb934ba43b0082f7cd7f68f466c10fc8852c77517c397c7d403d75049e5a5" [label="copy{src=/emacs.sh, dest=/usr/bin/e}" shape="note"];
  "sha256:db83df6c1aed8cdb32615fa8c71a61bc98f30cea3783877cfe6e234c7dae2be1" [label="/bin/sh -c chmod -R 777 /usr/bin/e" shape="box"];
  "sha256:2406cf20bf75ff64589b8ca4b6bd732704d3ea0b093c4fde9f5b4f1d5cb99c68" [label="/bin/sh -c cd /root && mkdir .ssh && chmod -R 700 /root/.ssh" shape="box"];
  "sha256:b241fcbbf932b4f0f8b1b9c7bb6ad8c37fda49dcb66ebb154543c1fdcbb85033" [label="/bin/sh -c echo \"PasswordAuthentication no\" > /etc/ssh/sshd_config" shape="box"];
  "sha256:3304d726318d516bcef96f891bc3f9328d2d21404ff76cad8fef8413034a075a" [label="/bin/sh -c touch /authorized_keys" shape="box"];
  "sha256:6301b4d0de87d96b484f06958b98b231343e20422c0b275e459a071f93e9ea57" [label="/bin/sh -c apk add --no-cache ca-certificates" shape="box"];
  "sha256:577f512ce54039bad2aa69f847d4b4858aaaea6d547c5fa4d5f041d33a34bc76" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:a7a59cd0a5fb6235216fa539d9147081a692410ce5111cdd24701b3c5767228a" [label="/bin/sh -c set -eux; \tapkArch=\"$(apk --print-arch)\"; \tcase \"$apkArch\" in \t\tx86_64) dockerArch='x86_64' ;; \t\tarmhf) dockerArch='armel' ;; \t\taarch64) dockerArch='aarch64' ;; \t\tppc64le) dockerArch='ppc64le' ;; \t\ts390x) dockerArch='s390x' ;; \t\t*) echo >&2 \"error: unsupported architecture ($apkArch)\"; exit 1 ;;\tesac; \t\tif ! wget -O docker.tgz \"https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz\"; then \t\techo >&2 \"error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'\"; \t\texit 1; \tfi; \t\ttar --extract \t\t--file docker.tgz \t\t--strip-components 1 \t\t--directory /usr/local/bin/ \t; \trm docker.tgz; \t\tdockerd --version; \tdocker --version" shape="box"];
  "sha256:3db989886a43e830007f1aecebf2bb4d326862a2a421ab573b920d209dfe81b9" [label="/bin/sh -c sed -i s/#PermitRootLogin.*/PermitRootLogin\\ yes/ /etc/ssh/sshd_config     && echo \"root:root\" | chpasswd" shape="box"];
  "sha256:97966e4ed61428e97831a33becb2f9067d7f7638338281afda5bd43c201d1605" [label="copy{src=/cargo, dest=/usr/bin/cargo}" shape="note"];
  "sha256:b5e6817b67ed4362b3635e9766f956c2939c92a9518b485b3f2c06828ffe2c9b" [label="/bin/sh -c cp /usr/local/bin/docker /usr/bin/docker" shape="box"];
  "sha256:54670f8d38fbe109e43a70f7cc53bfd7e4d9fa5528a5dd6fa5fa253d17c519c0" [label="sha256:54670f8d38fbe109e43a70f7cc53bfd7e4d9fa5528a5dd6fa5fa253d17c519c0" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:34ab2ac1aa1a2d2c55ad6de9fac4f9cb6b63430cbe761fcb0551d56a33a171d3" [label=""];
  "sha256:34ab2ac1aa1a2d2c55ad6de9fac4f9cb6b63430cbe761fcb0551d56a33a171d3" -> "sha256:63ea13937518c3efb6dbe211736788fd9d6927cd146d5d107873ce2fcb57a65e" [label=""];
  "sha256:63ea13937518c3efb6dbe211736788fd9d6927cd146d5d107873ce2fcb57a65e" -> "sha256:3feeb934ba43b0082f7cd7f68f466c10fc8852c77517c397c7d403d75049e5a5" [label=""];
  "sha256:c94756d7a0f241c041b55f2ea938b004c62beb3e0782ec01e0ba03837b253dbd" -> "sha256:3feeb934ba43b0082f7cd7f68f466c10fc8852c77517c397c7d403d75049e5a5" [label=""];
  "sha256:3feeb934ba43b0082f7cd7f68f466c10fc8852c77517c397c7d403d75049e5a5" -> "sha256:db83df6c1aed8cdb32615fa8c71a61bc98f30cea3783877cfe6e234c7dae2be1" [label=""];
  "sha256:db83df6c1aed8cdb32615fa8c71a61bc98f30cea3783877cfe6e234c7dae2be1" -> "sha256:2406cf20bf75ff64589b8ca4b6bd732704d3ea0b093c4fde9f5b4f1d5cb99c68" [label=""];
  "sha256:2406cf20bf75ff64589b8ca4b6bd732704d3ea0b093c4fde9f5b4f1d5cb99c68" -> "sha256:b241fcbbf932b4f0f8b1b9c7bb6ad8c37fda49dcb66ebb154543c1fdcbb85033" [label=""];
  "sha256:b241fcbbf932b4f0f8b1b9c7bb6ad8c37fda49dcb66ebb154543c1fdcbb85033" -> "sha256:3304d726318d516bcef96f891bc3f9328d2d21404ff76cad8fef8413034a075a" [label=""];
  "sha256:3304d726318d516bcef96f891bc3f9328d2d21404ff76cad8fef8413034a075a" -> "sha256:6301b4d0de87d96b484f06958b98b231343e20422c0b275e459a071f93e9ea57" [label=""];
  "sha256:6301b4d0de87d96b484f06958b98b231343e20422c0b275e459a071f93e9ea57" -> "sha256:577f512ce54039bad2aa69f847d4b4858aaaea6d547c5fa4d5f041d33a34bc76" [label=""];
  "sha256:577f512ce54039bad2aa69f847d4b4858aaaea6d547c5fa4d5f041d33a34bc76" -> "sha256:a7a59cd0a5fb6235216fa539d9147081a692410ce5111cdd24701b3c5767228a" [label=""];
  "sha256:a7a59cd0a5fb6235216fa539d9147081a692410ce5111cdd24701b3c5767228a" -> "sha256:3db989886a43e830007f1aecebf2bb4d326862a2a421ab573b920d209dfe81b9" [label=""];
  "sha256:3db989886a43e830007f1aecebf2bb4d326862a2a421ab573b920d209dfe81b9" -> "sha256:97966e4ed61428e97831a33becb2f9067d7f7638338281afda5bd43c201d1605" [label=""];
  "sha256:c94756d7a0f241c041b55f2ea938b004c62beb3e0782ec01e0ba03837b253dbd" -> "sha256:97966e4ed61428e97831a33becb2f9067d7f7638338281afda5bd43c201d1605" [label=""];
  "sha256:97966e4ed61428e97831a33becb2f9067d7f7638338281afda5bd43c201d1605" -> "sha256:b5e6817b67ed4362b3635e9766f956c2939c92a9518b485b3f2c06828ffe2c9b" [label=""];
  "sha256:b5e6817b67ed4362b3635e9766f956c2939c92a9518b485b3f2c06828ffe2c9b" -> "sha256:54670f8d38fbe109e43a70f7cc53bfd7e4d9fa5528a5dd6fa5fa253d17c519c0" [label=""];
}

