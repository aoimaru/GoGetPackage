[app/sources/345364429.Dockerfile]
digraph {
  "sha256:603b9a80a7651f40b9c07ea734c648c4741605c34ef6a754bf0b1c91cee10ca8" [label="docker-image://docker.io/balenalib/blackboard-tx2-debian:buster-run" shape="ellipse"];
  "sha256:9466136f6ed1b527d7e5701c0d35397d10c4a05d2fb813f69f028b68a727883c" [label="/bin/sh -c buildDeps='curl' \t&& set -x \t&& for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --batch --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --batch --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& apt-get update && apt-get install -y $buildDeps --no-install-recommends \t&& rm -rf /var/lib/apt/lists/* \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-arm64.tar.gz\" \t&& echo \"2d84a777318bc95dd2a201ab8d700aea7e20641b3ece0c048399398dc645cbd7  node-v$NODE_VERSION-linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-arm64.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-arm64.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& apt-get purge -y --auto-remove $buildDeps \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:d8c1ea55114c4cc9d7b56979cd15ff3e24d9386258528a5bdf66f0dc589ca4ef" [label="sha256:d8c1ea55114c4cc9d7b56979cd15ff3e24d9386258528a5bdf66f0dc589ca4ef" shape="plaintext"];
  "sha256:603b9a80a7651f40b9c07ea734c648c4741605c34ef6a754bf0b1c91cee10ca8" -> "sha256:9466136f6ed1b527d7e5701c0d35397d10c4a05d2fb813f69f028b68a727883c" [label=""];
  "sha256:9466136f6ed1b527d7e5701c0d35397d10c4a05d2fb813f69f028b68a727883c" -> "sha256:d8c1ea55114c4cc9d7b56979cd15ff3e24d9386258528a5bdf66f0dc589ca4ef" [label=""];
}
