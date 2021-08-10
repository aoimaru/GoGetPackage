[app/sources/345382345.Dockerfile]
digraph {
  "sha256:815e1e3f3f021b9159cb0fe9574ef55cf8ac1e4228c67bdb54d2119927ca4f97" [label="docker-image://docker.io/balenalib/imx7-var-som-alpine:3.8-build" shape="ellipse"];
  "sha256:600816e64d827bce8bfb5f1df4384cd7d809eb0bc8a4f101032294607352d12f" [label="/bin/sh -c apk add --no-cache libgcc libstdc++ libuv \t&& apk add --no-cache libssl1.0 || apk add --no-cache libssl1.1" shape="box"];
  "sha256:71b995f17a2ab7a6550aa2c1855d9c85469205dd3bd48655b2e0c35cef395a48" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/node/v$NODE_VERSION/node-v$NODE_VERSION-linux-alpine-armhf.tar.gz\" \t&& echo \"1c59484912033ea8e398ebde62af22e4a4c8688e1b91a3ec8323e201c1aa1cf7  node-v$NODE_VERSION-linux-alpine-armhf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-alpine-armhf.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-alpine-armhf.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:caf599111764c45d5e748fa4a0678cf0ce91acfcf65402db9a85e111d6a3bf00" [label="sha256:caf599111764c45d5e748fa4a0678cf0ce91acfcf65402db9a85e111d6a3bf00" shape="plaintext"];
  "sha256:815e1e3f3f021b9159cb0fe9574ef55cf8ac1e4228c67bdb54d2119927ca4f97" -> "sha256:600816e64d827bce8bfb5f1df4384cd7d809eb0bc8a4f101032294607352d12f" [label=""];
  "sha256:600816e64d827bce8bfb5f1df4384cd7d809eb0bc8a4f101032294607352d12f" -> "sha256:71b995f17a2ab7a6550aa2c1855d9c85469205dd3bd48655b2e0c35cef395a48" [label=""];
  "sha256:71b995f17a2ab7a6550aa2c1855d9c85469205dd3bd48655b2e0c35cef395a48" -> "sha256:caf599111764c45d5e748fa4a0678cf0ce91acfcf65402db9a85e111d6a3bf00" [label=""];
}
