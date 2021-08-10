[app/sources/345381554.Dockerfile]
digraph {
  "sha256:b56e86fbaec1b664488ce20de610fd784f17636e814f0dbbf4abf2cda94c6b93" [label="docker-image://docker.io/balenalib/beaglebone-black-ubuntu:artful-run" shape="ellipse"];
  "sha256:c509fea98f0d0574e627b57a8b08427cdb0544e6158b5c6eb8b648507190969b" [label="/bin/sh -c buildDeps='curl' \t&& set -x \t&& for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& apt-get update && apt-get install -y $buildDeps --no-install-recommends \t&& rm -rf /var/lib/apt/lists/* \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"756f21a07a5a8c6c1037754a332b3adf7b39fb1d49acf0893488cc545a2438cf  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& apt-get purge -y --auto-remove $buildDeps \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:a16b5f819dd1649825f0b2bcc02c9ca9627f68c74b53a61e5e471b253ef676e8" [label="sha256:a16b5f819dd1649825f0b2bcc02c9ca9627f68c74b53a61e5e471b253ef676e8" shape="plaintext"];
  "sha256:b56e86fbaec1b664488ce20de610fd784f17636e814f0dbbf4abf2cda94c6b93" -> "sha256:c509fea98f0d0574e627b57a8b08427cdb0544e6158b5c6eb8b648507190969b" [label=""];
  "sha256:c509fea98f0d0574e627b57a8b08427cdb0544e6158b5c6eb8b648507190969b" -> "sha256:a16b5f819dd1649825f0b2bcc02c9ca9627f68c74b53a61e5e471b253ef676e8" [label=""];
}

