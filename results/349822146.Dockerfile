[app/sources/349822146.Dockerfile]
digraph {
  "sha256:7da93c7d41d9aff87ceaf1c0d2d3fd15624e0bc66922b08c55ba75ec4a349024" [label="docker-image://docker.io/rangle/clusternator-linux-base:14.04" shape="ellipse"];
  "sha256:89d6c6817014aefb24dde83ab302bff369a67ddb893c5c5af03749dfaf4f3cc2" [label="/bin/sh -c set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\";   done" shape="box"];
  "sha256:4b32ea39b6aca3b0d2bacc7cbb97d650052b20f3492f9e05f0472492fad8b9d0" [label="/bin/sh -c curl -SLO \"https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz\"   && curl -SLO \"https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc\"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep \" node-v$NODE_VERSION-linux-x64.tar.xz\\$\" SHASUMS256.txt | sha256sum -c -   && tar -xJf \"node-v$NODE_VERSION-linux-x64.tar.xz\" -C /usr/local --strip-components=1   && rm \"node-v$NODE_VERSION-linux-x64.tar.xz\" SHASUMS256.txt.asc SHASUMS256.txt" shape="box"];
  "sha256:664f0829476648acf77d1fff99abbf4df5e145ee3d99d7c7df9287b62745ee42" [label="sha256:664f0829476648acf77d1fff99abbf4df5e145ee3d99d7c7df9287b62745ee42" shape="plaintext"];
  "sha256:7da93c7d41d9aff87ceaf1c0d2d3fd15624e0bc66922b08c55ba75ec4a349024" -> "sha256:89d6c6817014aefb24dde83ab302bff369a67ddb893c5c5af03749dfaf4f3cc2" [label=""];
  "sha256:89d6c6817014aefb24dde83ab302bff369a67ddb893c5c5af03749dfaf4f3cc2" -> "sha256:4b32ea39b6aca3b0d2bacc7cbb97d650052b20f3492f9e05f0472492fad8b9d0" [label=""];
  "sha256:4b32ea39b6aca3b0d2bacc7cbb97d650052b20f3492f9e05f0472492fad8b9d0" -> "sha256:664f0829476648acf77d1fff99abbf4df5e145ee3d99d7c7df9287b62745ee42" [label=""];
}

