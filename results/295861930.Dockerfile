[app/sources/295861930.Dockerfile]
digraph {
  "sha256:d04d6bb9b8d73a94c83da3e54e4cf352c9ff751da85173db1223052592d48985" [label="docker-image://docker.io/bensdoings/dind-centos:latest" shape="ellipse"];
  "sha256:1bb04287329bf203a85872976bb44420b30f21089ba373b0c988b83ab6e847bd" [label="/bin/sh -c yum install -y     net-tools     vim     openssh-server     openssh-clients     openssl     sudo     && mkdir /var/run/sshd && chmod 700 /var/run/sshd     && sed -i -- 's/#PermitRootLogin/PermitRootLogin/g' /etc/ssh/sshd_config" shape="box"];
  "sha256:7194e870ee38988e0db5905c71271c23575ab2dbc19e1491ade1d1727e73bc49" [label="local://context" shape="ellipse"];
  "sha256:cbc167ee2be332c8d23866f6c9bb2c00770b11cdb679547cd4e9e22cccc38abc" [label="copy{src=/rc.local, dest=/etc}" shape="note"];
  "sha256:190de649fbf80512672a5ab805ad48d8e987abb9779a9257aadc64794d873832" [label="copy{src=/adduserkey, dest=/usr/bin}" shape="note"];
  "sha256:c2d8bc5b3b65d3f3f2afab8b15a755525c5a0be72f59dae39d54c50a1353f322" [label="sha256:c2d8bc5b3b65d3f3f2afab8b15a755525c5a0be72f59dae39d54c50a1353f322" shape="plaintext"];
  "sha256:d04d6bb9b8d73a94c83da3e54e4cf352c9ff751da85173db1223052592d48985" -> "sha256:1bb04287329bf203a85872976bb44420b30f21089ba373b0c988b83ab6e847bd" [label=""];
  "sha256:1bb04287329bf203a85872976bb44420b30f21089ba373b0c988b83ab6e847bd" -> "sha256:cbc167ee2be332c8d23866f6c9bb2c00770b11cdb679547cd4e9e22cccc38abc" [label=""];
  "sha256:7194e870ee38988e0db5905c71271c23575ab2dbc19e1491ade1d1727e73bc49" -> "sha256:cbc167ee2be332c8d23866f6c9bb2c00770b11cdb679547cd4e9e22cccc38abc" [label=""];
  "sha256:cbc167ee2be332c8d23866f6c9bb2c00770b11cdb679547cd4e9e22cccc38abc" -> "sha256:190de649fbf80512672a5ab805ad48d8e987abb9779a9257aadc64794d873832" [label=""];
  "sha256:7194e870ee38988e0db5905c71271c23575ab2dbc19e1491ade1d1727e73bc49" -> "sha256:190de649fbf80512672a5ab805ad48d8e987abb9779a9257aadc64794d873832" [label=""];
  "sha256:190de649fbf80512672a5ab805ad48d8e987abb9779a9257aadc64794d873832" -> "sha256:c2d8bc5b3b65d3f3f2afab8b15a755525c5a0be72f59dae39d54c50a1353f322" [label=""];
}

