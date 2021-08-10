[app/sources/291180707.Dockerfile]
digraph {
  "sha256:f79c47f3cfbdec741cab358476aeb08bc74e8d7a4a8ded6c14a0a76b23e55531" [label="docker-image://docker.io/circleci/php:7.1.22-cli-jessie@sha256:994e50f9389ae1c11c119e9a6b747c0e698eceb4fb965d1a611e77710d144b84" shape="ellipse"];
  "sha256:d55ba8c58e40d41ac4e6218ebe53fdd97a5c933bdf4d67f914fead1341a47613" [label="/bin/sh -c groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node" shape="box"];
  "sha256:cc1a8867e9fb43413cdef61f78d3c921b8829d53fa380a13c3b23c0dac7fff79" [label="/bin/sh -c set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys \"$key\" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys \"$key\" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys \"$key\" ;   done" shape="box"];
  "sha256:da2aab30a888aadb700571180728ff45a8cf145d797db049e848a7c926d0fc79" [label="/bin/sh -c ARCH= && dpkgArch=\"$(dpkg --print-architecture)\"   && case \"${dpkgArch##*-}\" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     i386) ARCH='x86';;     *) echo \"unsupported architecture\"; exit 1 ;;   esac   && curl -fsSLO --compressed \"https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz\"   && curl -fsSLO --compressed \"https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc\"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep \" node-v$NODE_VERSION-linux-$ARCH.tar.xz\\$\" SHASUMS256.txt | sha256sum -c -   && tar -xJf \"node-v$NODE_VERSION-linux-$ARCH.tar.xz\" -C /usr/local --strip-components=1 --no-same-owner   && rm \"node-v$NODE_VERSION-linux-$ARCH.tar.xz\" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs" shape="box"];
  "sha256:e51ccee56c4bea4f99e818612bc8d80d027dd22dba2a732063f95a92910782a9" [label="/bin/sh -c set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys \"$key\" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys \"$key\" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys \"$key\" ;   done   && curl -fsSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\"   && curl -fsSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz" shape="box"];
  "sha256:ce81b275f0e4ad1a68b30d3c1df047832d0b64e14012e30aa131e48c37a4e592" [label="/bin/sh -c node --version" shape="box"];
  "sha256:c784aa84f7c49a97d588b6b1fdccb6cdd6f6cc456ec3d2d605d00443061a6904" [label="sha256:c784aa84f7c49a97d588b6b1fdccb6cdd6f6cc456ec3d2d605d00443061a6904" shape="plaintext"];
  "sha256:f79c47f3cfbdec741cab358476aeb08bc74e8d7a4a8ded6c14a0a76b23e55531" -> "sha256:d55ba8c58e40d41ac4e6218ebe53fdd97a5c933bdf4d67f914fead1341a47613" [label=""];
  "sha256:d55ba8c58e40d41ac4e6218ebe53fdd97a5c933bdf4d67f914fead1341a47613" -> "sha256:cc1a8867e9fb43413cdef61f78d3c921b8829d53fa380a13c3b23c0dac7fff79" [label=""];
  "sha256:cc1a8867e9fb43413cdef61f78d3c921b8829d53fa380a13c3b23c0dac7fff79" -> "sha256:da2aab30a888aadb700571180728ff45a8cf145d797db049e848a7c926d0fc79" [label=""];
  "sha256:da2aab30a888aadb700571180728ff45a8cf145d797db049e848a7c926d0fc79" -> "sha256:e51ccee56c4bea4f99e818612bc8d80d027dd22dba2a732063f95a92910782a9" [label=""];
  "sha256:e51ccee56c4bea4f99e818612bc8d80d027dd22dba2a732063f95a92910782a9" -> "sha256:ce81b275f0e4ad1a68b30d3c1df047832d0b64e14012e30aa131e48c37a4e592" [label=""];
  "sha256:ce81b275f0e4ad1a68b30d3c1df047832d0b64e14012e30aa131e48c37a4e592" -> "sha256:c784aa84f7c49a97d588b6b1fdccb6cdd6f6cc456ec3d2d605d00443061a6904" [label=""];
}
