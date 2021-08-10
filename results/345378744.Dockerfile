[app/sources/345378744.Dockerfile]
digraph {
  "sha256:e08a39283b8845f20a2b56a1fafada7bd6342338d404c22fd94c507903e94d0e" [label="docker-image://docker.io/balenalib/aarch64-debian:jessie-build" shape="ellipse"];
  "sha256:c4ffc1f325bdb7a6391468ec2cfb280800880abe5e6c037c109455c46802696d" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --batch --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --batch --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-arm64.tar.gz\" \t&& echo \"312a7942f5fbd0aa83d6e624a06681275db2cb3c3eeaf3e452ad04aac17b6de5  node-v$NODE_VERSION-linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-arm64.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-arm64.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:46bc1ebe09eee9ab48e565c733e7ee75a40020a78e038a935c28e581d6fc7498" [label="sha256:46bc1ebe09eee9ab48e565c733e7ee75a40020a78e038a935c28e581d6fc7498" shape="plaintext"];
  "sha256:e08a39283b8845f20a2b56a1fafada7bd6342338d404c22fd94c507903e94d0e" -> "sha256:c4ffc1f325bdb7a6391468ec2cfb280800880abe5e6c037c109455c46802696d" [label=""];
  "sha256:c4ffc1f325bdb7a6391468ec2cfb280800880abe5e6c037c109455c46802696d" -> "sha256:46bc1ebe09eee9ab48e565c733e7ee75a40020a78e038a935c28e581d6fc7498" [label=""];
}
