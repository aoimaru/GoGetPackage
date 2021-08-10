[app/sources/345364094.Dockerfile]
digraph {
  "sha256:415be4194407de6d3b39feec44bd7452eb919377af112789febd0037177d48d9" [label="docker-image://docker.io/balenalib/beaglebone-green-debian:sid-build" shape="ellipse"];
  "sha256:043309461d79bf238d11fa55a6bf1ce13a50971347fd32727307c22eebba7a23" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --batch --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --batch --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"1be646c6b5b84034c4e4a20254044c5d3f1dc258860f99c2893d00fe965486ac  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:b0b438dc72de3904eacc631205796417dd92e3966b2020bd22b124716b39ef20" [label="sha256:b0b438dc72de3904eacc631205796417dd92e3966b2020bd22b124716b39ef20" shape="plaintext"];
  "sha256:415be4194407de6d3b39feec44bd7452eb919377af112789febd0037177d48d9" -> "sha256:043309461d79bf238d11fa55a6bf1ce13a50971347fd32727307c22eebba7a23" [label=""];
  "sha256:043309461d79bf238d11fa55a6bf1ce13a50971347fd32727307c22eebba7a23" -> "sha256:b0b438dc72de3904eacc631205796417dd92e3966b2020bd22b124716b39ef20" [label=""];
}

