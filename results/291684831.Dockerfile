[app/sources/291684831.Dockerfile]
digraph {
  "sha256:b5271f4c2a9ec4cb5a7525f21532be15ef0d64cc861fd5b9d42445d83ea51895" [label="docker-image://docker.io/circleci/php:7.1.26-zts-stretch@sha256:bbbbf45b099f9890e15cedce6bebecfbe6f23dbe21cdd06ec883e6266716b49d" shape="ellipse"];
  "sha256:262423d388466ceffb3c799936281979bcee25380f4ce1e234dad7b35f77e1ee" [label="/bin/sh -c whoami" shape="box"];
  "sha256:4a46bb9244cfbb81c7efb3ae2b6d48a8dc619e95cc0ea898e2a56b0d7ffff9c0" [label="/bin/sh -c groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node" shape="box"];
  "sha256:23c74e2715275aa466aff42bc1ddd5460736fd67364e6e6bcafdd03d9f141ed6" [label="/bin/sh -c ARCH= && dpkgArch=\"$(dpkg --print-architecture)\"   && case \"${dpkgArch##*-}\" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     i386) ARCH='x86';;     *) echo \"unsupported architecture\"; exit 1 ;;   esac   && set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys \"$key\" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys \"$key\" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys \"$key\" ;   done   && curl -fsSLO --compressed \"https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz\"   && curl -fsSLO --compressed \"https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc\"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep \" node-v$NODE_VERSION-linux-$ARCH.tar.xz\\$\" SHASUMS256.txt | sha256sum -c -   && tar -xJf \"node-v$NODE_VERSION-linux-$ARCH.tar.xz\" -C /usr/local --strip-components=1 --no-same-owner   && rm \"node-v$NODE_VERSION-linux-$ARCH.tar.xz\" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs" shape="box"];
  "sha256:0d0c4aac9313b5fc65b449effe276eff7e6e8c9b8bf86c110f8ef64b10018fc4" [label="/bin/sh -c set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys \"$key\" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys \"$key\" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys \"$key\" ;   done   && curl -fsSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\"   && curl -fsSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz" shape="box"];
  "sha256:0cd42026e1ed711628f70832aa5ab59cd2908ec43296ec27afc9d98c782c96e5" [label="/bin/sh -c node --version" shape="box"];
  "sha256:bab47b5dd5d9a5f9eabb58a718b3d0e8a2e91456cf97edd08118298fa7a066f6" [label="sha256:bab47b5dd5d9a5f9eabb58a718b3d0e8a2e91456cf97edd08118298fa7a066f6" shape="plaintext"];
  "sha256:b5271f4c2a9ec4cb5a7525f21532be15ef0d64cc861fd5b9d42445d83ea51895" -> "sha256:262423d388466ceffb3c799936281979bcee25380f4ce1e234dad7b35f77e1ee" [label=""];
  "sha256:262423d388466ceffb3c799936281979bcee25380f4ce1e234dad7b35f77e1ee" -> "sha256:4a46bb9244cfbb81c7efb3ae2b6d48a8dc619e95cc0ea898e2a56b0d7ffff9c0" [label=""];
  "sha256:4a46bb9244cfbb81c7efb3ae2b6d48a8dc619e95cc0ea898e2a56b0d7ffff9c0" -> "sha256:23c74e2715275aa466aff42bc1ddd5460736fd67364e6e6bcafdd03d9f141ed6" [label=""];
  "sha256:23c74e2715275aa466aff42bc1ddd5460736fd67364e6e6bcafdd03d9f141ed6" -> "sha256:0d0c4aac9313b5fc65b449effe276eff7e6e8c9b8bf86c110f8ef64b10018fc4" [label=""];
  "sha256:0d0c4aac9313b5fc65b449effe276eff7e6e8c9b8bf86c110f8ef64b10018fc4" -> "sha256:0cd42026e1ed711628f70832aa5ab59cd2908ec43296ec27afc9d98c782c96e5" [label=""];
  "sha256:0cd42026e1ed711628f70832aa5ab59cd2908ec43296ec27afc9d98c782c96e5" -> "sha256:bab47b5dd5d9a5f9eabb58a718b3d0e8a2e91456cf97edd08118298fa7a066f6" [label=""];
}

