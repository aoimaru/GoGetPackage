[app/sources/345364722.Dockerfile]
digraph {
  "sha256:569133906ba291ae24322e0e3bf7b7c09a5af3582f51564fbff3c86d0c19c76c" [label="docker-image://docker.io/balenalib/ccon-01-ubuntu:trusty-build" shape="ellipse"];
  "sha256:f80f05a87e6aa2fd3afbb05c02fe85206ea59b11eed52aff388acce1fe9466d4" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"12929c2128f740a47690c5e991c401b213a0b0923383f40ed53c1ca44ae99ec2  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:536d6a5f64a9c548e2bfe1ca7210582671d331137b19ea0ff8b44b210640e7f9" [label="sha256:536d6a5f64a9c548e2bfe1ca7210582671d331137b19ea0ff8b44b210640e7f9" shape="plaintext"];
  "sha256:569133906ba291ae24322e0e3bf7b7c09a5af3582f51564fbff3c86d0c19c76c" -> "sha256:f80f05a87e6aa2fd3afbb05c02fe85206ea59b11eed52aff388acce1fe9466d4" [label=""];
  "sha256:f80f05a87e6aa2fd3afbb05c02fe85206ea59b11eed52aff388acce1fe9466d4" -> "sha256:536d6a5f64a9c548e2bfe1ca7210582671d331137b19ea0ff8b44b210640e7f9" [label=""];
}
