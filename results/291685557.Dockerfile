[app/sources/291685557.Dockerfile]
digraph {
  "sha256:e9bcd81574ce6ad1bd1b52ca760c49044d3a7c64747c5091a5e5eb006301edfb" [label="docker-image://docker.io/circleci/php:7.3.5-apache-stretch@sha256:dcdbfcdc5723f67d42dca192a8ed0aa846c6126a074633081aee065c86c669b7" shape="ellipse"];
  "sha256:4e591d660bd97af7202da0aa9dbdf793472f1e74733d252d041a1ff47c88cbfd" [label="/bin/sh -c whoami" shape="box"];
  "sha256:2b87e179f49ff37818888379b6fa1a3cb225625948044c12d05a656f0afe6961" [label="/bin/sh -c groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node" shape="box"];
  "sha256:0be3281f81972c374f02ea617888142c395ec0c4c396047133bc8ee22d88c38b" [label="/bin/sh -c ARCH= && dpkgArch=\"$(dpkg --print-architecture)\"   && case \"${dpkgArch##*-}\" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     i386) ARCH='x86';;     *) echo \"unsupported architecture\"; exit 1 ;;   esac   && set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys \"$key\" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys \"$key\" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys \"$key\" ;   done   && curl -fsSLO --compressed \"https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz\"   && curl -fsSLO --compressed \"https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc\"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep \" node-v$NODE_VERSION-linux-$ARCH.tar.xz\\$\" SHASUMS256.txt | sha256sum -c -   && tar -xJf \"node-v$NODE_VERSION-linux-$ARCH.tar.xz\" -C /usr/local --strip-components=1 --no-same-owner   && rm \"node-v$NODE_VERSION-linux-$ARCH.tar.xz\" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs" shape="box"];
  "sha256:637e0a655bede9a61dc36b90a63d80980ee0c82058a376812fd4a89e4b05530e" [label="/bin/sh -c set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys \"$key\" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys \"$key\" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys \"$key\" ;   done   && curl -fsSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\"   && curl -fsSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz" shape="box"];
  "sha256:6248df0d170dbd6dc9d1913ccc2a81d2b35ced7fea72288fb5df93aac5085f4f" [label="/bin/sh -c node --version" shape="box"];
  "sha256:a1811bf46216f308b25cb6b8e64c8cfbca5018b6683d01604f05d2fc54e4cacc" [label="sha256:a1811bf46216f308b25cb6b8e64c8cfbca5018b6683d01604f05d2fc54e4cacc" shape="plaintext"];
  "sha256:e9bcd81574ce6ad1bd1b52ca760c49044d3a7c64747c5091a5e5eb006301edfb" -> "sha256:4e591d660bd97af7202da0aa9dbdf793472f1e74733d252d041a1ff47c88cbfd" [label=""];
  "sha256:4e591d660bd97af7202da0aa9dbdf793472f1e74733d252d041a1ff47c88cbfd" -> "sha256:2b87e179f49ff37818888379b6fa1a3cb225625948044c12d05a656f0afe6961" [label=""];
  "sha256:2b87e179f49ff37818888379b6fa1a3cb225625948044c12d05a656f0afe6961" -> "sha256:0be3281f81972c374f02ea617888142c395ec0c4c396047133bc8ee22d88c38b" [label=""];
  "sha256:0be3281f81972c374f02ea617888142c395ec0c4c396047133bc8ee22d88c38b" -> "sha256:637e0a655bede9a61dc36b90a63d80980ee0c82058a376812fd4a89e4b05530e" [label=""];
  "sha256:637e0a655bede9a61dc36b90a63d80980ee0c82058a376812fd4a89e4b05530e" -> "sha256:6248df0d170dbd6dc9d1913ccc2a81d2b35ced7fea72288fb5df93aac5085f4f" [label=""];
  "sha256:6248df0d170dbd6dc9d1913ccc2a81d2b35ced7fea72288fb5df93aac5085f4f" -> "sha256:a1811bf46216f308b25cb6b8e64c8cfbca5018b6683d01604f05d2fc54e4cacc" [label=""];
}

