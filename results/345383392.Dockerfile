[app/sources/345383392.Dockerfile]
digraph {
  "sha256:f3921be541eb9612a144a684b4941d548d5f1b016b579ee2ade463679ba2b112" [label="docker-image://docker.io/balenalib/nanopi-neo-air-debian:jessie-run" shape="ellipse"];
  "sha256:7ce86127c685b2bd712477f152da7c0fd2446108e76d351e38f364bf3b82c4d9" [label="/bin/sh -c buildDeps='curl' \t&& set -x \t&& for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --batch --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --batch --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& apt-get update && apt-get install -y $buildDeps --no-install-recommends \t&& rm -rf /var/lib/apt/lists/* \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"1be646c6b5b84034c4e4a20254044c5d3f1dc258860f99c2893d00fe965486ac  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& apt-get purge -y --auto-remove $buildDeps \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:3903ebb58121f908642565d2584c15cbc9eb1a04e67073103719ea5abfaf7cb1" [label="sha256:3903ebb58121f908642565d2584c15cbc9eb1a04e67073103719ea5abfaf7cb1" shape="plaintext"];
  "sha256:f3921be541eb9612a144a684b4941d548d5f1b016b579ee2ade463679ba2b112" -> "sha256:7ce86127c685b2bd712477f152da7c0fd2446108e76d351e38f364bf3b82c4d9" [label=""];
  "sha256:7ce86127c685b2bd712477f152da7c0fd2446108e76d351e38f364bf3b82c4d9" -> "sha256:3903ebb58121f908642565d2584c15cbc9eb1a04e67073103719ea5abfaf7cb1" [label=""];
}
