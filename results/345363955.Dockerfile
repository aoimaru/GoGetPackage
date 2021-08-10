[app/sources/345363955.Dockerfile]
digraph {
  "sha256:f71a98749ad288c32f28528ae3c81c215f8c0bd3b43a4f6c64d17ec7454dc6a5" [label="docker-image://docker.io/balenalib/beaglebone-green-wifi-fedora:29-run" shape="ellipse"];
  "sha256:942d4e5c0c12b3a232501c9baa19dac38b7e3603b11bd83a18fbd737173acc1c" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"1be646c6b5b84034c4e4a20254044c5d3f1dc258860f99c2893d00fe965486ac  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:16d3f3a90536a528d88b8d83e398217649d474f3bf5d7b61c41e4490cd320057" [label="sha256:16d3f3a90536a528d88b8d83e398217649d474f3bf5d7b61c41e4490cd320057" shape="plaintext"];
  "sha256:f71a98749ad288c32f28528ae3c81c215f8c0bd3b43a4f6c64d17ec7454dc6a5" -> "sha256:942d4e5c0c12b3a232501c9baa19dac38b7e3603b11bd83a18fbd737173acc1c" [label=""];
  "sha256:942d4e5c0c12b3a232501c9baa19dac38b7e3603b11bd83a18fbd737173acc1c" -> "sha256:16d3f3a90536a528d88b8d83e398217649d474f3bf5d7b61c41e4490cd320057" [label=""];
}
