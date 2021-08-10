[app/sources/345376522.Dockerfile]
digraph {
  "sha256:9f0a0039f6e552b22dda622d0c0765a8bc7443be3b2af3289063edec54ff47eb" [label="docker-image://docker.io/balenalib/orbitty-tx2-alpine:3.8-build" shape="ellipse"];
  "sha256:e60ec620b75f7ecb4c8420cc25e6d62a1f67d41bee15f26dbe270514ec834c58" [label="/bin/sh -c apk add --no-cache libgcc libstdc++ libuv \t&& apk add --no-cache libssl1.0 || apk add --no-cache libssl1.1" shape="box"];
  "sha256:86647938327f5cd7fcb0dcd0e9a5fc35b5a5a468e1a47724a47b8ebba00d69c2" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/node/v$NODE_VERSION/node-v$NODE_VERSION-linux-alpine-aarch64.tar.gz\" \t&& echo \"16123488fcb07a35c9197b3ad9edde0c007d2f585bb80221f900e66c0958723b  node-v$NODE_VERSION-linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-alpine-aarch64.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-alpine-aarch64.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:978b7df38e33ca77f3615b3639465ad99a11788e6272f91e4d63d1dd1c2df032" [label="sha256:978b7df38e33ca77f3615b3639465ad99a11788e6272f91e4d63d1dd1c2df032" shape="plaintext"];
  "sha256:9f0a0039f6e552b22dda622d0c0765a8bc7443be3b2af3289063edec54ff47eb" -> "sha256:e60ec620b75f7ecb4c8420cc25e6d62a1f67d41bee15f26dbe270514ec834c58" [label=""];
  "sha256:e60ec620b75f7ecb4c8420cc25e6d62a1f67d41bee15f26dbe270514ec834c58" -> "sha256:86647938327f5cd7fcb0dcd0e9a5fc35b5a5a468e1a47724a47b8ebba00d69c2" [label=""];
  "sha256:86647938327f5cd7fcb0dcd0e9a5fc35b5a5a468e1a47724a47b8ebba00d69c2" -> "sha256:978b7df38e33ca77f3615b3639465ad99a11788e6272f91e4d63d1dd1c2df032" [label=""];
}
