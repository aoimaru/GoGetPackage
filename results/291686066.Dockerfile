[app/sources/291686066.Dockerfile]
digraph {
  "sha256:be4e934010764381156c0330e8e9d6fb86118b64e6d68e283e3516aabae206a7" [label="docker-image://docker.io/circleci/python:3.4.7-jessie@sha256:b6159cfe57dd64d885121cde7e441a2c06665a98c8c0de78468cc2373a1e472e" shape="ellipse"];
  "sha256:e7ebc440b4fdf00a7592ba756dd88bf2bad7a0fa93472e4379c1cfb663581a9f" [label="/bin/sh -c groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node" shape="box"];
  "sha256:55e900722f7d625ae2c210425449939f92125793f389ec1b809faa03aec8a7ff" [label="/bin/sh -c set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver pgp.mit.edu --recv-keys \"$key\" ||     gpg --keyserver keyserver.pgp.com --recv-keys \"$key\" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ;   done" shape="box"];
  "sha256:6160f7b253c860d352cc6fdc98c957ca872043a540798d7fd1b5138b1dcca102" [label="/bin/sh -c ARCH= && dpkgArch=\"$(dpkg --print-architecture)\"   && case \"${dpkgArch##*-}\" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     i386) ARCH='x86';;     *) echo \"unsupported architecture\"; exit 1 ;;   esac   && curl -SLO \"https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz\"   && curl -SLO --compressed \"https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc\"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep \" node-v$NODE_VERSION-linux-$ARCH.tar.xz\\$\" SHASUMS256.txt | sha256sum -c -   && tar -xJf \"node-v$NODE_VERSION-linux-$ARCH.tar.xz\" -C /usr/local --strip-components=1 --no-same-owner   && rm \"node-v$NODE_VERSION-linux-$ARCH.tar.xz\" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs" shape="box"];
  "sha256:1f14f731ac45145b561eaae985f169c4894b6f100e49cf1141bc780cdc8e0a97" [label="/bin/sh -c set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver pgp.mit.edu --recv-keys \"$key\" ||     gpg --keyserver keyserver.pgp.com --recv-keys \"$key\" ||     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\" ;   done   && curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\"   && curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt/yarn   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/yarn --strip-components=1   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz" shape="box"];
  "sha256:14ca5a30e183e450e1b421ec0949928fe6b0ab2a4c85f77cff77b2c658d10128" [label="/bin/sh -c node --version" shape="box"];
  "sha256:9e3b153c6676aa927a2ff62dfe8c2dcd264bc4436f838db996a161b69a803bf1" [label="sha256:9e3b153c6676aa927a2ff62dfe8c2dcd264bc4436f838db996a161b69a803bf1" shape="plaintext"];
  "sha256:be4e934010764381156c0330e8e9d6fb86118b64e6d68e283e3516aabae206a7" -> "sha256:e7ebc440b4fdf00a7592ba756dd88bf2bad7a0fa93472e4379c1cfb663581a9f" [label=""];
  "sha256:e7ebc440b4fdf00a7592ba756dd88bf2bad7a0fa93472e4379c1cfb663581a9f" -> "sha256:55e900722f7d625ae2c210425449939f92125793f389ec1b809faa03aec8a7ff" [label=""];
  "sha256:55e900722f7d625ae2c210425449939f92125793f389ec1b809faa03aec8a7ff" -> "sha256:6160f7b253c860d352cc6fdc98c957ca872043a540798d7fd1b5138b1dcca102" [label=""];
  "sha256:6160f7b253c860d352cc6fdc98c957ca872043a540798d7fd1b5138b1dcca102" -> "sha256:1f14f731ac45145b561eaae985f169c4894b6f100e49cf1141bc780cdc8e0a97" [label=""];
  "sha256:1f14f731ac45145b561eaae985f169c4894b6f100e49cf1141bc780cdc8e0a97" -> "sha256:14ca5a30e183e450e1b421ec0949928fe6b0ab2a4c85f77cff77b2c658d10128" [label=""];
  "sha256:14ca5a30e183e450e1b421ec0949928fe6b0ab2a4c85f77cff77b2c658d10128" -> "sha256:9e3b153c6676aa927a2ff62dfe8c2dcd264bc4436f838db996a161b69a803bf1" [label=""];
}
