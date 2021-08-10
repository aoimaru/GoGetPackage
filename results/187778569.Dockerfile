[app/sources/187778569.Dockerfile]
digraph {
  "sha256:7b50b132f464ffd4f1aad2f316bfbb2d28d27adf5e60b91134520962852acaf8" [label="local://context" shape="ellipse"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:20d846885daa74a62f4d3b676c054d6879f3048e532067363572edd16d4d3d7d" [label="/bin/sh -c echo \"@edge http://nl.alpinelinux.org/alpine/edge/main\" >> /etc/apk/repositories &&     apk update &&     apk add curl \"libpq@edge<9.7\" \"postgresql-client@edge<9.7\" \"postgresql@edge<9.7\" \"postgresql-contrib@edge<9.7\" &&     mkdir /docker-entrypoint-initdb.d &&     curl -o /usr/local/bin/gosu -sSL \"https://github.com/tianon/gosu/releases/download/1.2/gosu-amd64\" &&     chmod +x /usr/local/bin/gosu &&     apk del curl &&     rm -rf /var/cache/apk/*" shape="box"];
  "sha256:0d3e95268a167c6b77587288be282aaeb602f3be674a18f36dd48c3dbaabfd32" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:90d7d001674a667687ca4b96221feefbdaf5dbe5b48f86d112a0d4475f623e81" [label="sha256:90d7d001674a667687ca4b96221feefbdaf5dbe5b48f86d112a0d4475f623e81" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:20d846885daa74a62f4d3b676c054d6879f3048e532067363572edd16d4d3d7d" [label=""];
  "sha256:20d846885daa74a62f4d3b676c054d6879f3048e532067363572edd16d4d3d7d" -> "sha256:0d3e95268a167c6b77587288be282aaeb602f3be674a18f36dd48c3dbaabfd32" [label=""];
  "sha256:7b50b132f464ffd4f1aad2f316bfbb2d28d27adf5e60b91134520962852acaf8" -> "sha256:0d3e95268a167c6b77587288be282aaeb602f3be674a18f36dd48c3dbaabfd32" [label=""];
  "sha256:0d3e95268a167c6b77587288be282aaeb602f3be674a18f36dd48c3dbaabfd32" -> "sha256:90d7d001674a667687ca4b96221feefbdaf5dbe5b48f86d112a0d4475f623e81" [label=""];
}

