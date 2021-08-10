[app/sources/345367685.Dockerfile]
digraph {
  "sha256:39bb90f42248924c4951d3095f2065b629b32a2af1292d9f8f6bf8d7517fd24e" [label="docker-image://docker.io/balenalib/generic-armv7ahf-alpine:3.7-run" shape="ellipse"];
  "sha256:3c3fb6d4538c395756f06c13fd0e2e78cddeaedddb3af68fffff423b3857f023" [label="/bin/sh -c apk add --no-cache libgcc libstdc++ libuv \t&& apk add --no-cache libssl1.0 || apk add --no-cache libssl1.1" shape="box"];
  "sha256:28de75238c763d2792190772015e45c3fcd60447b32a66abf261cec41d6e51cc" [label="/bin/sh -c buildDeps='curl' \t&& set -x \t&& for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& apk add --no-cache $buildDeps \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/node/v$NODE_VERSION/node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" \t&& echo \"8770947e1dc81e5a984c66cb286afafc0bd807a62298325c5cf376b8cd9d80bc  node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& apk del $buildDeps \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:dff86ddc39197d98101e86ee1c18a51a00da7579e0e03908d17405f574a1632a" [label="sha256:dff86ddc39197d98101e86ee1c18a51a00da7579e0e03908d17405f574a1632a" shape="plaintext"];
  "sha256:39bb90f42248924c4951d3095f2065b629b32a2af1292d9f8f6bf8d7517fd24e" -> "sha256:3c3fb6d4538c395756f06c13fd0e2e78cddeaedddb3af68fffff423b3857f023" [label=""];
  "sha256:3c3fb6d4538c395756f06c13fd0e2e78cddeaedddb3af68fffff423b3857f023" -> "sha256:28de75238c763d2792190772015e45c3fcd60447b32a66abf261cec41d6e51cc" [label=""];
  "sha256:28de75238c763d2792190772015e45c3fcd60447b32a66abf261cec41d6e51cc" -> "sha256:dff86ddc39197d98101e86ee1c18a51a00da7579e0e03908d17405f574a1632a" [label=""];
}

