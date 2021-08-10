[app/sources/345382171.Dockerfile]
digraph {
  "sha256:6459a97b6957abf0ebb94ebe77aa5d0786e418b941f386574c3acf234cc92c98" [label="docker-image://docker.io/balenalib/imx6ul-var-dart-alpine:3.9-build" shape="ellipse"];
  "sha256:22a4e4e2236aa8f0a4b4147a121063ee0170f3390520e7539e6357a96eea29ce" [label="/bin/sh -c apk add --no-cache libgcc libstdc++ libuv \t&& apk add --no-cache libssl1.0 || apk add --no-cache libssl1.1" shape="box"];
  "sha256:a01d95481c5d41a8dfc223c1b83bbc2da5f8b16caddf5c2f2458d2e8bfc4df2c" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/node/v$NODE_VERSION/node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" \t&& echo \"d7e40637b1765c286c267fbf7c33fb74d80de106d65fbebbeb52892db67ad7e8  node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:1feff788f2a6654d40541b86b4f428aef03dfb82a1866670d7799513005382da" [label="sha256:1feff788f2a6654d40541b86b4f428aef03dfb82a1866670d7799513005382da" shape="plaintext"];
  "sha256:6459a97b6957abf0ebb94ebe77aa5d0786e418b941f386574c3acf234cc92c98" -> "sha256:22a4e4e2236aa8f0a4b4147a121063ee0170f3390520e7539e6357a96eea29ce" [label=""];
  "sha256:22a4e4e2236aa8f0a4b4147a121063ee0170f3390520e7539e6357a96eea29ce" -> "sha256:a01d95481c5d41a8dfc223c1b83bbc2da5f8b16caddf5c2f2458d2e8bfc4df2c" [label=""];
  "sha256:a01d95481c5d41a8dfc223c1b83bbc2da5f8b16caddf5c2f2458d2e8bfc4df2c" -> "sha256:1feff788f2a6654d40541b86b4f428aef03dfb82a1866670d7799513005382da" [label=""];
}

