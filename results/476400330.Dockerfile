[app/sources/476400330.Dockerfile]
digraph {
  "sha256:d1a5fed7828cbdddf95410fc6d65d0a3e018c242ac91f3994a56eee9dd3671d4" [label="docker-image://docker.io/library/elixir:1.3-slim" shape="ellipse"];
  "sha256:72368a4bd0f899e7cb42d225ecb3c07a21131cda555f1fe03e75b6e383577530" [label="/bin/sh -c mix local.hex --force && mix local.rebar --force" shape="box"];
  "sha256:810a12909295e3d0129b272a48c6a110573a28ab186d0b85971329e48b1c5f07" [label="/bin/sh -c apt-get update   && apt-get -qq install curl xz-utils git make   && apt-get clean   && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:5058a8de1b6b166bc6f2e111aea70c8629e32e5675c81a6fac6604b29440b8a1" [label="/bin/sh -c set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\";   done" shape="box"];
  "sha256:5856fc95e32a4ee87f0426e697726e3c293d8a75d23d731e8d25b65d1fa78712" [label="/bin/sh -c curl -SLO \"https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz\"   && curl -SLO \"https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc\"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep \" node-v$NODE_VERSION-linux-x64.tar.xz\\$\" SHASUMS256.txt | sha256sum -c -   && tar -xJf \"node-v$NODE_VERSION-linux-x64.tar.xz\" -C /usr/local --strip-components=1   && rm \"node-v$NODE_VERSION-linux-x64.tar.xz\" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs" shape="box"];
  "sha256:2f41f3b6cb70fe33e5858af4156a3e44faa8c47660ba610f959c55967ab526e6" [label="sha256:2f41f3b6cb70fe33e5858af4156a3e44faa8c47660ba610f959c55967ab526e6" shape="plaintext"];
  "sha256:d1a5fed7828cbdddf95410fc6d65d0a3e018c242ac91f3994a56eee9dd3671d4" -> "sha256:72368a4bd0f899e7cb42d225ecb3c07a21131cda555f1fe03e75b6e383577530" [label=""];
  "sha256:72368a4bd0f899e7cb42d225ecb3c07a21131cda555f1fe03e75b6e383577530" -> "sha256:810a12909295e3d0129b272a48c6a110573a28ab186d0b85971329e48b1c5f07" [label=""];
  "sha256:810a12909295e3d0129b272a48c6a110573a28ab186d0b85971329e48b1c5f07" -> "sha256:5058a8de1b6b166bc6f2e111aea70c8629e32e5675c81a6fac6604b29440b8a1" [label=""];
  "sha256:5058a8de1b6b166bc6f2e111aea70c8629e32e5675c81a6fac6604b29440b8a1" -> "sha256:5856fc95e32a4ee87f0426e697726e3c293d8a75d23d731e8d25b65d1fa78712" [label=""];
  "sha256:5856fc95e32a4ee87f0426e697726e3c293d8a75d23d731e8d25b65d1fa78712" -> "sha256:2f41f3b6cb70fe33e5858af4156a3e44faa8c47660ba610f959c55967ab526e6" [label=""];
}

