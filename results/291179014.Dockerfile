[app/sources/291179014.Dockerfile]
digraph {
  "sha256:d1a6d53812ca478f5cd1434b40e341ca507e37d13c1c1dd82e34005c1ebff6d1" [label="docker-image://docker.io/circleci/clojure:tools-deps-1.9.0.391@sha256:212b6e10d8cd91a8183ef1ae1e8b0a0c1f6b60b74cee4516ef95f944eb2e1339" shape="ellipse"];
  "sha256:94cde4ae65454ebc7a4ec03b9528b28702d6899649c17c2b72cd27951d506354" [label="/bin/sh -c groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node" shape="box"];
  "sha256:cd8351cda0c403e629f7b5e0a50abce69eedd151a05c4ee169f581ee9e673b2c" [label="/bin/sh -c set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys \"$key\" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys \"$key\" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys \"$key\" ;   done" shape="box"];
  "sha256:f7f4d9a965b5db11e0dd94c6ea3f60227f7154e8abaa4c6443ece9ba7d6c7761" [label="/bin/sh -c ARCH= && dpkgArch=\"$(dpkg --print-architecture)\"   && case \"${dpkgArch##*-}\" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     i386) ARCH='x86';;     *) echo \"unsupported architecture\"; exit 1 ;;   esac   && curl -fsSLO --compressed \"https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz\"   && curl -fsSLO --compressed \"https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc\"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep \" node-v$NODE_VERSION-linux-$ARCH.tar.xz\\$\" SHASUMS256.txt | sha256sum -c -   && tar -xJf \"node-v$NODE_VERSION-linux-$ARCH.tar.xz\" -C /usr/local --strip-components=1 --no-same-owner   && rm \"node-v$NODE_VERSION-linux-$ARCH.tar.xz\" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs" shape="box"];
  "sha256:b81dd640945b9a182e79fa4d5eb6166adab6fbf2310578c595d46e69f9197f07" [label="/bin/sh -c set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys \"$key\" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys \"$key\" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys \"$key\" ;   done   && curl -fsSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\"   && curl -fsSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz" shape="box"];
  "sha256:c86ac9229f18d8e5aed6a4f8a1cdeb0767ff8df0ac46e0933d8464c62e5b7bdd" [label="/bin/sh -c node --version" shape="box"];
  "sha256:2dfec2dbb2352fcc9578e8493c57eec22320b6a18a4eed30900b994975a236e9" [label="sha256:2dfec2dbb2352fcc9578e8493c57eec22320b6a18a4eed30900b994975a236e9" shape="plaintext"];
  "sha256:d1a6d53812ca478f5cd1434b40e341ca507e37d13c1c1dd82e34005c1ebff6d1" -> "sha256:94cde4ae65454ebc7a4ec03b9528b28702d6899649c17c2b72cd27951d506354" [label=""];
  "sha256:94cde4ae65454ebc7a4ec03b9528b28702d6899649c17c2b72cd27951d506354" -> "sha256:cd8351cda0c403e629f7b5e0a50abce69eedd151a05c4ee169f581ee9e673b2c" [label=""];
  "sha256:cd8351cda0c403e629f7b5e0a50abce69eedd151a05c4ee169f581ee9e673b2c" -> "sha256:f7f4d9a965b5db11e0dd94c6ea3f60227f7154e8abaa4c6443ece9ba7d6c7761" [label=""];
  "sha256:f7f4d9a965b5db11e0dd94c6ea3f60227f7154e8abaa4c6443ece9ba7d6c7761" -> "sha256:b81dd640945b9a182e79fa4d5eb6166adab6fbf2310578c595d46e69f9197f07" [label=""];
  "sha256:b81dd640945b9a182e79fa4d5eb6166adab6fbf2310578c595d46e69f9197f07" -> "sha256:c86ac9229f18d8e5aed6a4f8a1cdeb0767ff8df0ac46e0933d8464c62e5b7bdd" [label=""];
  "sha256:c86ac9229f18d8e5aed6a4f8a1cdeb0767ff8df0ac46e0933d8464c62e5b7bdd" -> "sha256:2dfec2dbb2352fcc9578e8493c57eec22320b6a18a4eed30900b994975a236e9" [label=""];
}
