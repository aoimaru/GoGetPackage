[app/sources/291180585.Dockerfile]
digraph {
  "sha256:ea2ded281c38d9fbe695a1ca9d6153f5d97d4f6d374974cf27b33c32da8b75ac" [label="docker-image://docker.io/circleci/php:7.1.19-apache-stretch@sha256:27a449071c4f70f9ccf17835ba01f6acd11c8825dae3fd3ff38e18aa534cd810" shape="ellipse"];
  "sha256:5fdc63b11612f220e7e2516077b32efa081b8dbde875da96fa9925679947e59c" [label="/bin/sh -c groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node" shape="box"];
  "sha256:3da470fb17449f7514dc5d36b2cbc9c6aacac7cad607190364b8a55dd0699dee" [label="/bin/sh -c set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys \"$key\" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys \"$key\" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys \"$key\" ;   done" shape="box"];
  "sha256:9233429dc51d7a6c20fc9ed1abca6b0eed6b752876abf178d11fdd38fbfdcde9" [label="/bin/sh -c ARCH= && dpkgArch=\"$(dpkg --print-architecture)\"   && case \"${dpkgArch##*-}\" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     i386) ARCH='x86';;     *) echo \"unsupported architecture\"; exit 1 ;;   esac   && curl -fsSLO --compressed \"https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz\"   && curl -fsSLO --compressed \"https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc\"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep \" node-v$NODE_VERSION-linux-$ARCH.tar.xz\\$\" SHASUMS256.txt | sha256sum -c -   && tar -xJf \"node-v$NODE_VERSION-linux-$ARCH.tar.xz\" -C /usr/local --strip-components=1 --no-same-owner   && rm \"node-v$NODE_VERSION-linux-$ARCH.tar.xz\" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs" shape="box"];
  "sha256:0fecf57f48463104a06c6c219d2165f81ea08d4a206a5d1cad4fcc4cbac0ea9b" [label="/bin/sh -c set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys \"$key\" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys \"$key\" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys \"$key\" ;   done   && curl -fsSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\"   && curl -fsSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz" shape="box"];
  "sha256:32ffbe9af2d22843c8949f9d9c6a1076c3a53399d0a9a0e7dc29d015c8d8266c" [label="/bin/sh -c node --version" shape="box"];
  "sha256:5167b936359b4345ab20ef4e77417faa8367525923347c6b9720c8343f25fc53" [label="sha256:5167b936359b4345ab20ef4e77417faa8367525923347c6b9720c8343f25fc53" shape="plaintext"];
  "sha256:ea2ded281c38d9fbe695a1ca9d6153f5d97d4f6d374974cf27b33c32da8b75ac" -> "sha256:5fdc63b11612f220e7e2516077b32efa081b8dbde875da96fa9925679947e59c" [label=""];
  "sha256:5fdc63b11612f220e7e2516077b32efa081b8dbde875da96fa9925679947e59c" -> "sha256:3da470fb17449f7514dc5d36b2cbc9c6aacac7cad607190364b8a55dd0699dee" [label=""];
  "sha256:3da470fb17449f7514dc5d36b2cbc9c6aacac7cad607190364b8a55dd0699dee" -> "sha256:9233429dc51d7a6c20fc9ed1abca6b0eed6b752876abf178d11fdd38fbfdcde9" [label=""];
  "sha256:9233429dc51d7a6c20fc9ed1abca6b0eed6b752876abf178d11fdd38fbfdcde9" -> "sha256:0fecf57f48463104a06c6c219d2165f81ea08d4a206a5d1cad4fcc4cbac0ea9b" [label=""];
  "sha256:0fecf57f48463104a06c6c219d2165f81ea08d4a206a5d1cad4fcc4cbac0ea9b" -> "sha256:32ffbe9af2d22843c8949f9d9c6a1076c3a53399d0a9a0e7dc29d015c8d8266c" [label=""];
  "sha256:32ffbe9af2d22843c8949f9d9c6a1076c3a53399d0a9a0e7dc29d015c8d8266c" -> "sha256:5167b936359b4345ab20ef4e77417faa8367525923347c6b9720c8343f25fc53" [label=""];
}

