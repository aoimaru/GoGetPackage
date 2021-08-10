[app/sources/345367571.Dockerfile]
digraph {
  "sha256:f01f8ee4c630315c55c1eee1d4925957f51cf2b9573ec500d1064718e72e96bf" [label="docker-image://docker.io/balenalib/generic-aarch64-fedora:26-run" shape="ellipse"];
  "sha256:3b7ad9b43f1100b07ebcfdf5b9d42248885ff362b0fae63e7903c9517771e263" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-arm64.tar.gz\" \t&& echo \"78237456386d66ac2143a25530dd5b39326a874079ba7c0676a4639e894567c4  node-v$NODE_VERSION-linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-arm64.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-arm64.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:941af4856ac240ebe10c8b2f30c229f96547aed2e4d8182786854d60d548b88a" [label="sha256:941af4856ac240ebe10c8b2f30c229f96547aed2e4d8182786854d60d548b88a" shape="plaintext"];
  "sha256:f01f8ee4c630315c55c1eee1d4925957f51cf2b9573ec500d1064718e72e96bf" -> "sha256:3b7ad9b43f1100b07ebcfdf5b9d42248885ff362b0fae63e7903c9517771e263" [label=""];
  "sha256:3b7ad9b43f1100b07ebcfdf5b9d42248885ff362b0fae63e7903c9517771e263" -> "sha256:941af4856ac240ebe10c8b2f30c229f96547aed2e4d8182786854d60d548b88a" [label=""];
}
