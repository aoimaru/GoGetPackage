[app/sources/345364274.Dockerfile]
digraph {
  "sha256:e2deaf79f3877de339151f16c53ae96f64c873d8fed5535595274e07e8b314ef" [label="docker-image://docker.io/balenalib/beaglebone-pocket-debian:sid-build" shape="ellipse"];
  "sha256:b7eaaf98d8021e1448b7e4fc83aba94e5f4e59a167018aeafed389bf7bc965e7" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --batch --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --batch --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"1be646c6b5b84034c4e4a20254044c5d3f1dc258860f99c2893d00fe965486ac  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:6d037681e2a2acd5cb2fd9c25c0d550c799e21f4829b56d0d4164907a4811013" [label="sha256:6d037681e2a2acd5cb2fd9c25c0d550c799e21f4829b56d0d4164907a4811013" shape="plaintext"];
  "sha256:e2deaf79f3877de339151f16c53ae96f64c873d8fed5535595274e07e8b314ef" -> "sha256:b7eaaf98d8021e1448b7e4fc83aba94e5f4e59a167018aeafed389bf7bc965e7" [label=""];
  "sha256:b7eaaf98d8021e1448b7e4fc83aba94e5f4e59a167018aeafed389bf7bc965e7" -> "sha256:6d037681e2a2acd5cb2fd9c25c0d550c799e21f4829b56d0d4164907a4811013" [label=""];
}

