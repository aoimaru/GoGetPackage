[app/sources/345380911.Dockerfile]
digraph {
  "sha256:ef70adf65c7c2c851212d4e4b459ac3ac8b6501b70ae0c77b91796421d01f3bd" [label="docker-image://docker.io/balenalib/asus-tinker-board-alpine:3.7-build" shape="ellipse"];
  "sha256:0dd4ee91f0160072c51585a2b16e8b6d564bd31e93667cc5014c60a1ce14f120" [label="/bin/sh -c apk add --no-cache libgcc libstdc++ libuv \t&& apk add --no-cache libssl1.0 || apk add --no-cache libssl1.1" shape="box"];
  "sha256:c7a76b8aee7912e5885296c8d7d0c76a454d261a4fa06740561c35f31783cc9a" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/node/v$NODE_VERSION/node-v$NODE_VERSION-linux-alpine-armhf.tar.gz\" \t&& echo \"1c59484912033ea8e398ebde62af22e4a4c8688e1b91a3ec8323e201c1aa1cf7  node-v$NODE_VERSION-linux-alpine-armhf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-alpine-armhf.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-alpine-armhf.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:819f53703402546186bb91bb816634f0ca7268f4d7cf73f2f53aedb005245b5a" [label="sha256:819f53703402546186bb91bb816634f0ca7268f4d7cf73f2f53aedb005245b5a" shape="plaintext"];
  "sha256:ef70adf65c7c2c851212d4e4b459ac3ac8b6501b70ae0c77b91796421d01f3bd" -> "sha256:0dd4ee91f0160072c51585a2b16e8b6d564bd31e93667cc5014c60a1ce14f120" [label=""];
  "sha256:0dd4ee91f0160072c51585a2b16e8b6d564bd31e93667cc5014c60a1ce14f120" -> "sha256:c7a76b8aee7912e5885296c8d7d0c76a454d261a4fa06740561c35f31783cc9a" [label=""];
  "sha256:c7a76b8aee7912e5885296c8d7d0c76a454d261a4fa06740561c35f31783cc9a" -> "sha256:819f53703402546186bb91bb816634f0ca7268f4d7cf73f2f53aedb005245b5a" [label=""];
}

