[app/sources/291180533.Dockerfile]
digraph {
  "sha256:39a11d0f1efabd63b131360d533defb32e3aec4de7811d66b3578cc58d39027a" [label="docker-image://docker.io/circleci/php:7.1.17-fpm-jessie@sha256:0bad3301b9dc8bb9de71c0a31c9674712d5d86ae4c0f162ffc5006e7730dd6fe" shape="ellipse"];
  "sha256:b01dcb0293ef00636d90814b2ad1f734174a08acc51b236870e1e26978af7347" [label="/bin/sh -c groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node" shape="box"];
  "sha256:75f5cb625bc4c1036e1be0b1017bfeabf5aa4b09947fc2ad603c7b516b1a5cc6" [label="/bin/sh -c set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys \"$key\" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys \"$key\" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys \"$key\" ;   done" shape="box"];
  "sha256:5ffa976e95ae722cdaaa4be24d06ed3acd0446c5cebd5b471d7915b3f9c34955" [label="/bin/sh -c ARCH= && dpkgArch=\"$(dpkg --print-architecture)\"   && case \"${dpkgArch##*-}\" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     i386) ARCH='x86';;     *) echo \"unsupported architecture\"; exit 1 ;;   esac   && curl -fsSLO --compressed \"https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz\"   && curl -fsSLO --compressed \"https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc\"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep \" node-v$NODE_VERSION-linux-$ARCH.tar.xz\\$\" SHASUMS256.txt | sha256sum -c -   && tar -xJf \"node-v$NODE_VERSION-linux-$ARCH.tar.xz\" -C /usr/local --strip-components=1 --no-same-owner   && rm \"node-v$NODE_VERSION-linux-$ARCH.tar.xz\" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs" shape="box"];
  "sha256:399d21b41bd9b3b9979628252839b43260660d970d27fc7cb47580b129ed9478" [label="/bin/sh -c set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys \"$key\" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys \"$key\" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys \"$key\" ;   done   && curl -fsSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\"   && curl -fsSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz" shape="box"];
  "sha256:d33856a873781dacc6791163ff230fc5573d92ebd3f319a625dbf0fc4a8a37e0" [label="/bin/sh -c node --version" shape="box"];
  "sha256:26c87f690f86ffcec6ebdd7c97b794588dc961c7370c1f687bb6a1c20db50cb1" [label="sha256:26c87f690f86ffcec6ebdd7c97b794588dc961c7370c1f687bb6a1c20db50cb1" shape="plaintext"];
  "sha256:39a11d0f1efabd63b131360d533defb32e3aec4de7811d66b3578cc58d39027a" -> "sha256:b01dcb0293ef00636d90814b2ad1f734174a08acc51b236870e1e26978af7347" [label=""];
  "sha256:b01dcb0293ef00636d90814b2ad1f734174a08acc51b236870e1e26978af7347" -> "sha256:75f5cb625bc4c1036e1be0b1017bfeabf5aa4b09947fc2ad603c7b516b1a5cc6" [label=""];
  "sha256:75f5cb625bc4c1036e1be0b1017bfeabf5aa4b09947fc2ad603c7b516b1a5cc6" -> "sha256:5ffa976e95ae722cdaaa4be24d06ed3acd0446c5cebd5b471d7915b3f9c34955" [label=""];
  "sha256:5ffa976e95ae722cdaaa4be24d06ed3acd0446c5cebd5b471d7915b3f9c34955" -> "sha256:399d21b41bd9b3b9979628252839b43260660d970d27fc7cb47580b129ed9478" [label=""];
  "sha256:399d21b41bd9b3b9979628252839b43260660d970d27fc7cb47580b129ed9478" -> "sha256:d33856a873781dacc6791163ff230fc5573d92ebd3f319a625dbf0fc4a8a37e0" [label=""];
  "sha256:d33856a873781dacc6791163ff230fc5573d92ebd3f319a625dbf0fc4a8a37e0" -> "sha256:26c87f690f86ffcec6ebdd7c97b794588dc961c7370c1f687bb6a1c20db50cb1" [label=""];
}
