[app/sources/345381729.Dockerfile]
digraph {
  "sha256:ef8ce7cd3e8b6bc9d77b5c8ac24108da0b52473fd757d779aae179cd03d64ce4" [label="docker-image://docker.io/balenalib/generic-armv7ahf-debian:stretch-build" shape="ellipse"];
  "sha256:10a5da5ca5d79e3b410a06fb9e220dfbe53b35f81e7e219806eea5e9fd9f2f5f" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --batch --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --batch --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"756f21a07a5a8c6c1037754a332b3adf7b39fb1d49acf0893488cc545a2438cf  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:6f1efcacf933bbdc4ab573b9866f9552fc7ebe589951323b26fff2b47af56f19" [label="sha256:6f1efcacf933bbdc4ab573b9866f9552fc7ebe589951323b26fff2b47af56f19" shape="plaintext"];
  "sha256:ef8ce7cd3e8b6bc9d77b5c8ac24108da0b52473fd757d779aae179cd03d64ce4" -> "sha256:10a5da5ca5d79e3b410a06fb9e220dfbe53b35f81e7e219806eea5e9fd9f2f5f" [label=""];
  "sha256:10a5da5ca5d79e3b410a06fb9e220dfbe53b35f81e7e219806eea5e9fd9f2f5f" -> "sha256:6f1efcacf933bbdc4ab573b9866f9552fc7ebe589951323b26fff2b47af56f19" [label=""];
}
