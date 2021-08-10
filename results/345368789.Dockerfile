[app/sources/345368789.Dockerfile]
digraph {
  "sha256:69966a80c3fbefe09650d5f8be73cfda33225b243503283df71b4e1d5f260c88" [label="docker-image://docker.io/balenalib/intel-edison-ubuntu:artful-run" shape="ellipse"];
  "sha256:24d32da9afce13d774bff6f2d2af5becba93d35b8314cbeec12e2e81533cd053" [label="/bin/sh -c buildDeps='curl' \t&& set -x \t&& for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& apt-get update && apt-get install -y $buildDeps --no-install-recommends \t&& rm -rf /var/lib/apt/lists/* \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x86.tar.gz\" \t&& echo \"cf069297ca7d7dc5f6776fb2a3e39c5c8fa7b02f54a2f1daa7139163682db384  node-v$NODE_VERSION-linux-x86.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-x86.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-x86.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& apt-get purge -y --auto-remove $buildDeps \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:3df4374123ab87aed6f62a1b8371d222522cd96c5f72c07c14f50e6bc5e62f9d" [label="sha256:3df4374123ab87aed6f62a1b8371d222522cd96c5f72c07c14f50e6bc5e62f9d" shape="plaintext"];
  "sha256:69966a80c3fbefe09650d5f8be73cfda33225b243503283df71b4e1d5f260c88" -> "sha256:24d32da9afce13d774bff6f2d2af5becba93d35b8314cbeec12e2e81533cd053" [label=""];
  "sha256:24d32da9afce13d774bff6f2d2af5becba93d35b8314cbeec12e2e81533cd053" -> "sha256:3df4374123ab87aed6f62a1b8371d222522cd96c5f72c07c14f50e6bc5e62f9d" [label=""];
}
