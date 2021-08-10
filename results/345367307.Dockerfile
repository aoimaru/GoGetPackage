[app/sources/345367307.Dockerfile]
digraph {
  "sha256:16e143b286665b51b11d0534d064b14fe86d90031fba5c7f8df70ca5b95930ed" [label="docker-image://docker.io/balenalib/fincm3-alpine:3.6-run@sha256:97e0254420273646b67166684c291344cc2eb005a6b6aea02b6f30ac572fe5ac" shape="ellipse"];
  "sha256:03415cdcffe1c6525c20f20ffc4d57d89a39b70966224653da0c1f486775890a" [label="/bin/sh -c apk add --no-cache libgcc libstdc++ libuv \t&& apk add --no-cache libssl1.0 || apk add --no-cache libssl1.1" shape="box"];
  "sha256:8a8a5c281c01a7b5a8aa0c7285093bfa749a675a0c4a09f421be046e52eabce7" [label="/bin/sh -c buildDeps='curl' \t&& set -x \t&& for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& apk add --no-cache $buildDeps \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/node/v$NODE_VERSION/node-v$NODE_VERSION-linux-alpine-armhf.tar.gz\" \t&& echo \"1c59484912033ea8e398ebde62af22e4a4c8688e1b91a3ec8323e201c1aa1cf7  node-v$NODE_VERSION-linux-alpine-armhf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-alpine-armhf.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-alpine-armhf.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& apk del $buildDeps \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:79bfb41b33f471ff76aa4f4fee6dd91f0a6b56de40513956f48deb48a604f6dd" [label="sha256:79bfb41b33f471ff76aa4f4fee6dd91f0a6b56de40513956f48deb48a604f6dd" shape="plaintext"];
  "sha256:16e143b286665b51b11d0534d064b14fe86d90031fba5c7f8df70ca5b95930ed" -> "sha256:03415cdcffe1c6525c20f20ffc4d57d89a39b70966224653da0c1f486775890a" [label=""];
  "sha256:03415cdcffe1c6525c20f20ffc4d57d89a39b70966224653da0c1f486775890a" -> "sha256:8a8a5c281c01a7b5a8aa0c7285093bfa749a675a0c4a09f421be046e52eabce7" [label=""];
  "sha256:8a8a5c281c01a7b5a8aa0c7285093bfa749a675a0c4a09f421be046e52eabce7" -> "sha256:79bfb41b33f471ff76aa4f4fee6dd91f0a6b56de40513956f48deb48a604f6dd" [label=""];
}
