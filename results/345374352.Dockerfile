[app/sources/345374352.Dockerfile]
digraph {
  "sha256:64a38920f480f66a9603698eb2a60c0c1d1aa90605c57e06422519ae35dd8365" [label="docker-image://docker.io/balenalib/odroid-c1-ubuntu:cosmic-run" shape="ellipse"];
  "sha256:e54356a14b51085f05d9f238ce3084367e25c7d0d3e2b9ef80f6424a83244c1b" [label="/bin/sh -c buildDeps='curl' \t&& set -x \t&& for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& apt-get update && apt-get install -y $buildDeps --no-install-recommends \t&& rm -rf /var/lib/apt/lists/* \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"ae6c41d78df4c5ef4032128eda9abd49a549bff5c8a20fd32d1072b6e5e8556b  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& apt-get purge -y --auto-remove $buildDeps \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:c232cbe7dfcd766735ceb80ac76854423438216628dd4f5b51d64635fb04b28e" [label="sha256:c232cbe7dfcd766735ceb80ac76854423438216628dd4f5b51d64635fb04b28e" shape="plaintext"];
  "sha256:64a38920f480f66a9603698eb2a60c0c1d1aa90605c57e06422519ae35dd8365" -> "sha256:e54356a14b51085f05d9f238ce3084367e25c7d0d3e2b9ef80f6424a83244c1b" [label=""];
  "sha256:e54356a14b51085f05d9f238ce3084367e25c7d0d3e2b9ef80f6424a83244c1b" -> "sha256:c232cbe7dfcd766735ceb80ac76854423438216628dd4f5b51d64635fb04b28e" [label=""];
}

