[app/sources/345382585.Dockerfile]
digraph {
  "sha256:9248893913cb94c2e7078b467414e666d903f02d45fb10a8b8aa54a236b0380d" [label="docker-image://docker.io/balenalib/imx8m-var-dart-debian:stretch-build" shape="ellipse"];
  "sha256:225754ff7dee1b007af6e1199fa5873f0aaf7c66daf72f2f4c31960b11651f80" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --batch --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --batch --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-arm64.tar.gz\" \t&& echo \"78f600a8690ae34aac8079142c77bb0f0f09c6ddea2272b9a135285610ad71d1  node-v$NODE_VERSION-linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-arm64.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-arm64.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:8ce6aa5548ca2496f70b97c83642aed742f68b4b9cc0a0a20d6dee66e2f964c8" [label="sha256:8ce6aa5548ca2496f70b97c83642aed742f68b4b9cc0a0a20d6dee66e2f964c8" shape="plaintext"];
  "sha256:9248893913cb94c2e7078b467414e666d903f02d45fb10a8b8aa54a236b0380d" -> "sha256:225754ff7dee1b007af6e1199fa5873f0aaf7c66daf72f2f4c31960b11651f80" [label=""];
  "sha256:225754ff7dee1b007af6e1199fa5873f0aaf7c66daf72f2f4c31960b11651f80" -> "sha256:8ce6aa5548ca2496f70b97c83642aed742f68b4b9cc0a0a20d6dee66e2f964c8" [label=""];
}
