[app/sources/345364654.Dockerfile]
digraph {
  "sha256:27315f8651f80d251ad220f4fbbb6bb16f359a28dcf5f887605329a58d79dc75" [label="docker-image://docker.io/balenalib/ccon-01-debian:stretch-build" shape="ellipse"];
  "sha256:c278b81060c347894dd11ff19a897375ebac166cb78f2811fd828673471d80cf" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --batch --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --batch --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"1be646c6b5b84034c4e4a20254044c5d3f1dc258860f99c2893d00fe965486ac  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:e626c434613324b3b073af51d2f8695ad5d6efd8613c7e2cd077e89a6043d10d" [label="sha256:e626c434613324b3b073af51d2f8695ad5d6efd8613c7e2cd077e89a6043d10d" shape="plaintext"];
  "sha256:27315f8651f80d251ad220f4fbbb6bb16f359a28dcf5f887605329a58d79dc75" -> "sha256:c278b81060c347894dd11ff19a897375ebac166cb78f2811fd828673471d80cf" [label=""];
  "sha256:c278b81060c347894dd11ff19a897375ebac166cb78f2811fd828673471d80cf" -> "sha256:e626c434613324b3b073af51d2f8695ad5d6efd8613c7e2cd077e89a6043d10d" [label=""];
}
