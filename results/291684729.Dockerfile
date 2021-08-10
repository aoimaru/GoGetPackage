[app/sources/291684729.Dockerfile]
digraph {
  "sha256:6d0f24e0963e287e29ca2a12774395cf8d1bf746f8c99348a3f3d4d7556c58de" [label="docker-image://docker.io/circleci/php:7.1.24-zts-jessie@sha256:420cab4d332b6e223567dafd387b70e040dd51172eed1d3816206e5ac77c2216" shape="ellipse"];
  "sha256:900dfd1737801ef0df1b94665b7dd7f23cf420391dbe6766081aed00b998509d" [label="/bin/sh -c whoami" shape="box"];
  "sha256:6743f33180952ffab034a0d322a3237fdf47070781fe20f7d915239e22653c37" [label="/bin/sh -c groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node" shape="box"];
  "sha256:fde3bace0807e4c61d4ab197bb54af8acc2ee8114c797ad47faaabc123554ff5" [label="/bin/sh -c ARCH= && dpkgArch=\"$(dpkg --print-architecture)\"   && case \"${dpkgArch##*-}\" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     i386) ARCH='x86';;     *) echo \"unsupported architecture\"; exit 1 ;;   esac   && set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys \"$key\" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys \"$key\" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys \"$key\" ;   done   && curl -fsSLO --compressed \"https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz\"   && curl -fsSLO --compressed \"https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc\"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep \" node-v$NODE_VERSION-linux-$ARCH.tar.xz\\$\" SHASUMS256.txt | sha256sum -c -   && tar -xJf \"node-v$NODE_VERSION-linux-$ARCH.tar.xz\" -C /usr/local --strip-components=1 --no-same-owner   && rm \"node-v$NODE_VERSION-linux-$ARCH.tar.xz\" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs" shape="box"];
  "sha256:3a635c3cc9e605c9f71f55de01e13ad2e661c01b8534165ef6621a3114adde98" [label="/bin/sh -c set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys \"$key\" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys \"$key\" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys \"$key\" ;   done   && curl -fsSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\"   && curl -fsSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz" shape="box"];
  "sha256:53246cbb0ac3ed6a26a6420d86854628f31ca74cb81e8bc8ac4793d16ff392a9" [label="/bin/sh -c node --version" shape="box"];
  "sha256:ff9fffe975fe42ce43a3163860342d1ae99902981cfb654394fa1a57744d53e6" [label="sha256:ff9fffe975fe42ce43a3163860342d1ae99902981cfb654394fa1a57744d53e6" shape="plaintext"];
  "sha256:6d0f24e0963e287e29ca2a12774395cf8d1bf746f8c99348a3f3d4d7556c58de" -> "sha256:900dfd1737801ef0df1b94665b7dd7f23cf420391dbe6766081aed00b998509d" [label=""];
  "sha256:900dfd1737801ef0df1b94665b7dd7f23cf420391dbe6766081aed00b998509d" -> "sha256:6743f33180952ffab034a0d322a3237fdf47070781fe20f7d915239e22653c37" [label=""];
  "sha256:6743f33180952ffab034a0d322a3237fdf47070781fe20f7d915239e22653c37" -> "sha256:fde3bace0807e4c61d4ab197bb54af8acc2ee8114c797ad47faaabc123554ff5" [label=""];
  "sha256:fde3bace0807e4c61d4ab197bb54af8acc2ee8114c797ad47faaabc123554ff5" -> "sha256:3a635c3cc9e605c9f71f55de01e13ad2e661c01b8534165ef6621a3114adde98" [label=""];
  "sha256:3a635c3cc9e605c9f71f55de01e13ad2e661c01b8534165ef6621a3114adde98" -> "sha256:53246cbb0ac3ed6a26a6420d86854628f31ca74cb81e8bc8ac4793d16ff392a9" [label=""];
  "sha256:53246cbb0ac3ed6a26a6420d86854628f31ca74cb81e8bc8ac4793d16ff392a9" -> "sha256:ff9fffe975fe42ce43a3163860342d1ae99902981cfb654394fa1a57744d53e6" [label=""];
}
