[app/sources/345377009.Dockerfile]
digraph {
  "sha256:510aaf9c5f0e8218e95d4e1bb2e600e3db32a3affa46bc338e721c95a7b2f398" [label="docker-image://docker.io/balenalib/qemux86-64-ubuntu:bionic-run" shape="ellipse"];
  "sha256:b2b1129ca597c8eb80209809a15c13d6f422565f2b99ed026da6a5758fa8358f" [label="/bin/sh -c buildDeps='curl' \t&& set -x \t&& for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& apt-get update && apt-get install -y $buildDeps --no-install-recommends \t&& rm -rf /var/lib/apt/lists/* \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz\" \t&& echo \"9a16909157e68d4e409a73b008994ed05b4b6bc952b65ffa7fbc5abb973d31e9  node-v$NODE_VERSION-linux-x64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-x64.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-x64.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& apt-get purge -y --auto-remove $buildDeps \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:f79ed293557d8e017d911e9ce5ac0215402db88b5807c181801ddd01d09e685e" [label="sha256:f79ed293557d8e017d911e9ce5ac0215402db88b5807c181801ddd01d09e685e" shape="plaintext"];
  "sha256:510aaf9c5f0e8218e95d4e1bb2e600e3db32a3affa46bc338e721c95a7b2f398" -> "sha256:b2b1129ca597c8eb80209809a15c13d6f422565f2b99ed026da6a5758fa8358f" [label=""];
  "sha256:b2b1129ca597c8eb80209809a15c13d6f422565f2b99ed026da6a5758fa8358f" -> "sha256:f79ed293557d8e017d911e9ce5ac0215402db88b5807c181801ddd01d09e685e" [label=""];
}

