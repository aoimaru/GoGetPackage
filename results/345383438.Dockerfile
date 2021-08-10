[app/sources/345383438.Dockerfile]
digraph {
  "sha256:cab238ecfde7687a000f6ae0ad073ca85d75a14b344d702a74d9e1e505beffc7" [label="docker-image://docker.io/balenalib/nanopi-neo-air-fedora:29-run" shape="ellipse"];
  "sha256:38b07e87da8e91e224ef5bdbd42fffca0674e970ef3149068865a6cbdfaf10fb" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"ae6c41d78df4c5ef4032128eda9abd49a549bff5c8a20fd32d1072b6e5e8556b  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:1300ca7c0b1913c43642b416ae0cb000906d61438eff495756b2212112ef7be4" [label="sha256:1300ca7c0b1913c43642b416ae0cb000906d61438eff495756b2212112ef7be4" shape="plaintext"];
  "sha256:cab238ecfde7687a000f6ae0ad073ca85d75a14b344d702a74d9e1e505beffc7" -> "sha256:38b07e87da8e91e224ef5bdbd42fffca0674e970ef3149068865a6cbdfaf10fb" [label=""];
  "sha256:38b07e87da8e91e224ef5bdbd42fffca0674e970ef3149068865a6cbdfaf10fb" -> "sha256:1300ca7c0b1913c43642b416ae0cb000906d61438eff495756b2212112ef7be4" [label=""];
}

