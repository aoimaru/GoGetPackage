[app/sources/345382052.Dockerfile]
digraph {
  "sha256:6834354d39eb0851164f929eea36d5c76410ff5f7a3e3c51e27678a04610fdf4" [label="docker-image://docker.io/balenalib/i386-alpine:edge-run" shape="ellipse"];
  "sha256:8c6acc38c72ae97a1f02be0012a9f8e26f7d13544eb62f70043403731a44ab28" [label="/bin/sh -c apk add --no-cache libgcc libstdc++ libuv \t&& apk add --no-cache libssl1.0 || apk add --no-cache libssl1.1" shape="box"];
  "sha256:75f0191a048d16c54dcfd414a982289165ae6f284db5c99c0772bfb57e5b96e7" [label="/bin/sh -c buildDeps='curl' \t&& set -x \t&& for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& apk add --no-cache $buildDeps \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/node/v$NODE_VERSION/node-v$NODE_VERSION-linux-alpine-i386.tar.gz\" \t&& echo \"6a2c49d9b89d99455fbef763a4f7d3a394a7ed9cf597b2aee7396935375de8b3  node-v$NODE_VERSION-linux-alpine-i386.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-alpine-i386.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-alpine-i386.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& apk del $buildDeps \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:810a556f1bd4e8eb18253be0585625b818c8525c76989194918aeb5b062953d4" [label="sha256:810a556f1bd4e8eb18253be0585625b818c8525c76989194918aeb5b062953d4" shape="plaintext"];
  "sha256:6834354d39eb0851164f929eea36d5c76410ff5f7a3e3c51e27678a04610fdf4" -> "sha256:8c6acc38c72ae97a1f02be0012a9f8e26f7d13544eb62f70043403731a44ab28" [label=""];
  "sha256:8c6acc38c72ae97a1f02be0012a9f8e26f7d13544eb62f70043403731a44ab28" -> "sha256:75f0191a048d16c54dcfd414a982289165ae6f284db5c99c0772bfb57e5b96e7" [label=""];
  "sha256:75f0191a048d16c54dcfd414a982289165ae6f284db5c99c0772bfb57e5b96e7" -> "sha256:810a556f1bd4e8eb18253be0585625b818c8525c76989194918aeb5b062953d4" [label=""];
}

