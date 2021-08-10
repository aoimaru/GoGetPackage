[app/sources/345369400.Dockerfile]
digraph {
  "sha256:4c486b7b8ce5342de8c08979085fa7bb32a0e02b82cb1104c357955805a866b3" [label="docker-image://docker.io/balenalib/jetson-tx2-alpine:3.5-build" shape="ellipse"];
  "sha256:089d77d9c5100492608968b47edae63d65b8ab839e91c3060949047228ae786d" [label="/bin/sh -c apk add --no-cache libgcc libstdc++ libuv \t&& apk add --no-cache libssl1.0 || apk add --no-cache libssl1.1" shape="box"];
  "sha256:73b5f2ba69e5bdaf1c967322dc17c5f88ce1e7412a052f1dbcd10bbdab5a6e71" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/node/v$NODE_VERSION/node-v$NODE_VERSION-linux-alpine-aarch64.tar.gz\" \t&& echo \"329e2dd894b232042e9bdf13ba3d55405b4066e9bd1feb165f925302a09fbef2  node-v$NODE_VERSION-linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-alpine-aarch64.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-alpine-aarch64.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:c9aedd4cc9c3b69ce1f54c099ace08d2b4cff1c3c42aa0745d31886214a78830" [label="sha256:c9aedd4cc9c3b69ce1f54c099ace08d2b4cff1c3c42aa0745d31886214a78830" shape="plaintext"];
  "sha256:4c486b7b8ce5342de8c08979085fa7bb32a0e02b82cb1104c357955805a866b3" -> "sha256:089d77d9c5100492608968b47edae63d65b8ab839e91c3060949047228ae786d" [label=""];
  "sha256:089d77d9c5100492608968b47edae63d65b8ab839e91c3060949047228ae786d" -> "sha256:73b5f2ba69e5bdaf1c967322dc17c5f88ce1e7412a052f1dbcd10bbdab5a6e71" [label=""];
  "sha256:73b5f2ba69e5bdaf1c967322dc17c5f88ce1e7412a052f1dbcd10bbdab5a6e71" -> "sha256:c9aedd4cc9c3b69ce1f54c099ace08d2b4cff1c3c42aa0745d31886214a78830" [label=""];
}

