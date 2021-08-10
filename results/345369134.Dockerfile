[app/sources/345369134.Dockerfile]
digraph {
  "sha256:073bd9acdda8ecc29ea564001c6278f864124a665eae1b904792a3897a0ecaa2" [label="docker-image://docker.io/balenalib/jetson-nano-fedora:29-build" shape="ellipse"];
  "sha256:9fd1eed6ab91d41a150c3d762a845da7bfbb51b007fd0dbc21cb0ffec0d7d6a8" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-arm64.tar.gz\" \t&& echo \"2d84a777318bc95dd2a201ab8d700aea7e20641b3ece0c048399398dc645cbd7  node-v$NODE_VERSION-linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-arm64.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-arm64.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:53048ae25d4a13a62082398852b47eea5108b03ae1482eb2f968e1709b2b1596" [label="sha256:53048ae25d4a13a62082398852b47eea5108b03ae1482eb2f968e1709b2b1596" shape="plaintext"];
  "sha256:073bd9acdda8ecc29ea564001c6278f864124a665eae1b904792a3897a0ecaa2" -> "sha256:9fd1eed6ab91d41a150c3d762a845da7bfbb51b007fd0dbc21cb0ffec0d7d6a8" [label=""];
  "sha256:9fd1eed6ab91d41a150c3d762a845da7bfbb51b007fd0dbc21cb0ffec0d7d6a8" -> "sha256:53048ae25d4a13a62082398852b47eea5108b03ae1482eb2f968e1709b2b1596" [label=""];
}
