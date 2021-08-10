[app/sources/345383279.Dockerfile]
digraph {
  "sha256:2e1bbb761935e9cbd10383167cad51a0b773a5bf7ac1221aee404b5344dde09d" [label="docker-image://docker.io/balenalib/nanopc-t4-ubuntu:bionic-build" shape="ellipse"];
  "sha256:a55df782db9e4c057e3cbb584fbd0010bb0d887a516bc692941ac9f1d3360a35" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-arm64.tar.gz\" \t&& echo \"312a7942f5fbd0aa83d6e624a06681275db2cb3c3eeaf3e452ad04aac17b6de5  node-v$NODE_VERSION-linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-arm64.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-arm64.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:306eef91d4ee578e8e7560960a774a8804b42b40a700c590fca1a3e4666c730f" [label="sha256:306eef91d4ee578e8e7560960a774a8804b42b40a700c590fca1a3e4666c730f" shape="plaintext"];
  "sha256:2e1bbb761935e9cbd10383167cad51a0b773a5bf7ac1221aee404b5344dde09d" -> "sha256:a55df782db9e4c057e3cbb584fbd0010bb0d887a516bc692941ac9f1d3360a35" [label=""];
  "sha256:a55df782db9e4c057e3cbb584fbd0010bb0d887a516bc692941ac9f1d3360a35" -> "sha256:306eef91d4ee578e8e7560960a774a8804b42b40a700c590fca1a3e4666c730f" [label=""];
}
