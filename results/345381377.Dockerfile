[app/sources/345381377.Dockerfile]
digraph {
  "sha256:af1102f6ed6ce57f0fa7275a8a6a1517550674040c09f8cf7273ea9facd751e6" [label="docker-image://docker.io/balenalib/beagleboard-xm-ubuntu:artful-build" shape="ellipse"];
  "sha256:c4e137506b4ca59a6dfa57a82b2de828c22b9085b0453ce2008f5f606dca2b96" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"12929c2128f740a47690c5e991c401b213a0b0923383f40ed53c1ca44ae99ec2  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:80142cc7d0b79cc31d53ec882f9f7e9c6675de90461a76c35d2dda169de2678a" [label="sha256:80142cc7d0b79cc31d53ec882f9f7e9c6675de90461a76c35d2dda169de2678a" shape="plaintext"];
  "sha256:af1102f6ed6ce57f0fa7275a8a6a1517550674040c09f8cf7273ea9facd751e6" -> "sha256:c4e137506b4ca59a6dfa57a82b2de828c22b9085b0453ce2008f5f606dca2b96" [label=""];
  "sha256:c4e137506b4ca59a6dfa57a82b2de828c22b9085b0453ce2008f5f606dca2b96" -> "sha256:80142cc7d0b79cc31d53ec882f9f7e9c6675de90461a76c35d2dda169de2678a" [label=""];
}
