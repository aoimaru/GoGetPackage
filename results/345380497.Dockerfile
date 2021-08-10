[app/sources/345380497.Dockerfile]
digraph {
  "sha256:a6a709e5af224b9d00563797969f03d2fde8b86212ea9cfd63b911999c048e77" [label="docker-image://docker.io/balenalib/artik533s-ubuntu:trusty-build" shape="ellipse"];
  "sha256:d3af8af1853c9c3c508dbe20a4b68fbce49c148c8c6337db7475c3930f656f65" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"12929c2128f740a47690c5e991c401b213a0b0923383f40ed53c1ca44ae99ec2  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:d5b4201d086a7eaeb577a225c8eed8e41b472d5f35380672c65204ea67a1e487" [label="sha256:d5b4201d086a7eaeb577a225c8eed8e41b472d5f35380672c65204ea67a1e487" shape="plaintext"];
  "sha256:a6a709e5af224b9d00563797969f03d2fde8b86212ea9cfd63b911999c048e77" -> "sha256:d3af8af1853c9c3c508dbe20a4b68fbce49c148c8c6337db7475c3930f656f65" [label=""];
  "sha256:d3af8af1853c9c3c508dbe20a4b68fbce49c148c8c6337db7475c3930f656f65" -> "sha256:d5b4201d086a7eaeb577a225c8eed8e41b472d5f35380672c65204ea67a1e487" [label=""];
}

