[app/sources/345381254.Dockerfile]
digraph {
  "sha256:31281d02f22846905b3b4707ce9ecedced1e27feed19bbb36bf4904f560847b5" [label="docker-image://docker.io/balenalib/beagleboard-xm-alpine:3.6-run" shape="ellipse"];
  "sha256:875e146152e70ac13ed3136d63f7785adf55c9af0d552bab2a4ed739b682fb51" [label="/bin/sh -c apk add --no-cache libgcc libstdc++ libuv \t&& apk add --no-cache libssl1.0 || apk add --no-cache libssl1.1" shape="box"];
  "sha256:ad5750d00c56d1eb8f60cc56b4418bea27bbf7492ce854b91cad5b65c42bda2b" [label="/bin/sh -c buildDeps='curl' \t&& set -x \t&& for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& apk add --no-cache $buildDeps \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/node/v$NODE_VERSION/node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" \t&& echo \"cfb788c0c13afda9149add75b2905d61e49a3fa2a2ed28660cc9d81cf2ebc206  node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-alpine-armv7hf.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& apk del $buildDeps \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:85f7f05254a3ed6ded83fa56d56a9440f9ca965f84f6a51e7431a09aed64e5fc" [label="sha256:85f7f05254a3ed6ded83fa56d56a9440f9ca965f84f6a51e7431a09aed64e5fc" shape="plaintext"];
  "sha256:31281d02f22846905b3b4707ce9ecedced1e27feed19bbb36bf4904f560847b5" -> "sha256:875e146152e70ac13ed3136d63f7785adf55c9af0d552bab2a4ed739b682fb51" [label=""];
  "sha256:875e146152e70ac13ed3136d63f7785adf55c9af0d552bab2a4ed739b682fb51" -> "sha256:ad5750d00c56d1eb8f60cc56b4418bea27bbf7492ce854b91cad5b65c42bda2b" [label=""];
  "sha256:ad5750d00c56d1eb8f60cc56b4418bea27bbf7492ce854b91cad5b65c42bda2b" -> "sha256:85f7f05254a3ed6ded83fa56d56a9440f9ca965f84f6a51e7431a09aed64e5fc" [label=""];
}

