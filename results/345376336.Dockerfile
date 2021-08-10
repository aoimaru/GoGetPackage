[app/sources/345376336.Dockerfile]
digraph {
  "sha256:7eda77943d71e7c17a0cebacf95c38d6de9098eeb735e3bfbbcf49fdda8afc63" [label="docker-image://docker.io/balenalib/orangepi-plus2-alpine:3.8-build" shape="ellipse"];
  "sha256:1791a53b9bc650d375046174e17bc6d0bc7b41087b48992b50e23037d96e44d2" [label="/bin/sh -c apk add --no-cache libgcc libstdc++ libuv \t&& apk add --no-cache libssl1.0 || apk add --no-cache libssl1.1" shape="box"];
  "sha256:e7280609037a38a00cc329c64ea85296afc849d50934c70d44457202f3deb5fc" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/node/v$NODE_VERSION/node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" \t&& echo \"7aeb3a2f62e2165a2302586247ba25df58d8d1642264ca7ca50af447ac9d1a7a  node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:ecc46b4cec4d2527bd14d7849fa0ae84ea70fd8a6bc6a70690606991c5bc487e" [label="sha256:ecc46b4cec4d2527bd14d7849fa0ae84ea70fd8a6bc6a70690606991c5bc487e" shape="plaintext"];
  "sha256:7eda77943d71e7c17a0cebacf95c38d6de9098eeb735e3bfbbcf49fdda8afc63" -> "sha256:1791a53b9bc650d375046174e17bc6d0bc7b41087b48992b50e23037d96e44d2" [label=""];
  "sha256:1791a53b9bc650d375046174e17bc6d0bc7b41087b48992b50e23037d96e44d2" -> "sha256:e7280609037a38a00cc329c64ea85296afc849d50934c70d44457202f3deb5fc" [label=""];
  "sha256:e7280609037a38a00cc329c64ea85296afc849d50934c70d44457202f3deb5fc" -> "sha256:ecc46b4cec4d2527bd14d7849fa0ae84ea70fd8a6bc6a70690606991c5bc487e" [label=""];
}
