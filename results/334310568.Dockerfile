[app/sources/334310568.Dockerfile]
digraph {
  "sha256:7e7c4b516b3eed09067d8000138e07e6cc1a5591c33688924b519c7110add52a" [label="local://context" shape="ellipse"];
  "sha256:350095e3c3900a6bb0c8fe8c1708cbe3a1323a49a14f313b5d9bf40fce2e1c11" [label="docker-image://docker.io/library/python:3.6.6-stretch" shape="ellipse"];
  "sha256:322982c083fb3c359c2a89522cf04f2a4d9e4b433146fd51c20e0dd4ae194065" [label="/bin/sh -c groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node" shape="box"];
  "sha256:a96ae64c9d74240aba0c2a847498bf0338c3588825d60d5b7edaeaa13124ee38" [label="/bin/sh -c set -ex   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     56730D5401028683275BD23C23EFEFE93C4CFFFE     77984A986EBC2AA786BC0F66B01FBB92821C587A   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys \"$key\" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys \"$key\" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys \"$key\" ;   done" shape="box"];
  "sha256:3d6f2d2c2dc748fefbb1b7ada5ea32ec4caee0661a8ef63bccd1e6fb776a705f" [label="/bin/sh -c ARCH= && dpkgArch=\"$(dpkg --print-architecture)\"   && case \"${dpkgArch##*-}\" in     amd64) ARCH='x64';;     ppc64el) ARCH='ppc64le';;     s390x) ARCH='s390x';;     arm64) ARCH='arm64';;     armhf) ARCH='armv7l';;     i386) ARCH='x86';;     *) echo \"unsupported architecture\"; exit 1 ;;   esac   && curl -SLO \"https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-$ARCH.tar.xz\"   && curl -SLO --compressed \"https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc\"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep \" node-v$NODE_VERSION-linux-$ARCH.tar.xz\\$\" SHASUMS256.txt | sha256sum -c -   && tar -xJf \"node-v$NODE_VERSION-linux-$ARCH.tar.xz\" -C /usr/local --strip-components=1 --no-same-owner   && rm \"node-v$NODE_VERSION-linux-$ARCH.tar.xz\" SHASUMS256.txt.asc SHASUMS256.txt && ln -s /usr/local/bin/node /usr/local/bin/nodejs" shape="box"];
  "sha256:0e64ca2c5a89cdfd8c21a8f23fa8a1528baf0446ec95935c67d649e6aa985e88" [label="/bin/sh -c apt-get update   && apt-get install -yqq     libenchant-dev     binutils libproj-dev gdal-bin libgeos-dev     unzip     nodejs     sqlite3 libsqlite3-dev" shape="box"];
  "sha256:034e2b13dc21ef8ee2fe7509ac7fece5814b6a83c5b368f836caa2a309c644dc" [label="/bin/sh -c npm install -g mapshaper" shape="box"];
  "sha256:7a2bf26fdae667c7e8210b8f6c23c63eef2f5412f36101b07b222a7ddac6c417" [label="copy{src=/requirements.txt, dest=/requirements.txt}" shape="note"];
  "sha256:c26af6032f4c2f674096bfbe87525795d42e59f165e1f83b3854b6d8bb667bbd" [label="copy{src=/dev-requirements.txt, dest=/dev-requirements.txt}" shape="note"];
  "sha256:5893b4866ab7a286cbce8d4494e5f44b6660617668628c3c3add4642bc7c5d20" [label="/bin/sh -c set -ex &&  pip install -r requirements.txt" shape="box"];
  "sha256:fdfb7676d63d9fe7e62f34c20b4cf3d7cc13ce18f904000ae06432f56736eb24" [label="/bin/sh -c set -ex &&  pip install -r dev-requirements.txt" shape="box"];
  "sha256:9086ecf1125ae2b551cf84f0cfa49833449b04dcdd1b24c4f13a05a6d24bce14" [label="/bin/sh -c set -ex && pip install cartopy jupyterlab" shape="box"];
  "sha256:a14d1634f11ee87b5975915ff7b4a01b4bad97d25185955460d0ae22c7a5c31e" [label="copy{src=/setup.py, dest=/app/},copy{src=/README.rst, dest=/app/}" shape="note"];
  "sha256:0b3cf6ffc2aa9961c35812f6765e20b6129922ff7ff15f151bd840f89ca4656d" [label="copy{src=/eeweather, dest=/app/eeweather}" shape="note"];
  "sha256:17b3c8a5fa71d3b5bb6b68f6c7f133f2afd9c48d25706db7687240012a496eba" [label="/bin/sh -c set -ex && cd /usr/local/lib/ && python /app/setup.py develop" shape="box"];
  "sha256:ee5d13e02f7db93be5f859e20818311acb756bc0acd961716327eeabc2f72b2a" [label="mkdir{path=/app}" shape="note"];
  "sha256:0b325917d5b8b450f023b532db9d996ea36d84a1dd813340160835dccb220006" [label="sha256:0b325917d5b8b450f023b532db9d996ea36d84a1dd813340160835dccb220006" shape="plaintext"];
  "sha256:350095e3c3900a6bb0c8fe8c1708cbe3a1323a49a14f313b5d9bf40fce2e1c11" -> "sha256:322982c083fb3c359c2a89522cf04f2a4d9e4b433146fd51c20e0dd4ae194065" [label=""];
  "sha256:322982c083fb3c359c2a89522cf04f2a4d9e4b433146fd51c20e0dd4ae194065" -> "sha256:a96ae64c9d74240aba0c2a847498bf0338c3588825d60d5b7edaeaa13124ee38" [label=""];
  "sha256:a96ae64c9d74240aba0c2a847498bf0338c3588825d60d5b7edaeaa13124ee38" -> "sha256:3d6f2d2c2dc748fefbb1b7ada5ea32ec4caee0661a8ef63bccd1e6fb776a705f" [label=""];
  "sha256:3d6f2d2c2dc748fefbb1b7ada5ea32ec4caee0661a8ef63bccd1e6fb776a705f" -> "sha256:0e64ca2c5a89cdfd8c21a8f23fa8a1528baf0446ec95935c67d649e6aa985e88" [label=""];
  "sha256:0e64ca2c5a89cdfd8c21a8f23fa8a1528baf0446ec95935c67d649e6aa985e88" -> "sha256:034e2b13dc21ef8ee2fe7509ac7fece5814b6a83c5b368f836caa2a309c644dc" [label=""];
  "sha256:034e2b13dc21ef8ee2fe7509ac7fece5814b6a83c5b368f836caa2a309c644dc" -> "sha256:7a2bf26fdae667c7e8210b8f6c23c63eef2f5412f36101b07b222a7ddac6c417" [label=""];
  "sha256:7e7c4b516b3eed09067d8000138e07e6cc1a5591c33688924b519c7110add52a" -> "sha256:7a2bf26fdae667c7e8210b8f6c23c63eef2f5412f36101b07b222a7ddac6c417" [label=""];
  "sha256:7a2bf26fdae667c7e8210b8f6c23c63eef2f5412f36101b07b222a7ddac6c417" -> "sha256:c26af6032f4c2f674096bfbe87525795d42e59f165e1f83b3854b6d8bb667bbd" [label=""];
  "sha256:7e7c4b516b3eed09067d8000138e07e6cc1a5591c33688924b519c7110add52a" -> "sha256:c26af6032f4c2f674096bfbe87525795d42e59f165e1f83b3854b6d8bb667bbd" [label=""];
  "sha256:c26af6032f4c2f674096bfbe87525795d42e59f165e1f83b3854b6d8bb667bbd" -> "sha256:5893b4866ab7a286cbce8d4494e5f44b6660617668628c3c3add4642bc7c5d20" [label=""];
  "sha256:5893b4866ab7a286cbce8d4494e5f44b6660617668628c3c3add4642bc7c5d20" -> "sha256:fdfb7676d63d9fe7e62f34c20b4cf3d7cc13ce18f904000ae06432f56736eb24" [label=""];
  "sha256:fdfb7676d63d9fe7e62f34c20b4cf3d7cc13ce18f904000ae06432f56736eb24" -> "sha256:9086ecf1125ae2b551cf84f0cfa49833449b04dcdd1b24c4f13a05a6d24bce14" [label=""];
  "sha256:9086ecf1125ae2b551cf84f0cfa49833449b04dcdd1b24c4f13a05a6d24bce14" -> "sha256:a14d1634f11ee87b5975915ff7b4a01b4bad97d25185955460d0ae22c7a5c31e" [label=""];
  "sha256:7e7c4b516b3eed09067d8000138e07e6cc1a5591c33688924b519c7110add52a" -> "sha256:a14d1634f11ee87b5975915ff7b4a01b4bad97d25185955460d0ae22c7a5c31e" [label=""];
  "sha256:a14d1634f11ee87b5975915ff7b4a01b4bad97d25185955460d0ae22c7a5c31e" -> "sha256:0b3cf6ffc2aa9961c35812f6765e20b6129922ff7ff15f151bd840f89ca4656d" [label=""];
  "sha256:7e7c4b516b3eed09067d8000138e07e6cc1a5591c33688924b519c7110add52a" -> "sha256:0b3cf6ffc2aa9961c35812f6765e20b6129922ff7ff15f151bd840f89ca4656d" [label=""];
  "sha256:0b3cf6ffc2aa9961c35812f6765e20b6129922ff7ff15f151bd840f89ca4656d" -> "sha256:17b3c8a5fa71d3b5bb6b68f6c7f133f2afd9c48d25706db7687240012a496eba" [label=""];
  "sha256:17b3c8a5fa71d3b5bb6b68f6c7f133f2afd9c48d25706db7687240012a496eba" -> "sha256:ee5d13e02f7db93be5f859e20818311acb756bc0acd961716327eeabc2f72b2a" [label=""];
  "sha256:ee5d13e02f7db93be5f859e20818311acb756bc0acd961716327eeabc2f72b2a" -> "sha256:0b325917d5b8b450f023b532db9d996ea36d84a1dd813340160835dccb220006" [label=""];
}

