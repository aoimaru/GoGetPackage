[app/sources/345382372.Dockerfile]
digraph {
  "sha256:044cbb6e37fa095926299837858bfeb0ceab1f6f50b2802de7daeec7dafb853b" [label="docker-image://docker.io/balenalib/imx7-var-som-debian:buster-run" shape="ellipse"];
  "sha256:b72252f3c1249dd6e6ff8f05eee8efcb4b484034fa4336a92ea1ab215d3bd0aa" [label="/bin/sh -c buildDeps='curl' \t&& set -x \t&& for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --batch --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --batch --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& apt-get update && apt-get install -y $buildDeps --no-install-recommends \t&& rm -rf /var/lib/apt/lists/* \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"12929c2128f740a47690c5e991c401b213a0b0923383f40ed53c1ca44ae99ec2  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& apt-get purge -y --auto-remove $buildDeps \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:3d1594e5c0092ca8592536dd01aebbdc0d700077ee2d2544c601422544f6e678" [label="sha256:3d1594e5c0092ca8592536dd01aebbdc0d700077ee2d2544c601422544f6e678" shape="plaintext"];
  "sha256:044cbb6e37fa095926299837858bfeb0ceab1f6f50b2802de7daeec7dafb853b" -> "sha256:b72252f3c1249dd6e6ff8f05eee8efcb4b484034fa4336a92ea1ab215d3bd0aa" [label=""];
  "sha256:b72252f3c1249dd6e6ff8f05eee8efcb4b484034fa4336a92ea1ab215d3bd0aa" -> "sha256:3d1594e5c0092ca8592536dd01aebbdc0d700077ee2d2544c601422544f6e678" [label=""];
}

