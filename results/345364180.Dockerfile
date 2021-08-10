[app/sources/345364180.Dockerfile]
digraph {
  "sha256:cb5f50ce2dcbf92788e6b94aad68187c4e7abd19c46c16f7a455c8695a83e64c" [label="docker-image://docker.io/balenalib/beaglebone-green-ubuntu:xenial-build" shape="ellipse"];
  "sha256:ee2078e1b6706b457fb26410ef70104710c6ddca2851abff19811a59adc47e82" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"ae6c41d78df4c5ef4032128eda9abd49a549bff5c8a20fd32d1072b6e5e8556b  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:7a334ed094a20665d67aef00fa737864548e76a85ea461dd6c10a37dbcbc932a" [label="sha256:7a334ed094a20665d67aef00fa737864548e76a85ea461dd6c10a37dbcbc932a" shape="plaintext"];
  "sha256:cb5f50ce2dcbf92788e6b94aad68187c4e7abd19c46c16f7a455c8695a83e64c" -> "sha256:ee2078e1b6706b457fb26410ef70104710c6ddca2851abff19811a59adc47e82" [label=""];
  "sha256:ee2078e1b6706b457fb26410ef70104710c6ddca2851abff19811a59adc47e82" -> "sha256:7a334ed094a20665d67aef00fa737864548e76a85ea461dd6c10a37dbcbc932a" [label=""];
}
