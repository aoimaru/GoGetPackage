[app/sources/345374524.Dockerfile]
digraph {
  "sha256:9adae870d57adba3bed630a62fc48e49e60e770e8c57ffd2f9d56f0b91f28138" [label="docker-image://docker.io/balenalib/odroid-xu4-ubuntu:bionic-run" shape="ellipse"];
  "sha256:3d12517549bc0be121faaf69433dce9ee8046d4daba93cb11bda9eabb151ec5c" [label="/bin/sh -c buildDeps='curl' \t&& set -x \t&& for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& apt-get update && apt-get install -y $buildDeps --no-install-recommends \t&& rm -rf /var/lib/apt/lists/* \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"12929c2128f740a47690c5e991c401b213a0b0923383f40ed53c1ca44ae99ec2  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& apt-get purge -y --auto-remove $buildDeps \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:1632c5f686d4a21422723616930c981c09febf65407aacd94cf956e947efd113" [label="sha256:1632c5f686d4a21422723616930c981c09febf65407aacd94cf956e947efd113" shape="plaintext"];
  "sha256:9adae870d57adba3bed630a62fc48e49e60e770e8c57ffd2f9d56f0b91f28138" -> "sha256:3d12517549bc0be121faaf69433dce9ee8046d4daba93cb11bda9eabb151ec5c" [label=""];
  "sha256:3d12517549bc0be121faaf69433dce9ee8046d4daba93cb11bda9eabb151ec5c" -> "sha256:1632c5f686d4a21422723616930c981c09febf65407aacd94cf956e947efd113" [label=""];
}

