[app/sources/345367199.Dockerfile]
digraph {
  "sha256:36f9e15843565af61e41c9615cc821f8d52c3e382301bf6b782a39779c7c7d9e" [label="docker-image://docker.io/balenalib/dl-pm6x-debian:stretch-run" shape="ellipse"];
  "sha256:cb310d1d411d37b98ef9a828f81c26ebc850ff98d33783aa9073c1b502296012" [label="/bin/sh -c buildDeps='curl' \t&& set -x \t&& for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --batch --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --batch --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& apt-get update && apt-get install -y $buildDeps --no-install-recommends \t&& rm -rf /var/lib/apt/lists/* \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"756f21a07a5a8c6c1037754a332b3adf7b39fb1d49acf0893488cc545a2438cf  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& apt-get purge -y --auto-remove $buildDeps \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:e97fb30af4a54e125639e02bc005dc62e58ff8d7be19bbcdb7e6d451e13305e1" [label="sha256:e97fb30af4a54e125639e02bc005dc62e58ff8d7be19bbcdb7e6d451e13305e1" shape="plaintext"];
  "sha256:36f9e15843565af61e41c9615cc821f8d52c3e382301bf6b782a39779c7c7d9e" -> "sha256:cb310d1d411d37b98ef9a828f81c26ebc850ff98d33783aa9073c1b502296012" [label=""];
  "sha256:cb310d1d411d37b98ef9a828f81c26ebc850ff98d33783aa9073c1b502296012" -> "sha256:e97fb30af4a54e125639e02bc005dc62e58ff8d7be19bbcdb7e6d451e13305e1" [label=""];
}

