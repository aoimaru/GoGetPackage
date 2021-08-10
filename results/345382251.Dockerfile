[app/sources/345382251.Dockerfile]
digraph {
  "sha256:8905961f21bce12dda9a25525b8245377069068aee2f38939f05598617662c96" [label="docker-image://docker.io/balenalib/imx6ul-var-dart-fedora:29-build" shape="ellipse"];
  "sha256:43840e883a649d0a0e8e4b56888819265b09d7250af6f3a07b1983e814a48f2b" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"12929c2128f740a47690c5e991c401b213a0b0923383f40ed53c1ca44ae99ec2  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:7515a5e09d177f657f2871c548693e341a7dd4bf97aa34e59728cf55c5c16965" [label="sha256:7515a5e09d177f657f2871c548693e341a7dd4bf97aa34e59728cf55c5c16965" shape="plaintext"];
  "sha256:8905961f21bce12dda9a25525b8245377069068aee2f38939f05598617662c96" -> "sha256:43840e883a649d0a0e8e4b56888819265b09d7250af6f3a07b1983e814a48f2b" [label=""];
  "sha256:43840e883a649d0a0e8e4b56888819265b09d7250af6f3a07b1983e814a48f2b" -> "sha256:7515a5e09d177f657f2871c548693e341a7dd4bf97aa34e59728cf55c5c16965" [label=""];
}

