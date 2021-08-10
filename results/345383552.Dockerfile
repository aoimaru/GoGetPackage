[app/sources/345383552.Dockerfile]
digraph {
  "sha256:a1ebb4185c5ab8a3b78b4d7c25034ba4f7ca4ccbf092cb9b8878a51ac1e6d960" [label="docker-image://docker.io/balenalib/nitrogen6x-alpine:edge-run" shape="ellipse"];
  "sha256:93841639dd2635f613aec630adace98f01f0d16f42b6a90c2f76b8860bf707f7" [label="/bin/sh -c apk add --no-cache libgcc libstdc++ libuv \t&& apk add --no-cache libssl1.0 || apk add --no-cache libssl1.1" shape="box"];
  "sha256:7eaf5c7536be51096b6b34a991a77146e5c36f09aa3e62570c56a2ad85b65eac" [label="/bin/sh -c buildDeps='curl' \t&& set -x \t&& for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& apk add --no-cache $buildDeps \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/node/v$NODE_VERSION/node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" \t&& echo \"8770947e1dc81e5a984c66cb286afafc0bd807a62298325c5cf376b8cd9d80bc  node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& apk del $buildDeps \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:4aa10a90a4f4b9a38281ee59c473106530be01b311dcb50be1bb7785f9f71a06" [label="sha256:4aa10a90a4f4b9a38281ee59c473106530be01b311dcb50be1bb7785f9f71a06" shape="plaintext"];
  "sha256:a1ebb4185c5ab8a3b78b4d7c25034ba4f7ca4ccbf092cb9b8878a51ac1e6d960" -> "sha256:93841639dd2635f613aec630adace98f01f0d16f42b6a90c2f76b8860bf707f7" [label=""];
  "sha256:93841639dd2635f613aec630adace98f01f0d16f42b6a90c2f76b8860bf707f7" -> "sha256:7eaf5c7536be51096b6b34a991a77146e5c36f09aa3e62570c56a2ad85b65eac" [label=""];
  "sha256:7eaf5c7536be51096b6b34a991a77146e5c36f09aa3e62570c56a2ad85b65eac" -> "sha256:4aa10a90a4f4b9a38281ee59c473106530be01b311dcb50be1bb7785f9f71a06" [label=""];
}

