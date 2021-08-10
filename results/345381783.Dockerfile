[app/sources/345381783.Dockerfile]
digraph {
  "sha256:b27330ba3f0530c52b9f73a51b1edd42e9ce1339decaf0ea991dec8163f38c63" [label="docker-image://docker.io/balenalib/generic-armv7ahf-ubuntu:bionic-build" shape="ellipse"];
  "sha256:0f777783f9b9df6ec4b5ae1269b33ac138e434a0221b6832ba12540c8406177c" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"12929c2128f740a47690c5e991c401b213a0b0923383f40ed53c1ca44ae99ec2  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:57673cdd6a437dfb4048d3d438c77f1d4bf0602e2f092f6a989177123099db05" [label="sha256:57673cdd6a437dfb4048d3d438c77f1d4bf0602e2f092f6a989177123099db05" shape="plaintext"];
  "sha256:b27330ba3f0530c52b9f73a51b1edd42e9ce1339decaf0ea991dec8163f38c63" -> "sha256:0f777783f9b9df6ec4b5ae1269b33ac138e434a0221b6832ba12540c8406177c" [label=""];
  "sha256:0f777783f9b9df6ec4b5ae1269b33ac138e434a0221b6832ba12540c8406177c" -> "sha256:57673cdd6a437dfb4048d3d438c77f1d4bf0602e2f092f6a989177123099db05" [label=""];
}

