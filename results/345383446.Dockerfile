[app/sources/345383446.Dockerfile]
digraph {
  "sha256:ee0843d04ebd8057a0e2ce2443d295e65657cf92497a15f3031afd2817bcadf8" [label="docker-image://docker.io/balenalib/nanopi-neo-air-ubuntu:artful-run" shape="ellipse"];
  "sha256:bd0d2094b90663b450f92de873747e596df7bc8a7b2260a083219d985e11cce6" [label="/bin/sh -c buildDeps='curl' \t&& set -x \t&& for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& apt-get update && apt-get install -y $buildDeps --no-install-recommends \t&& rm -rf /var/lib/apt/lists/* \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"756f21a07a5a8c6c1037754a332b3adf7b39fb1d49acf0893488cc545a2438cf  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& apt-get purge -y --auto-remove $buildDeps \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:663e3dc10a1a6abb2fe11b68fae1b76bdf340a2cb7e5d6ae18addb915102c81b" [label="sha256:663e3dc10a1a6abb2fe11b68fae1b76bdf340a2cb7e5d6ae18addb915102c81b" shape="plaintext"];
  "sha256:ee0843d04ebd8057a0e2ce2443d295e65657cf92497a15f3031afd2817bcadf8" -> "sha256:bd0d2094b90663b450f92de873747e596df7bc8a7b2260a083219d985e11cce6" [label=""];
  "sha256:bd0d2094b90663b450f92de873747e596df7bc8a7b2260a083219d985e11cce6" -> "sha256:663e3dc10a1a6abb2fe11b68fae1b76bdf340a2cb7e5d6ae18addb915102c81b" [label=""];
}
