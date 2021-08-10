[app/sources/351406738.Dockerfile]
digraph {
  "sha256:8fdabc5b86d4fb92a772008f6de85b49117cd73f073e97ecfafe1a14deadb143" [label="docker-image://docker.io/bitnami/minideb:stretch@sha256:940f4bc821ab9d7d128a3e8bdc5644d16474e70270fe1af7e1095adc92882feb" shape="ellipse"];
  "sha256:a0df33f4a2500b65452b3edcaf3ce4a4a53736be00e7e79813b1eb62437f6d89" [label="/bin/sh -c install_packages ca-certificates ghostscript imagemagick libbz2-1.0 libc6 libgcc1 libncurses5 libreadline7 libsqlite3-0 libssl1.1 libstdc++6 libtinfo5 zlib1g" shape="box"];
  "sha256:5f7cf905d5f608688beb42ad63b270c6e11fe36261b8a8c984ecf97638a9cdf7" [label="/bin/sh -c sed -i 's/^PASS_MAX_DAYS.*/PASS_MAX_DAYS    90/' /etc/login.defs &&     sed -i 's/^PASS_MIN_DAYS.*/PASS_MIN_DAYS    0/' /etc/login.defs &&     sed -i 's/sha512/sha512 minlen=8/' /etc/pam.d/common-password" shape="box"];
  "sha256:18ece67b12da4979e3d9c15f55ecb9b7bd19b27a7fa62af5cadbf875924af4ff" [label="docker-image://docker.io/bitnami/node:8.16.0-debian-9-r54@sha256:ad0c7d50eaa228322d8aa55258d62f28190588ebf6ba88c178323600aae663ec" shape="ellipse"];
  "sha256:6b20633fda3302fc078a2730c254137025f997be11e360ed28ca4f91e560d1a4" [label="copy{src=/opt/bitnami/node, dest=/opt/bitnami/node}" shape="note"];
  "sha256:59955c177e57f82acfa1944215b59cf9a870794274b02c3f8a30f2ffed0ba670" [label="sha256:59955c177e57f82acfa1944215b59cf9a870794274b02c3f8a30f2ffed0ba670" shape="plaintext"];
  "sha256:8fdabc5b86d4fb92a772008f6de85b49117cd73f073e97ecfafe1a14deadb143" -> "sha256:a0df33f4a2500b65452b3edcaf3ce4a4a53736be00e7e79813b1eb62437f6d89" [label=""];
  "sha256:a0df33f4a2500b65452b3edcaf3ce4a4a53736be00e7e79813b1eb62437f6d89" -> "sha256:5f7cf905d5f608688beb42ad63b270c6e11fe36261b8a8c984ecf97638a9cdf7" [label=""];
  "sha256:5f7cf905d5f608688beb42ad63b270c6e11fe36261b8a8c984ecf97638a9cdf7" -> "sha256:6b20633fda3302fc078a2730c254137025f997be11e360ed28ca4f91e560d1a4" [label=""];
  "sha256:18ece67b12da4979e3d9c15f55ecb9b7bd19b27a7fa62af5cadbf875924af4ff" -> "sha256:6b20633fda3302fc078a2730c254137025f997be11e360ed28ca4f91e560d1a4" [label=""];
  "sha256:6b20633fda3302fc078a2730c254137025f997be11e360ed28ca4f91e560d1a4" -> "sha256:59955c177e57f82acfa1944215b59cf9a870794274b02c3f8a30f2ffed0ba670" [label=""];
}

