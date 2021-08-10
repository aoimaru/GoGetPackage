[app/sources/345380850.Dockerfile]
digraph {
  "sha256:470e8a62791e00669a656de1e7665c7f9fbdb2b9bf4a48bcec9da5d075f75e0b" [label="docker-image://docker.io/balenalib/asus-tinker-board-s-ubuntu:bionic-run" shape="ellipse"];
  "sha256:a30ec409e411332308b956f62cd3e49be763a9b76f516553b037cf6a491d94e3" [label="/bin/sh -c buildDeps='curl' \t&& set -x \t&& for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& apt-get update && apt-get install -y $buildDeps --no-install-recommends \t&& rm -rf /var/lib/apt/lists/* \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"1be646c6b5b84034c4e4a20254044c5d3f1dc258860f99c2893d00fe965486ac  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& apt-get purge -y --auto-remove $buildDeps \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:7e76f97d4c488c905a2d9de1485ec5eb194c9ddd919fb73aba7eed06b3ae3daf" [label="sha256:7e76f97d4c488c905a2d9de1485ec5eb194c9ddd919fb73aba7eed06b3ae3daf" shape="plaintext"];
  "sha256:470e8a62791e00669a656de1e7665c7f9fbdb2b9bf4a48bcec9da5d075f75e0b" -> "sha256:a30ec409e411332308b956f62cd3e49be763a9b76f516553b037cf6a491d94e3" [label=""];
  "sha256:a30ec409e411332308b956f62cd3e49be763a9b76f516553b037cf6a491d94e3" -> "sha256:7e76f97d4c488c905a2d9de1485ec5eb194c9ddd919fb73aba7eed06b3ae3daf" [label=""];
}

