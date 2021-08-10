[app/sources/345374430.Dockerfile]
digraph {
  "sha256:898f6a3195dcd5dc7ec84fa38a7c4050a4a280f3f706e999ad5b261b26f8f0c6" [label="docker-image://docker.io/balenalib/odroid-xu4-alpine:edge-run" shape="ellipse"];
  "sha256:8f5f2da09671f9bd8f077b3e106507cdda9fb63c9255cfd42aa75d4f747ab0ee" [label="/bin/sh -c apk add --no-cache libgcc libstdc++ libuv \t&& apk add --no-cache libssl1.0 || apk add --no-cache libssl1.1" shape="box"];
  "sha256:9b3b8358f9b9a1fe4177ac5a32b2c78049506e29439fdae8a33c2c2383af5426" [label="/bin/sh -c buildDeps='curl' \t&& set -x \t&& for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& apk add --no-cache $buildDeps \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/node/v$NODE_VERSION/node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" \t&& echo \"cfb788c0c13afda9149add75b2905d61e49a3fa2a2ed28660cc9d81cf2ebc206  node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& apk del $buildDeps \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:31caaadf877df150e7c4ad3e35f20b159b8443c7308c4b27cf08d4fb6518034f" [label="sha256:31caaadf877df150e7c4ad3e35f20b159b8443c7308c4b27cf08d4fb6518034f" shape="plaintext"];
  "sha256:898f6a3195dcd5dc7ec84fa38a7c4050a4a280f3f706e999ad5b261b26f8f0c6" -> "sha256:8f5f2da09671f9bd8f077b3e106507cdda9fb63c9255cfd42aa75d4f747ab0ee" [label=""];
  "sha256:8f5f2da09671f9bd8f077b3e106507cdda9fb63c9255cfd42aa75d4f747ab0ee" -> "sha256:9b3b8358f9b9a1fe4177ac5a32b2c78049506e29439fdae8a33c2c2383af5426" [label=""];
  "sha256:9b3b8358f9b9a1fe4177ac5a32b2c78049506e29439fdae8a33c2c2383af5426" -> "sha256:31caaadf877df150e7c4ad3e35f20b159b8443c7308c4b27cf08d4fb6518034f" [label=""];
}

