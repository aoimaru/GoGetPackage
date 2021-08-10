[app/sources/345368985.Dockerfile]
digraph {
  "sha256:fd085a4dfc759858309fe233eefa73a43540850df067f0b8a10fb4eba174983c" [label="docker-image://docker.io/balenalib/intel-nuc-ubuntu:cosmic-run" shape="ellipse"];
  "sha256:c93a3389b9d865ff2fb12c42e9168f63e4c7ffcfeda6e65991ce09597294c56f" [label="/bin/sh -c buildDeps='curl' \t&& set -x \t&& for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& apt-get update && apt-get install -y $buildDeps --no-install-recommends \t&& rm -rf /var/lib/apt/lists/* \t&& curl -SLO \"http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz\" \t&& echo \"2e2cddf805112bd0b5769290bf2d1bc4bdd55ee44327e826fa94c459835a9d9a  node-v$NODE_VERSION-linux-x64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-x64.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-x64.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& apt-get purge -y --auto-remove $buildDeps \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:e216009072e4d83dd537d83c48a7bd1d466971f383b16e859ec60ba25cf56f36" [label="sha256:e216009072e4d83dd537d83c48a7bd1d466971f383b16e859ec60ba25cf56f36" shape="plaintext"];
  "sha256:fd085a4dfc759858309fe233eefa73a43540850df067f0b8a10fb4eba174983c" -> "sha256:c93a3389b9d865ff2fb12c42e9168f63e4c7ffcfeda6e65991ce09597294c56f" [label=""];
  "sha256:c93a3389b9d865ff2fb12c42e9168f63e4c7ffcfeda6e65991ce09597294c56f" -> "sha256:e216009072e4d83dd537d83c48a7bd1d466971f383b16e859ec60ba25cf56f36" [label=""];
}
