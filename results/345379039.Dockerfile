[app/sources/345379039.Dockerfile]
digraph {
  "sha256:242533612f2f1523f1f2d7f0ade3353e9ea903d1669fd37dc99ca2311223c20e" [label="docker-image://docker.io/balenalib/am571x-evm-ubuntu:xenial-run" shape="ellipse"];
  "sha256:09dce1fc6d1ea06ed59e6a661ab1be6a95aafa3f74fc0e43d9e4d4f8a0859476" [label="/bin/sh -c buildDeps='curl' \t&& set -x \t&& for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& apt-get update && apt-get install -y $buildDeps --no-install-recommends \t&& rm -rf /var/lib/apt/lists/* \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/node/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7hf.tar.gz\" \t&& echo \"b94f8935568f746da0cbb89ec97508039c2cad2fc1750ab04150b098614b9241  node-v$NODE_VERSION-linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7hf.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7hf.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& apt-get purge -y --auto-remove $buildDeps \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:834aad6b60b1f266271f3e7b813466fc485302840bc8ec5d98d5cf2580434603" [label="sha256:834aad6b60b1f266271f3e7b813466fc485302840bc8ec5d98d5cf2580434603" shape="plaintext"];
  "sha256:242533612f2f1523f1f2d7f0ade3353e9ea903d1669fd37dc99ca2311223c20e" -> "sha256:09dce1fc6d1ea06ed59e6a661ab1be6a95aafa3f74fc0e43d9e4d4f8a0859476" [label=""];
  "sha256:09dce1fc6d1ea06ed59e6a661ab1be6a95aafa3f74fc0e43d9e4d4f8a0859476" -> "sha256:834aad6b60b1f266271f3e7b813466fc485302840bc8ec5d98d5cf2580434603" [label=""];
}
