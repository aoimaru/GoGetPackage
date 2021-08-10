[app/sources/176029485.Dockerfile]
digraph {
  "sha256:b7da3db566c35128bc99ff34429b6d638405c77daa85b54ec25bb8a9102e4c03" [label="docker-image://docker.io/library/ruby:2.1" shape="ellipse"];
  "sha256:b74cca1df735a05f98416d67565cb84c519275427c0aa4fc2647c0573bbe503c" [label="/bin/sh -c usermod -d /home www-data && chown www-data:www-data /home" shape="box"];
  "sha256:b374d8c07c2fbc9639c4e1536a423e225abdaac3c538c76f4d50569dd7799aad" [label="/bin/sh -c apt-get update     && apt-get install -y         git     apt-transport-https     ca-certificates     && apt-get clean     && apt-get autoremove -y     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:97c7a026b56c88d5dfaf160eaa5342d52c595d619708ac04c51884f36b22eb06" [label="/bin/sh -c curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -     && echo \"deb https://dl.yarnpkg.com/debian/ stable main\" | tee /etc/apt/sources.list.d/yarn.list     && apt-get update     && apt-get install -y         yarn     && apt-get clean     && apt-get autoremove -y     && rm -rf /var/lib/apt/lists/*lists" shape="box"];
  "sha256:f466608193f5b16d3906393897bf3e0e8f6b4cecd20ed51ca1656721712b1d83" [label="/bin/sh -c apt-get update     && apt-get install -y         curl     && gpg --keyserver pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && curl -o /usr/local/bin/gosu -SL \"https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)\"   \t&& curl -o /usr/local/bin/gosu.asc -SL \"https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc\"   \t&& gpg --verify /usr/local/bin/gosu.asc   \t&& rm /usr/local/bin/gosu.asc   \t&& chmod +x /usr/local/bin/gosu     && apt-get clean     && apt-get autoremove -y         curl     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:5c3b9743fc243d179bf93889b8d232446ac9453d8cb2f4a88317e497a7a65108" [label="/bin/sh -c set -ex     && for key in       9554F04D7259F04124DE6B476D5A82AC7E37093B       94AE36675C464D64BAFA68DD7434390BDBE9B9C5       0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93       FD3A5288F042B6850C66B31F09FE44734EB7990E       71DCFD284A79C3B38668286BC97EC7A07EDE3FC1       DD8F2338BAE7501E3DD5AC78C273792F7D83545D       B9AE9905FFD7803F25714661B63B535A4C206CA9       C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     ; do       gpg --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\";     done" shape="box"];
  "sha256:9e6c51248fe18d61023da10bbb64939b07725c11e60569f8397e3c6003f4f4e9" [label="/bin/sh -c buildDeps='xz-utils curl'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO \"https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz\"     && curl -SLO \"https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc\"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep \" node-v$NODE_VERSION-linux-x64.tar.xz\\$\" SHASUMS256.txt | sha256sum -c -     && tar -xJf \"node-v$NODE_VERSION-linux-x64.tar.xz\" -C /usr/local --strip-components=1     && rm \"node-v$NODE_VERSION-linux-x64.tar.xz\" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps" shape="box"];
  "sha256:a3d6abf907ec9c4c662d1b7bf0a9f59f9487a0b3a13c198105fdc2cac1d65f7d" [label="/bin/sh -c gem install sass     && npm install -g bower     && npm install -g ember-cli" shape="box"];
  "sha256:ff0d7fa7fd2dd3f8126896e8acc1cb069059b940e5cd5b73c560920df573dff4" [label="local://context" shape="ellipse"];
  "sha256:2f8df460fa342876fe90af55114081c08d711c95f868af3563f98b5ac55dfe12" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:903872492cd0270a6e22d86cc3fa1d6259cd8bffa957f75fcca87f597045ee3e" [label="/bin/sh -c chmod +x /entrypoint.sh" shape="box"];
  "sha256:863e004f8ea68ada2a57d0667e4f92c834c0a20d3b9acf17d18677279da57d2e" [label="sha256:863e004f8ea68ada2a57d0667e4f92c834c0a20d3b9acf17d18677279da57d2e" shape="plaintext"];
  "sha256:b7da3db566c35128bc99ff34429b6d638405c77daa85b54ec25bb8a9102e4c03" -> "sha256:b74cca1df735a05f98416d67565cb84c519275427c0aa4fc2647c0573bbe503c" [label=""];
  "sha256:b74cca1df735a05f98416d67565cb84c519275427c0aa4fc2647c0573bbe503c" -> "sha256:b374d8c07c2fbc9639c4e1536a423e225abdaac3c538c76f4d50569dd7799aad" [label=""];
  "sha256:b374d8c07c2fbc9639c4e1536a423e225abdaac3c538c76f4d50569dd7799aad" -> "sha256:97c7a026b56c88d5dfaf160eaa5342d52c595d619708ac04c51884f36b22eb06" [label=""];
  "sha256:97c7a026b56c88d5dfaf160eaa5342d52c595d619708ac04c51884f36b22eb06" -> "sha256:f466608193f5b16d3906393897bf3e0e8f6b4cecd20ed51ca1656721712b1d83" [label=""];
  "sha256:f466608193f5b16d3906393897bf3e0e8f6b4cecd20ed51ca1656721712b1d83" -> "sha256:5c3b9743fc243d179bf93889b8d232446ac9453d8cb2f4a88317e497a7a65108" [label=""];
  "sha256:5c3b9743fc243d179bf93889b8d232446ac9453d8cb2f4a88317e497a7a65108" -> "sha256:9e6c51248fe18d61023da10bbb64939b07725c11e60569f8397e3c6003f4f4e9" [label=""];
  "sha256:9e6c51248fe18d61023da10bbb64939b07725c11e60569f8397e3c6003f4f4e9" -> "sha256:a3d6abf907ec9c4c662d1b7bf0a9f59f9487a0b3a13c198105fdc2cac1d65f7d" [label=""];
  "sha256:a3d6abf907ec9c4c662d1b7bf0a9f59f9487a0b3a13c198105fdc2cac1d65f7d" -> "sha256:2f8df460fa342876fe90af55114081c08d711c95f868af3563f98b5ac55dfe12" [label=""];
  "sha256:ff0d7fa7fd2dd3f8126896e8acc1cb069059b940e5cd5b73c560920df573dff4" -> "sha256:2f8df460fa342876fe90af55114081c08d711c95f868af3563f98b5ac55dfe12" [label=""];
  "sha256:2f8df460fa342876fe90af55114081c08d711c95f868af3563f98b5ac55dfe12" -> "sha256:903872492cd0270a6e22d86cc3fa1d6259cd8bffa957f75fcca87f597045ee3e" [label=""];
  "sha256:903872492cd0270a6e22d86cc3fa1d6259cd8bffa957f75fcca87f597045ee3e" -> "sha256:863e004f8ea68ada2a57d0667e4f92c834c0a20d3b9acf17d18677279da57d2e" [label=""];
}

