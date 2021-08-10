[app/sources/291181785.Dockerfile]
digraph {
  "sha256:9639adebf5674a41fd7750fa46e9536681cfc8ab7ab4b30ce2b5786edcd8e510" [label="docker-image://docker.io/circleci/openjdk:11-ea-12-jdk-sid@sha256:ad9223fb82a18e8f34bd6e586b227664982fbee1c675ff6abac08278285bbc4c" shape="ellipse"];
  "sha256:2a61a140eb6a1e19424b4c853fb3ddf97e21ee3b51a4d4e47cb0227c006008d3" [label="/bin/sh -c groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node" shape="box"];
  "sha256:4075a8d4637301f0fdc5bd7bf3b5f507b1da9e6ae700d14329f21155f7592b90" [label="/bin/sh -c set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys \"$key\" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys \"$key\" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys \"$key\" ;   done" shape="box"];
  "sha256:39a1555bbef510d1d9cdf4cccd5035d71f8237c0f064ad87b23d8bbb5ae6b64d" [label="/bin/sh -c ARCH= && dpkgArch=\"$(dpkg --print-architecture)\"   && case \"${dpkgArch##*-}\" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     i386) ARCH='x86';;     *) echo \"unsupported architecture\"; exit 1 ;;   esac   && curl -SLO \"https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz\"   && curl -SLO --compressed \"https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc\"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep \" node-v$NODE_VERSION-linux-$ARCH.tar.xz\\$\" SHASUMS256.txt | sha256sum -c -   && tar -xJf \"node-v$NODE_VERSION-linux-$ARCH.tar.xz\" -C /usr/local --strip-components=1 --no-same-owner   && rm \"node-v$NODE_VERSION-linux-$ARCH.tar.xz\" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs" shape="box"];
  "sha256:6d6641cebe1261b7d43361b6cb7c46b72a50577f00144dc570360d99df3b0970" [label="/bin/sh -c set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys \"$key\" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys \"$key\" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys \"$key\" ;   done   && curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\"   && curl -fSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz" shape="box"];
  "sha256:e0f1c8c5b20a46c0e8477c50658209ba36963ea1a45de4855d71c1ec033cd998" [label="/bin/sh -c node --version" shape="box"];
  "sha256:388f93bd1c38ffb195d936b8a3ecc5066822400c6b95cfc12fe66a2884ba62ac" [label="sha256:388f93bd1c38ffb195d936b8a3ecc5066822400c6b95cfc12fe66a2884ba62ac" shape="plaintext"];
  "sha256:9639adebf5674a41fd7750fa46e9536681cfc8ab7ab4b30ce2b5786edcd8e510" -> "sha256:2a61a140eb6a1e19424b4c853fb3ddf97e21ee3b51a4d4e47cb0227c006008d3" [label=""];
  "sha256:2a61a140eb6a1e19424b4c853fb3ddf97e21ee3b51a4d4e47cb0227c006008d3" -> "sha256:4075a8d4637301f0fdc5bd7bf3b5f507b1da9e6ae700d14329f21155f7592b90" [label=""];
  "sha256:4075a8d4637301f0fdc5bd7bf3b5f507b1da9e6ae700d14329f21155f7592b90" -> "sha256:39a1555bbef510d1d9cdf4cccd5035d71f8237c0f064ad87b23d8bbb5ae6b64d" [label=""];
  "sha256:39a1555bbef510d1d9cdf4cccd5035d71f8237c0f064ad87b23d8bbb5ae6b64d" -> "sha256:6d6641cebe1261b7d43361b6cb7c46b72a50577f00144dc570360d99df3b0970" [label=""];
  "sha256:6d6641cebe1261b7d43361b6cb7c46b72a50577f00144dc570360d99df3b0970" -> "sha256:e0f1c8c5b20a46c0e8477c50658209ba36963ea1a45de4855d71c1ec033cd998" [label=""];
  "sha256:e0f1c8c5b20a46c0e8477c50658209ba36963ea1a45de4855d71c1ec033cd998" -> "sha256:388f93bd1c38ffb195d936b8a3ecc5066822400c6b95cfc12fe66a2884ba62ac" [label=""];
}

