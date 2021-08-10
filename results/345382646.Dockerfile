[app/sources/345382646.Dockerfile]
digraph {
  "sha256:c099608027bb58823967e7b155c8f51df82f4c35f86c09cde82c5542ba3ebd7e" [label="docker-image://docker.io/balenalib/imx8m-var-dart-ubuntu:bionic-run" shape="ellipse"];
  "sha256:6ba48731b7bbe47e1826bb04c857e5fad48a39148acbb27b30cfba96e82bb7c3" [label="/bin/sh -c buildDeps='curl' \t&& set -x \t&& for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& apt-get update && apt-get install -y $buildDeps --no-install-recommends \t&& rm -rf /var/lib/apt/lists/* \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-arm64.tar.gz\" \t&& echo \"78f600a8690ae34aac8079142c77bb0f0f09c6ddea2272b9a135285610ad71d1  node-v$NODE_VERSION-linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-arm64.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-arm64.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& apt-get purge -y --auto-remove $buildDeps \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:c139e2ffd01514ff3a0dcf83b48bf0efa8a0e06d20d2488b3068b86846b73ea0" [label="sha256:c139e2ffd01514ff3a0dcf83b48bf0efa8a0e06d20d2488b3068b86846b73ea0" shape="plaintext"];
  "sha256:c099608027bb58823967e7b155c8f51df82f4c35f86c09cde82c5542ba3ebd7e" -> "sha256:6ba48731b7bbe47e1826bb04c857e5fad48a39148acbb27b30cfba96e82bb7c3" [label=""];
  "sha256:6ba48731b7bbe47e1826bb04c857e5fad48a39148acbb27b30cfba96e82bb7c3" -> "sha256:c139e2ffd01514ff3a0dcf83b48bf0efa8a0e06d20d2488b3068b86846b73ea0" [label=""];
}

