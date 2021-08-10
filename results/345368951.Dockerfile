[app/sources/345368951.Dockerfile]
digraph {
  "sha256:fbd997891503ad204981e1ce2baa110e86e481126cd4ecf31bf98294c7401949" [label="docker-image://docker.io/balenalib/intel-nuc-fedora:29-run" shape="ellipse"];
  "sha256:d3247d27fa5b917082cab280b82e7683d3d24fdee3fb0d698011eab3d70d44e6" [label="/bin/sh -c for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz\" \t&& echo \"b391450e0fead11f61f119ed26c713180cfe64b363cd945bac229130dfab64fa  node-v$NODE_VERSION-linux-x64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-x64.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-x64.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:35f2635a8c1e66f261baf5225d75b5cae65efb7063193f52f5f7741b0b7dca73" [label="sha256:35f2635a8c1e66f261baf5225d75b5cae65efb7063193f52f5f7741b0b7dca73" shape="plaintext"];
  "sha256:fbd997891503ad204981e1ce2baa110e86e481126cd4ecf31bf98294c7401949" -> "sha256:d3247d27fa5b917082cab280b82e7683d3d24fdee3fb0d698011eab3d70d44e6" [label=""];
  "sha256:d3247d27fa5b917082cab280b82e7683d3d24fdee3fb0d698011eab3d70d44e6" -> "sha256:35f2635a8c1e66f261baf5225d75b5cae65efb7063193f52f5f7741b0b7dca73" [label=""];
}
