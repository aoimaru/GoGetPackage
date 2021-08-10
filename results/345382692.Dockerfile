[app/sources/345382692.Dockerfile]
digraph {
  "sha256:99808ee768178e2972f89133a0f858464b816602beb00118ab4240c4e9ae0e4a" [label="docker-image://docker.io/balenalib/intel-edison-alpine:3.6-run" shape="ellipse"];
  "sha256:59cc139df7bb8a4892afb7d1edff30ce8718eb2b876eecefe56672206b63f9c2" [label="/bin/sh -c apk add --no-cache libgcc libstdc++ libuv \t&& apk add --no-cache libssl1.0 || apk add --no-cache libssl1.1" shape="box"];
  "sha256:cc8f12204fa9db88a4ec81744a5453f5ef7785c6c131259ebf65fe5c75be8751" [label="/bin/sh -c buildDeps='curl' \t&& set -x \t&& for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& apk add --no-cache $buildDeps \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/node/v$NODE_VERSION/node-v$NODE_VERSION-linux-alpine-i386.tar.gz\" \t&& echo \"6a2c49d9b89d99455fbef763a4f7d3a394a7ed9cf597b2aee7396935375de8b3  node-v$NODE_VERSION-linux-alpine-i386.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-alpine-i386.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-alpine-i386.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& apk del $buildDeps \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:f2f77c9e540ec239fce4a698348de1c20ffbe00f196910c446d353457c8bf151" [label="sha256:f2f77c9e540ec239fce4a698348de1c20ffbe00f196910c446d353457c8bf151" shape="plaintext"];
  "sha256:99808ee768178e2972f89133a0f858464b816602beb00118ab4240c4e9ae0e4a" -> "sha256:59cc139df7bb8a4892afb7d1edff30ce8718eb2b876eecefe56672206b63f9c2" [label=""];
  "sha256:59cc139df7bb8a4892afb7d1edff30ce8718eb2b876eecefe56672206b63f9c2" -> "sha256:cc8f12204fa9db88a4ec81744a5453f5ef7785c6c131259ebf65fe5c75be8751" [label=""];
  "sha256:cc8f12204fa9db88a4ec81744a5453f5ef7785c6c131259ebf65fe5c75be8751" -> "sha256:f2f77c9e540ec239fce4a698348de1c20ffbe00f196910c446d353457c8bf151" [label=""];
}
