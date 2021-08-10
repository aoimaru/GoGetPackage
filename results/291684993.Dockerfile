[app/sources/291684993.Dockerfile]
digraph {
  "sha256:289429bd4cf06037fc9a0ed99ff3852ffe5fc6e9c2fd1a1707479d2c8b273c1f" [label="docker-image://docker.io/circleci/php:7.1.30-cli-jessie@sha256:583828d6850c87da2f2d4a66b60053a5fa96b180cac3a49bd851c54bd8c2fd18" shape="ellipse"];
  "sha256:e2430dceb55c73977cf4ce242192c1bdbb6ae013cf9dec3b2e0d7a7990687984" [label="/bin/sh -c whoami" shape="box"];
  "sha256:b28c84e6bf2ea3f66c24d9b075fa7e3f5f68a0683d3bbe3252cfed07011ba120" [label="/bin/sh -c groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node" shape="box"];
  "sha256:1190156ccdd79ea9959448cba20c5254b730a82bc04d70173dcbe4cf4f77917e" [label="/bin/sh -c ARCH= && dpkgArch=\"$(dpkg --print-architecture)\"   && case \"${dpkgArch##*-}\" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     i386) ARCH='x86';;     *) echo \"unsupported architecture\"; exit 1 ;;   esac   && set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys \"$key\" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys \"$key\" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys \"$key\" ;   done   && curl -fsSLO --compressed \"https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz\"   && curl -fsSLO --compressed \"https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc\"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep \" node-v$NODE_VERSION-linux-$ARCH.tar.xz\\$\" SHASUMS256.txt | sha256sum -c -   && tar -xJf \"node-v$NODE_VERSION-linux-$ARCH.tar.xz\" -C /usr/local --strip-components=1 --no-same-owner   && rm \"node-v$NODE_VERSION-linux-$ARCH.tar.xz\" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs" shape="box"];
  "sha256:033ad5b1ccb0a3052d662e37af85f6cdc7d5386fee8e317fe64de669c1de272c" [label="/bin/sh -c set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys \"$key\" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys \"$key\" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys \"$key\" ;   done   && curl -fsSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\"   && curl -fsSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz" shape="box"];
  "sha256:916c5ef108f53161fec43abcd2c2986bca09c0fa074eff960fb81f7a973a8634" [label="local://context" shape="ellipse"];
  "sha256:2fb65e29ad503f7f509f4a54423aa9dddd1467d3bda9d005f2cf26e4fea0cef6" [label="copy{src=/docker-entrypoint.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:8a7e55d7def8eb8eeef847e836f9dd7ca95b42abb8702a7d12815689a89d1f88" [label="/bin/sh -c node --version" shape="box"];
  "sha256:096eb77fe4e677d64c521577e3e7ea42ba1dace5391b8b41ec47c29c2b3725bf" [label="sha256:096eb77fe4e677d64c521577e3e7ea42ba1dace5391b8b41ec47c29c2b3725bf" shape="plaintext"];
  "sha256:289429bd4cf06037fc9a0ed99ff3852ffe5fc6e9c2fd1a1707479d2c8b273c1f" -> "sha256:e2430dceb55c73977cf4ce242192c1bdbb6ae013cf9dec3b2e0d7a7990687984" [label=""];
  "sha256:e2430dceb55c73977cf4ce242192c1bdbb6ae013cf9dec3b2e0d7a7990687984" -> "sha256:b28c84e6bf2ea3f66c24d9b075fa7e3f5f68a0683d3bbe3252cfed07011ba120" [label=""];
  "sha256:b28c84e6bf2ea3f66c24d9b075fa7e3f5f68a0683d3bbe3252cfed07011ba120" -> "sha256:1190156ccdd79ea9959448cba20c5254b730a82bc04d70173dcbe4cf4f77917e" [label=""];
  "sha256:1190156ccdd79ea9959448cba20c5254b730a82bc04d70173dcbe4cf4f77917e" -> "sha256:033ad5b1ccb0a3052d662e37af85f6cdc7d5386fee8e317fe64de669c1de272c" [label=""];
  "sha256:033ad5b1ccb0a3052d662e37af85f6cdc7d5386fee8e317fe64de669c1de272c" -> "sha256:2fb65e29ad503f7f509f4a54423aa9dddd1467d3bda9d005f2cf26e4fea0cef6" [label=""];
  "sha256:916c5ef108f53161fec43abcd2c2986bca09c0fa074eff960fb81f7a973a8634" -> "sha256:2fb65e29ad503f7f509f4a54423aa9dddd1467d3bda9d005f2cf26e4fea0cef6" [label=""];
  "sha256:2fb65e29ad503f7f509f4a54423aa9dddd1467d3bda9d005f2cf26e4fea0cef6" -> "sha256:8a7e55d7def8eb8eeef847e836f9dd7ca95b42abb8702a7d12815689a89d1f88" [label=""];
  "sha256:8a7e55d7def8eb8eeef847e836f9dd7ca95b42abb8702a7d12815689a89d1f88" -> "sha256:096eb77fe4e677d64c521577e3e7ea42ba1dace5391b8b41ec47c29c2b3725bf" [label=""];
}

