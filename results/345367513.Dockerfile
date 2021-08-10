[app/sources/345367513.Dockerfile]
digraph {
  "sha256:01785534cc87e76aa6d88eaaa95ef24f3a609de0447da9547f49eba68eb40502" [label="docker-image://docker.io/balenalib/generic-aarch64-alpine:3.9-run" shape="ellipse"];
  "sha256:76b11b5a655f56bb2f9daf7acd59d6c582569cccfa5fc0e2be011af9b204fbef" [label="/bin/sh -c apk add --no-cache libgcc libstdc++ libuv \t&& apk add --no-cache libssl1.0 || apk add --no-cache libssl1.1" shape="box"];
  "sha256:ba74f6146907961351aeb20627f5d084a6552e5735d042f064b827fea8763e95" [label="/bin/sh -c buildDeps='curl' \t&& set -x \t&& for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& apk add --no-cache $buildDeps \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/node/v$NODE_VERSION/node-v$NODE_VERSION-linux-alpine-aarch64.tar.gz\" \t&& echo \"304250e38ed66c5763c757831d30dcf384e58d767a05b0731adc09a573446a2b  node-v$NODE_VERSION-linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-alpine-aarch64.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-alpine-aarch64.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& apk del $buildDeps \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:0ad9fd0c3351365a69d0eab304ad7260909ee54a7bd8c2a78669413dde8c69db" [label="sha256:0ad9fd0c3351365a69d0eab304ad7260909ee54a7bd8c2a78669413dde8c69db" shape="plaintext"];
  "sha256:01785534cc87e76aa6d88eaaa95ef24f3a609de0447da9547f49eba68eb40502" -> "sha256:76b11b5a655f56bb2f9daf7acd59d6c582569cccfa5fc0e2be011af9b204fbef" [label=""];
  "sha256:76b11b5a655f56bb2f9daf7acd59d6c582569cccfa5fc0e2be011af9b204fbef" -> "sha256:ba74f6146907961351aeb20627f5d084a6552e5735d042f064b827fea8763e95" [label=""];
  "sha256:ba74f6146907961351aeb20627f5d084a6552e5735d042f064b827fea8763e95" -> "sha256:0ad9fd0c3351365a69d0eab304ad7260909ee54a7bd8c2a78669413dde8c69db" [label=""];
}

