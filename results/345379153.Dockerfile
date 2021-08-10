[app/sources/345379153.Dockerfile]
digraph {
  "sha256:f2a8e886d361ba2fa2a16c429350b559f15822d20d5281b2fcc9ef36e7308551" [label="docker-image://docker.io/balenalib/amd64-fedora:28-run" shape="ellipse"];
  "sha256:6741804401a9753d407d19dcfaf32d09a3460dad6b849792d2c397a4cdc2b6a4" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz\" \t&& echo \"98bd18051cbdb39bbcda1ab169ca3fd3935d87e9cfc36e1b6fd6f609d46856bb  node-v$NODE_VERSION-linux-x64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-x64.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-x64.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:6fb1bdde27903b10bb2187102fcddc49396c6f478e3fd6b9bf6f1af8565de8dd" [label="sha256:6fb1bdde27903b10bb2187102fcddc49396c6f478e3fd6b9bf6f1af8565de8dd" shape="plaintext"];
  "sha256:f2a8e886d361ba2fa2a16c429350b559f15822d20d5281b2fcc9ef36e7308551" -> "sha256:6741804401a9753d407d19dcfaf32d09a3460dad6b849792d2c397a4cdc2b6a4" [label=""];
  "sha256:6741804401a9753d407d19dcfaf32d09a3460dad6b849792d2c397a4cdc2b6a4" -> "sha256:6fb1bdde27903b10bb2187102fcddc49396c6f478e3fd6b9bf6f1af8565de8dd" [label=""];
}
