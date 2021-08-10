[app/sources/345364243.Dockerfile]
digraph {
  "sha256:fb496feac6d7fbc181e7463a3b00a38cd63d52547156de4d211f66d0ad4fb2a2" [label="docker-image://docker.io/balenalib/beaglebone-pocket-alpine:edge-run" shape="ellipse"];
  "sha256:b80a01f78c35415d8c5b80b3fe76adcea6f702614d8cad1ad5484d914188c84e" [label="/bin/sh -c apk add --no-cache libgcc libstdc++ libuv \t&& apk add --no-cache libssl1.0 || apk add --no-cache libssl1.1" shape="box"];
  "sha256:fb1cbe08959f8e43f5b5010d64e918d407662532c37e61aa7880e16ff66fa541" [label="/bin/sh -c buildDeps='curl' \t&& set -x \t&& for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& apk add --no-cache $buildDeps \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/node/v$NODE_VERSION/node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" \t&& echo \"d7e40637b1765c286c267fbf7c33fb74d80de106d65fbebbeb52892db67ad7e8  node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& apk del $buildDeps \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:1332e11502a5fdc0743bfc8be6772d38c663608a970bc3997db8295c2c6280d0" [label="sha256:1332e11502a5fdc0743bfc8be6772d38c663608a970bc3997db8295c2c6280d0" shape="plaintext"];
  "sha256:fb496feac6d7fbc181e7463a3b00a38cd63d52547156de4d211f66d0ad4fb2a2" -> "sha256:b80a01f78c35415d8c5b80b3fe76adcea6f702614d8cad1ad5484d914188c84e" [label=""];
  "sha256:b80a01f78c35415d8c5b80b3fe76adcea6f702614d8cad1ad5484d914188c84e" -> "sha256:fb1cbe08959f8e43f5b5010d64e918d407662532c37e61aa7880e16ff66fa541" [label=""];
  "sha256:fb1cbe08959f8e43f5b5010d64e918d407662532c37e61aa7880e16ff66fa541" -> "sha256:1332e11502a5fdc0743bfc8be6772d38c663608a970bc3997db8295c2c6280d0" [label=""];
}

