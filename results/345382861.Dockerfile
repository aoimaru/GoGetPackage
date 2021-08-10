[app/sources/345382861.Dockerfile]
digraph {
  "sha256:71c6e147aa89bd27c663883a8e03717e7e63e05cc9110b3c09fb682f797136c9" [label="docker-image://docker.io/balenalib/kitra710-fedora:28-build" shape="ellipse"];
  "sha256:a77a8abd2751176b7f3101b639344257c7272bf1ea46b9c2ba0afcdbae9f1e57" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-arm64.tar.gz\" \t&& echo \"c0678bc942efe04805e229b557a5b4f82671f05f3325cc33d7c6ea2531d3ce96  node-v$NODE_VERSION-linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-arm64.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-arm64.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:0cbfe6028df4715bb3711856083f8be10630134f7fc7b1d9d4d4071a247b1ccb" [label="sha256:0cbfe6028df4715bb3711856083f8be10630134f7fc7b1d9d4d4071a247b1ccb" shape="plaintext"];
  "sha256:71c6e147aa89bd27c663883a8e03717e7e63e05cc9110b3c09fb682f797136c9" -> "sha256:a77a8abd2751176b7f3101b639344257c7272bf1ea46b9c2ba0afcdbae9f1e57" [label=""];
  "sha256:a77a8abd2751176b7f3101b639344257c7272bf1ea46b9c2ba0afcdbae9f1e57" -> "sha256:0cbfe6028df4715bb3711856083f8be10630134f7fc7b1d9d4d4071a247b1ccb" [label=""];
}
