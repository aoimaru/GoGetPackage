[app/sources/291180007.Dockerfile]
digraph {
  "sha256:a54a12ea6190a93adba8ac6badf7481e7c378647764d6b8715ee56565c7bb125" [label="docker-image://docker.io/circleci/php:5.6.37-apache-jessie@sha256:f0fc49090bfa9a34ee38918a557ecaf81b4c5dcb3a948ab4a753ec813269beda" shape="ellipse"];
  "sha256:de6de2100c2cb3863b9ab4704eb6acbaef26ca0cc7f5ec7d6ca09aacb1174549" [label="/bin/sh -c groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node" shape="box"];
  "sha256:174f0fc06aaac29ed3b0395bc51b8bd7957423965c5f23aac562a13d8f0f382e" [label="/bin/sh -c set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys \"$key\" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys \"$key\" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys \"$key\" ;   done" shape="box"];
  "sha256:7f1988589224e30b4316083748c28b6df13cced82715e5cf19adb9b37976ae0d" [label="/bin/sh -c ARCH= && dpkgArch=\"$(dpkg --print-architecture)\"   && case \"${dpkgArch##*-}\" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     i386) ARCH='x86';;     *) echo \"unsupported architecture\"; exit 1 ;;   esac   && curl -fsSLO --compressed \"https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz\"   && curl -fsSLO --compressed \"https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc\"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep \" node-v$NODE_VERSION-linux-$ARCH.tar.xz\\$\" SHASUMS256.txt | sha256sum -c -   && tar -xJf \"node-v$NODE_VERSION-linux-$ARCH.tar.xz\" -C /usr/local --strip-components=1 --no-same-owner   && rm \"node-v$NODE_VERSION-linux-$ARCH.tar.xz\" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs" shape="box"];
  "sha256:f34c82d1ac526b667eb5953d1933701098e1c2aee8bf954a688d79f138b98b15" [label="/bin/sh -c set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys \"$key\" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys \"$key\" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys \"$key\" ;   done   && curl -fsSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\"   && curl -fsSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz" shape="box"];
  "sha256:4b17d949d972e04527f8492fc42737e8e3a7749d9570f9496b5c1c5b43b69763" [label="/bin/sh -c node --version" shape="box"];
  "sha256:7c72537110da863a2400e0b9b091958809603052f275ee5a201d2819d8aed72e" [label="sha256:7c72537110da863a2400e0b9b091958809603052f275ee5a201d2819d8aed72e" shape="plaintext"];
  "sha256:a54a12ea6190a93adba8ac6badf7481e7c378647764d6b8715ee56565c7bb125" -> "sha256:de6de2100c2cb3863b9ab4704eb6acbaef26ca0cc7f5ec7d6ca09aacb1174549" [label=""];
  "sha256:de6de2100c2cb3863b9ab4704eb6acbaef26ca0cc7f5ec7d6ca09aacb1174549" -> "sha256:174f0fc06aaac29ed3b0395bc51b8bd7957423965c5f23aac562a13d8f0f382e" [label=""];
  "sha256:174f0fc06aaac29ed3b0395bc51b8bd7957423965c5f23aac562a13d8f0f382e" -> "sha256:7f1988589224e30b4316083748c28b6df13cced82715e5cf19adb9b37976ae0d" [label=""];
  "sha256:7f1988589224e30b4316083748c28b6df13cced82715e5cf19adb9b37976ae0d" -> "sha256:f34c82d1ac526b667eb5953d1933701098e1c2aee8bf954a688d79f138b98b15" [label=""];
  "sha256:f34c82d1ac526b667eb5953d1933701098e1c2aee8bf954a688d79f138b98b15" -> "sha256:4b17d949d972e04527f8492fc42737e8e3a7749d9570f9496b5c1c5b43b69763" [label=""];
  "sha256:4b17d949d972e04527f8492fc42737e8e3a7749d9570f9496b5c1c5b43b69763" -> "sha256:7c72537110da863a2400e0b9b091958809603052f275ee5a201d2819d8aed72e" [label=""];
}

