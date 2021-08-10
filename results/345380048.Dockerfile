[app/sources/345380048.Dockerfile]
digraph {
  "sha256:a6076748e7e7ee4ecc4ed92bb092ac3478233442965292186546f84bbc6aa783" [label="docker-image://docker.io/balenalib/artik5-debian:jessie-run" shape="ellipse"];
  "sha256:c39962abdb8318ee5e10dcd60aa37615e2133dde14a23e9436745b652205b5e1" [label="/bin/sh -c buildDeps='curl' \t&& set -x \t&& for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --batch --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --batch --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& apt-get update && apt-get install -y $buildDeps --no-install-recommends \t&& rm -rf /var/lib/apt/lists/* \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& echo \"12929c2128f740a47690c5e991c401b213a0b0923383f40ed53c1ca44ae99ec2  node-v$NODE_VERSION-linux-armv7l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-armv7l.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& apt-get purge -y --auto-remove $buildDeps \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:b810c8e86f78a4bfee23e3ac1f8cfac765a01a19c4aebdda1b99e41babf71af5" [label="sha256:b810c8e86f78a4bfee23e3ac1f8cfac765a01a19c4aebdda1b99e41babf71af5" shape="plaintext"];
  "sha256:a6076748e7e7ee4ecc4ed92bb092ac3478233442965292186546f84bbc6aa783" -> "sha256:c39962abdb8318ee5e10dcd60aa37615e2133dde14a23e9436745b652205b5e1" [label=""];
  "sha256:c39962abdb8318ee5e10dcd60aa37615e2133dde14a23e9436745b652205b5e1" -> "sha256:b810c8e86f78a4bfee23e3ac1f8cfac765a01a19c4aebdda1b99e41babf71af5" [label=""];
}
