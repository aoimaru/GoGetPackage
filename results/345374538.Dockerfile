[app/sources/345374538.Dockerfile]
digraph {
  "sha256:cb213685efbc1f3d39dff91ff941501f44eeb3aaeb80bf80a6adb8a30ce82b8f" [label="docker-image://docker.io/balenalib/odroid-xu4-ubuntu:cosmic-run" shape="ellipse"];
  "sha256:7b5d2c531dd39e3ed7c17164b5d360e73c4b73cd84e48a83f86f3f79fa78f432" [label="/bin/sh -c buildDeps='curl' \t&& set -x \t&& for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& apt-get update && apt-get install -y $buildDeps --no-install-recommends \t&& rm -rf /var/lib/apt/lists/* \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/node/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7hf.tar.gz\" \t&& echo \"b94f8935568f746da0cbb89ec97508039c2cad2fc1750ab04150b098614b9241  node-v$NODE_VERSION-linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7hf.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7hf.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& apt-get purge -y --auto-remove $buildDeps \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:7bbf3a784092e53e9549578f837eb706a945e3a9cb880a4ce1813afa7d9d7ccc" [label="sha256:7bbf3a784092e53e9549578f837eb706a945e3a9cb880a4ce1813afa7d9d7ccc" shape="plaintext"];
  "sha256:cb213685efbc1f3d39dff91ff941501f44eeb3aaeb80bf80a6adb8a30ce82b8f" -> "sha256:7b5d2c531dd39e3ed7c17164b5d360e73c4b73cd84e48a83f86f3f79fa78f432" [label=""];
  "sha256:7b5d2c531dd39e3ed7c17164b5d360e73c4b73cd84e48a83f86f3f79fa78f432" -> "sha256:7bbf3a784092e53e9549578f837eb706a945e3a9cb880a4ce1813afa7d9d7ccc" [label=""];
}
