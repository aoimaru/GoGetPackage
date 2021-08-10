[app/sources/345369656.Dockerfile]
digraph {
  "sha256:8d927edf33ed56d5794b198a9bbf6a7535cac04aeeb541732aafea880adddd67" [label="docker-image://docker.io/balenalib/kitra520-debian:jessie-build" shape="ellipse"];
  "sha256:9a31173050f8c4370959d887406beb5d58cf22666357acd3c45741c2c2a27b31" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --batch --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --batch --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"ae6c41d78df4c5ef4032128eda9abd49a549bff5c8a20fd32d1072b6e5e8556b  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:d6903abf479da2f07350580789af548389abefea9a312ed3b5f39192a220a995" [label="sha256:d6903abf479da2f07350580789af548389abefea9a312ed3b5f39192a220a995" shape="plaintext"];
  "sha256:8d927edf33ed56d5794b198a9bbf6a7535cac04aeeb541732aafea880adddd67" -> "sha256:9a31173050f8c4370959d887406beb5d58cf22666357acd3c45741c2c2a27b31" [label=""];
  "sha256:9a31173050f8c4370959d887406beb5d58cf22666357acd3c45741c2c2a27b31" -> "sha256:d6903abf479da2f07350580789af548389abefea9a312ed3b5f39192a220a995" [label=""];
}
