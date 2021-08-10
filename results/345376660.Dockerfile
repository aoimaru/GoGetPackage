[app/sources/345376660.Dockerfile]
digraph {
  "sha256:e463b377b5f48a4d0d4f190db110e4f4fa613e1c296a97959651a8d82ff1ddbf" [label="docker-image://docker.io/balenalib/orbitty-tx2-ubuntu:trusty-build" shape="ellipse"];
  "sha256:72b4442769691e3e108d4770103dfdd694d3d0665ed61af4e2a138fd5e5fa49e" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-arm64.tar.gz\" \t&& echo \"c0678bc942efe04805e229b557a5b4f82671f05f3325cc33d7c6ea2531d3ce96  node-v$NODE_VERSION-linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-arm64.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-arm64.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:75a80709e7c4ef061d79a970a2e99babfc4242bd8cb51012dfa66b4b047956b7" [label="sha256:75a80709e7c4ef061d79a970a2e99babfc4242bd8cb51012dfa66b4b047956b7" shape="plaintext"];
  "sha256:e463b377b5f48a4d0d4f190db110e4f4fa613e1c296a97959651a8d82ff1ddbf" -> "sha256:72b4442769691e3e108d4770103dfdd694d3d0665ed61af4e2a138fd5e5fa49e" [label=""];
  "sha256:72b4442769691e3e108d4770103dfdd694d3d0665ed61af4e2a138fd5e5fa49e" -> "sha256:75a80709e7c4ef061d79a970a2e99babfc4242bd8cb51012dfa66b4b047956b7" [label=""];
}
