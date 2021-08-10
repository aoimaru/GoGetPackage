[app/sources/358217607.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:20be39bcfc4717555a9ad922802c9d260a683b076b5cc0730188a147998609ce" [label="/bin/sh -c apt-get update && apt-get install -y locales && locale-gen ${OS_LOCALE}" shape="box"];
  "sha256:90bbd55bac40ba7765146b1b418f9d91b90042b27b7df00d4ff3ae059d6e6261" [label="/bin/sh -c dpkg-reconfigure locales && apt-get install -y wget sudo  && wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -  && echo 'deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main' > /etc/apt/sources.list.d/pgdg.list  && apt-get update && apt-get install -y postgresql-${PG_VERSION} postgresql-client-${PG_VERSION} postgresql-contrib-${PG_VERSION} lbzip2  && apt-get purge -y --auto-remove wget  && rm -rf ${PG_HOME}  && rm -rf /var/lib/apt/lists/*  && touch /tmp/.EMPTY_DB" shape="box"];
  "sha256:ce5bd981c34c573c97afd316919341ab1bfe25cf68b53ff25a9c15770d0bd6aa" [label="local://context" shape="ellipse"];
  "sha256:fe6838ef61fe137bce3b1733d8f79a33557716c6ef3aebd3c7e2b74b392f4deb" [label="copy{src=/entrypoint.sh, dest=/sbin/entrypoint.sh}" shape="note"];
  "sha256:64628df81b14f45846fbc0b9aac0a891b46ea1a361496e480a018aebe3a7fe86" [label="/bin/sh -c chmod 755 /sbin/entrypoint.sh" shape="box"];
  "sha256:2d3a2b458a8e799b0e028885be00f7ea416c31f00a7c1d6df178a75a3bf5b8c7" [label="sha256:2d3a2b458a8e799b0e028885be00f7ea416c31f00a7c1d6df178a75a3bf5b8c7" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:20be39bcfc4717555a9ad922802c9d260a683b076b5cc0730188a147998609ce" [label=""];
  "sha256:20be39bcfc4717555a9ad922802c9d260a683b076b5cc0730188a147998609ce" -> "sha256:90bbd55bac40ba7765146b1b418f9d91b90042b27b7df00d4ff3ae059d6e6261" [label=""];
  "sha256:90bbd55bac40ba7765146b1b418f9d91b90042b27b7df00d4ff3ae059d6e6261" -> "sha256:fe6838ef61fe137bce3b1733d8f79a33557716c6ef3aebd3c7e2b74b392f4deb" [label=""];
  "sha256:ce5bd981c34c573c97afd316919341ab1bfe25cf68b53ff25a9c15770d0bd6aa" -> "sha256:fe6838ef61fe137bce3b1733d8f79a33557716c6ef3aebd3c7e2b74b392f4deb" [label=""];
  "sha256:fe6838ef61fe137bce3b1733d8f79a33557716c6ef3aebd3c7e2b74b392f4deb" -> "sha256:64628df81b14f45846fbc0b9aac0a891b46ea1a361496e480a018aebe3a7fe86" [label=""];
  "sha256:64628df81b14f45846fbc0b9aac0a891b46ea1a361496e480a018aebe3a7fe86" -> "sha256:2d3a2b458a8e799b0e028885be00f7ea416c31f00a7c1d6df178a75a3bf5b8c7" [label=""];
}

