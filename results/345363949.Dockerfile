[app/sources/345363949.Dockerfile]
digraph {
  "sha256:f71a98749ad288c32f28528ae3c81c215f8c0bd3b43a4f6c64d17ec7454dc6a5" [label="docker-image://docker.io/balenalib/beaglebone-green-wifi-fedora:29-run" shape="ellipse"];
  "sha256:3ab985d36dff3e06421819fdbcef7764e92ec1504c9fe53dca6d002e3195a0bf" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"756f21a07a5a8c6c1037754a332b3adf7b39fb1d49acf0893488cc545a2438cf  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:0d1ea874c318adaa7290abe7e67fd3b2f1aecd4c0ec512b34f9d3a1834cf5a18" [label="sha256:0d1ea874c318adaa7290abe7e67fd3b2f1aecd4c0ec512b34f9d3a1834cf5a18" shape="plaintext"];
  "sha256:f71a98749ad288c32f28528ae3c81c215f8c0bd3b43a4f6c64d17ec7454dc6a5" -> "sha256:3ab985d36dff3e06421819fdbcef7764e92ec1504c9fe53dca6d002e3195a0bf" [label=""];
  "sha256:3ab985d36dff3e06421819fdbcef7764e92ec1504c9fe53dca6d002e3195a0bf" -> "sha256:0d1ea874c318adaa7290abe7e67fd3b2f1aecd4c0ec512b34f9d3a1834cf5a18" [label=""];
}
