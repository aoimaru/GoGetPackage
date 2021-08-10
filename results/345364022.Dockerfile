[app/sources/345364022.Dockerfile]
digraph {
  "sha256:650b4bc93c5e0fa5bf1f1867c9998940bc4a1773d90f586fc5b76705da3cfde0" [label="docker-image://docker.io/balenalib/beaglebone-green-alpine:3.6-build" shape="ellipse"];
  "sha256:145b8daba07e1071cf71c830d69843f37d1084d33437b700c71d662c0a8cd9dc" [label="/bin/sh -c apk add --no-cache libgcc libstdc++ libuv \t&& apk add --no-cache libssl1.0 || apk add --no-cache libssl1.1" shape="box"];
  "sha256:cbaa49e9d514b612b4ab02ddf3d32cd0fed2cb5b5feb2bec98905544390f6d42" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/node/v$NODE_VERSION/node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" \t&& echo \"d7e40637b1765c286c267fbf7c33fb74d80de106d65fbebbeb52892db67ad7e8  node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:e8d4cf0321b7ff7d4ba7787b372b1f9d1e8d74336447306b5ea207f149763353" [label="sha256:e8d4cf0321b7ff7d4ba7787b372b1f9d1e8d74336447306b5ea207f149763353" shape="plaintext"];
  "sha256:650b4bc93c5e0fa5bf1f1867c9998940bc4a1773d90f586fc5b76705da3cfde0" -> "sha256:145b8daba07e1071cf71c830d69843f37d1084d33437b700c71d662c0a8cd9dc" [label=""];
  "sha256:145b8daba07e1071cf71c830d69843f37d1084d33437b700c71d662c0a8cd9dc" -> "sha256:cbaa49e9d514b612b4ab02ddf3d32cd0fed2cb5b5feb2bec98905544390f6d42" [label=""];
  "sha256:cbaa49e9d514b612b4ab02ddf3d32cd0fed2cb5b5feb2bec98905544390f6d42" -> "sha256:e8d4cf0321b7ff7d4ba7787b372b1f9d1e8d74336447306b5ea207f149763353" [label=""];
}

