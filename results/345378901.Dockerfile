[app/sources/345378901.Dockerfile]
digraph {
  "sha256:bf0f155eb6d32f42492f6a42e857e5bf1a16c1641b3b25f3872a7acdb7444069" [label="docker-image://docker.io/balenalib/am571x-evm-alpine:3.9-run" shape="ellipse"];
  "sha256:eab9a54c0e0d77a2066929736679508a6f7a782bc0b4a04052e61814d76b9d0d" [label="/bin/sh -c apk add --no-cache libgcc libstdc++ libuv \t&& apk add --no-cache libssl1.0 || apk add --no-cache libssl1.1" shape="box"];
  "sha256:8abb08f112759aef683dd119ce44dbbea1039d7f8af92cecb7468c416f1aab1c" [label="/bin/sh -c buildDeps='curl' \t&& set -x \t&& for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& apk add --no-cache $buildDeps \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/node/v$NODE_VERSION/node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" \t&& echo \"cfb788c0c13afda9149add75b2905d61e49a3fa2a2ed28660cc9d81cf2ebc206  node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& apk del $buildDeps \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:135038f3541fdd032b2b97003cc641912f7af82a6ba669482af6aa496ec8bdc8" [label="sha256:135038f3541fdd032b2b97003cc641912f7af82a6ba669482af6aa496ec8bdc8" shape="plaintext"];
  "sha256:bf0f155eb6d32f42492f6a42e857e5bf1a16c1641b3b25f3872a7acdb7444069" -> "sha256:eab9a54c0e0d77a2066929736679508a6f7a782bc0b4a04052e61814d76b9d0d" [label=""];
  "sha256:eab9a54c0e0d77a2066929736679508a6f7a782bc0b4a04052e61814d76b9d0d" -> "sha256:8abb08f112759aef683dd119ce44dbbea1039d7f8af92cecb7468c416f1aab1c" [label=""];
  "sha256:8abb08f112759aef683dd119ce44dbbea1039d7f8af92cecb7468c416f1aab1c" -> "sha256:135038f3541fdd032b2b97003cc641912f7af82a6ba669482af6aa496ec8bdc8" [label=""];
}

