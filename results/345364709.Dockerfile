[app/sources/345364709.Dockerfile]
digraph {
  "sha256:1ffe4e08656026148b0e4dfac6f67e76298ff6e1d64649e969a48ae4b60e6e5d" [label="docker-image://docker.io/balenalib/ccon-01-ubuntu:cosmic-run" shape="ellipse"];
  "sha256:e22daef39391f752afdf474f18f55627fb96cc5ef052993a6c4a20d71a3e425a" [label="/bin/sh -c buildDeps='curl' \t&& set -x \t&& for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& apt-get update && apt-get install -y $buildDeps --no-install-recommends \t&& rm -rf /var/lib/apt/lists/* \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"756f21a07a5a8c6c1037754a332b3adf7b39fb1d49acf0893488cc545a2438cf  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& apt-get purge -y --auto-remove $buildDeps \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:85cdd9a0d68871f39b3761d5328566376ad2ac4d0c820071ca5c5df0eec66363" [label="sha256:85cdd9a0d68871f39b3761d5328566376ad2ac4d0c820071ca5c5df0eec66363" shape="plaintext"];
  "sha256:1ffe4e08656026148b0e4dfac6f67e76298ff6e1d64649e969a48ae4b60e6e5d" -> "sha256:e22daef39391f752afdf474f18f55627fb96cc5ef052993a6c4a20d71a3e425a" [label=""];
  "sha256:e22daef39391f752afdf474f18f55627fb96cc5ef052993a6c4a20d71a3e425a" -> "sha256:85cdd9a0d68871f39b3761d5328566376ad2ac4d0c820071ca5c5df0eec66363" [label=""];
}
