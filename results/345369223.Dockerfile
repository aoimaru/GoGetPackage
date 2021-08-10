[app/sources/345369223.Dockerfile]
digraph {
  "sha256:8cc11dfcaf6c1f243fb43f9c33efc07f37eb87bae622e94a7357f7e11062b5f8" [label="docker-image://docker.io/balenalib/jetson-tx1-alpine:3.6-run" shape="ellipse"];
  "sha256:869ead43ed65cef7dd625cc9041d81a26e86f7b11d47e0663151f947b2ea9f89" [label="/bin/sh -c apk add --no-cache libgcc libstdc++ libuv \t&& apk add --no-cache libssl1.0 || apk add --no-cache libssl1.1" shape="box"];
  "sha256:777387a9561651c3723956b64c730ae889be3ceab35edde6ac0bba5200b1f925" [label="/bin/sh -c buildDeps='curl' \t&& set -x \t&& for key in \t6A010C5166006599AA17F08146C2130DFD2497F5 \t; do \t\tgpg --keyserver pgp.mit.edu --recv-keys \"$key\" || \t\tgpg --keyserver keyserver.pgp.com --recv-keys \"$key\" || \t\tgpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ; \tdone \t&& apk add --no-cache $buildDeps \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/node/v$NODE_VERSION/node-v$NODE_VERSION-linux-alpine-aarch64.tar.gz\" \t&& echo \"16123488fcb07a35c9197b3ad9edde0c007d2f585bb80221f900e66c0958723b  node-v$NODE_VERSION-linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"node-v$NODE_VERSION-linux-alpine-aarch64.tar.gz\" -C /usr/local --strip-components=1 \t&& rm \"node-v$NODE_VERSION-linux-alpine-aarch64.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\" \t&& curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\" \t&& gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& mkdir -p /opt/yarn \t&& tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1 \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \t&& ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg \t&& rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz \t&& apk del $buildDeps \t&& npm config set unsafe-perm true -g --unsafe-perm \t&& rm -rf /tmp/*" shape="box"];
  "sha256:91ff60921f8f97c1477f9e935fecc7ad87cc27db967fdf9c6d8b8795e1c0f750" [label="sha256:91ff60921f8f97c1477f9e935fecc7ad87cc27db967fdf9c6d8b8795e1c0f750" shape="plaintext"];
  "sha256:8cc11dfcaf6c1f243fb43f9c33efc07f37eb87bae622e94a7357f7e11062b5f8" -> "sha256:869ead43ed65cef7dd625cc9041d81a26e86f7b11d47e0663151f947b2ea9f89" [label=""];
  "sha256:869ead43ed65cef7dd625cc9041d81a26e86f7b11d47e0663151f947b2ea9f89" -> "sha256:777387a9561651c3723956b64c730ae889be3ceab35edde6ac0bba5200b1f925" [label=""];
  "sha256:777387a9561651c3723956b64c730ae889be3ceab35edde6ac0bba5200b1f925" -> "sha256:91ff60921f8f97c1477f9e935fecc7ad87cc27db967fdf9c6d8b8795e1c0f750" [label=""];
}
