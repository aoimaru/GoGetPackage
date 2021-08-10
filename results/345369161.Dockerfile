[app/sources/345369161.Dockerfile]
digraph {
  "sha256:b3e2db8be3b9781627d557d8ad3330ce52b953bf183980f318e8a4538a9b400d" [label="docker-image://docker.io/balenalib/jetson-nano-ubuntu:artful-run" shape="ellipse"];
  "sha256:7fb21caddb2ce8b2ec97b6f5f4b122cf302579593b81823319f1e18ced12eaf1" [label="/bin/sh -c buildDeps='curl' \t&& set -x \t&& for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& apt-get update && apt-get install -y $buildDeps --no-install-recommends \t&& rm -rf /var/lib/apt/lists/* \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-arm64.tar.gz\" \t&& echo \"c0678bc942efe04805e229b557a5b4f82671f05f3325cc33d7c6ea2531d3ce96  node-v$NODE_VERSION-linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-arm64.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-arm64.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& apt-get purge -y --auto-remove $buildDeps \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:45408cca7aa6e02fb281be3ca3fc672bd743515b90130aa2f9fc9c5d82a1ca67" [label="sha256:45408cca7aa6e02fb281be3ca3fc672bd743515b90130aa2f9fc9c5d82a1ca67" shape="plaintext"];
  "sha256:b3e2db8be3b9781627d557d8ad3330ce52b953bf183980f318e8a4538a9b400d" -> "sha256:7fb21caddb2ce8b2ec97b6f5f4b122cf302579593b81823319f1e18ced12eaf1" [label=""];
  "sha256:7fb21caddb2ce8b2ec97b6f5f4b122cf302579593b81823319f1e18ced12eaf1" -> "sha256:45408cca7aa6e02fb281be3ca3fc672bd743515b90130aa2f9fc9c5d82a1ca67" [label=""];
}

