[app/sources/345369096.Dockerfile]
digraph {
  "sha256:9846de774827225c04e80758516c155c8260b1e1597ac229323f022b6216fc89" [label="docker-image://docker.io/balenalib/jetson-nano-debian:sid-build@sha256:24a971b63a352f7562fce70ca22fd20b5ae8cb45cc319b4f9952e7e54c019378" shape="ellipse"];
  "sha256:7514b3d19bfd1e8c5ddf8a59a298a06ed2963749eba1b64ac4146e79ee9db5a0" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --batch --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --batch --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-arm64.tar.gz\" \t&& echo \"78237456386d66ac2143a25530dd5b39326a874079ba7c0676a4639e894567c4  node-v$NODE_VERSION-linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-arm64.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-arm64.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:534f6049c07b598d4fc1772e51197d7452305738589e1babb25c4f8348bad4e8" [label="sha256:534f6049c07b598d4fc1772e51197d7452305738589e1babb25c4f8348bad4e8" shape="plaintext"];
  "sha256:9846de774827225c04e80758516c155c8260b1e1597ac229323f022b6216fc89" -> "sha256:7514b3d19bfd1e8c5ddf8a59a298a06ed2963749eba1b64ac4146e79ee9db5a0" [label=""];
  "sha256:7514b3d19bfd1e8c5ddf8a59a298a06ed2963749eba1b64ac4146e79ee9db5a0" -> "sha256:534f6049c07b598d4fc1772e51197d7452305738589e1babb25c4f8348bad4e8" [label=""];
}
