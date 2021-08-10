[app/sources/345376209.Dockerfile]
digraph {
  "sha256:a1187b60663cc3106489688bbe46b321ec14078afaf2dd839fc2563e7077a32e" [label="docker-image://docker.io/balenalib/orange-pi-zero-debian:sid-run" shape="ellipse"];
  "sha256:dc44e7e0518ab95a850d7f6cb91ed3d0847adf615ad011c2ffed7c1912a3cab9" [label="/bin/sh -c buildDeps='curl' \t&& set -x \t&& for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --batch --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --batch --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& apt-get update && apt-get install -y $buildDeps --no-install-recommends \t&& rm -rf /var/lib/apt/lists/* \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"12929c2128f740a47690c5e991c401b213a0b0923383f40ed53c1ca44ae99ec2  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& apt-get purge -y --auto-remove $buildDeps \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:015c3424b5efc06b02742310da45e66c6036469172b253ba8144a9ddde948ed8" [label="sha256:015c3424b5efc06b02742310da45e66c6036469172b253ba8144a9ddde948ed8" shape="plaintext"];
  "sha256:a1187b60663cc3106489688bbe46b321ec14078afaf2dd839fc2563e7077a32e" -> "sha256:dc44e7e0518ab95a850d7f6cb91ed3d0847adf615ad011c2ffed7c1912a3cab9" [label=""];
  "sha256:dc44e7e0518ab95a850d7f6cb91ed3d0847adf615ad011c2ffed7c1912a3cab9" -> "sha256:015c3424b5efc06b02742310da45e66c6036469172b253ba8144a9ddde948ed8" [label=""];
}
