[app/sources/345379305.Dockerfile]
digraph {
  "sha256:5037694d6547162d18b13dfae1ac27d281221b30b76bd1f87cf1a4ae5b3716d0" [label="docker-image://docker.io/balenalib/apalis-imx6q-debian:jessie-run" shape="ellipse"];
  "sha256:cf20a673bff01ca58fd94e414349dd9db496ebc93a732b081bce082d67ea24cc" [label="/bin/sh -c buildDeps='curl' \t&& set -x \t&& for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --batch --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --batch --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& apt-get update && apt-get install -y $buildDeps --no-install-recommends \t&& rm -rf /var/lib/apt/lists/* \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"12929c2128f740a47690c5e991c401b213a0b0923383f40ed53c1ca44ae99ec2  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& apt-get purge -y --auto-remove $buildDeps \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:b8948967daa2f8a41c3e39c00cadf7478076d55156d95a6b01bb2e7f60347796" [label="sha256:b8948967daa2f8a41c3e39c00cadf7478076d55156d95a6b01bb2e7f60347796" shape="plaintext"];
  "sha256:5037694d6547162d18b13dfae1ac27d281221b30b76bd1f87cf1a4ae5b3716d0" -> "sha256:cf20a673bff01ca58fd94e414349dd9db496ebc93a732b081bce082d67ea24cc" [label=""];
  "sha256:cf20a673bff01ca58fd94e414349dd9db496ebc93a732b081bce082d67ea24cc" -> "sha256:b8948967daa2f8a41c3e39c00cadf7478076d55156d95a6b01bb2e7f60347796" [label=""];
}
