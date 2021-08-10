[app/sources/345382707.Dockerfile]
digraph {
  "sha256:abbd69d58e77a3bebf1c38eb76cf0d57405aa76d37e58e64c52a7a5696991e68" [label="docker-image://docker.io/balenalib/kitra520-ubuntu:bionic-build" shape="ellipse"];
  "sha256:d7cb51c4212260b4b08a9af3096d8fb07ae4d5efcdc1020b64f2208b2e6a4e00" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"ae6c41d78df4c5ef4032128eda9abd49a549bff5c8a20fd32d1072b6e5e8556b  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:914adb9197db1d2de388b1665b920281dd647a1eef4720dc6527bc6589301af7" [label="sha256:914adb9197db1d2de388b1665b920281dd647a1eef4720dc6527bc6589301af7" shape="plaintext"];
  "sha256:abbd69d58e77a3bebf1c38eb76cf0d57405aa76d37e58e64c52a7a5696991e68" -> "sha256:d7cb51c4212260b4b08a9af3096d8fb07ae4d5efcdc1020b64f2208b2e6a4e00" [label=""];
  "sha256:d7cb51c4212260b4b08a9af3096d8fb07ae4d5efcdc1020b64f2208b2e6a4e00" -> "sha256:914adb9197db1d2de388b1665b920281dd647a1eef4720dc6527bc6589301af7" [label=""];
}

