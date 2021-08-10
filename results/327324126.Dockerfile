[app/sources/327324126.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:81be81bd29a20124ba242db79d12eb201ad52407b03e0ab394c2941ecb38a4d3" [label="/bin/sh -c groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node" shape="box"];
  "sha256:2e800bb5337ed85930f9e96bbec6fe36622cef999d07567ff8d172d17c86f4e8" [label="/bin/sh -c set -x   && echo \"deb http://mirrors.aliyun.com/debian/ jessie main non-free contrib\" > /etc/apt/sources.list   && echo \"deb http://mirrors.aliyun.com/debian/ jessie-proposed-updates main non-free contrib\" >> /etc/apt/sources.list   && echo \"deb-src http://mirrors.aliyun.com/debian/ jessie main non-free contrib\" >> /etc/apt/sources.list   && echo \"deb-src http://mirrors.aliyun.com/debian/ jessie-proposed-updates main non-free contrib\" >> /etc/apt/sources.list   && apt-get update && apt-get install -y ca-certificates curl wget --no-install-recommends   && rm -rf /var/lib/apt/lists/*   && curl -fsSLO --compressed \"https://npm.taobao.org/mirrors/alinode/v$ALINODE_VERSION/alinode-v$ALINODE_VERSION-linux-$ARCH.tar.gz\"   && curl -fsSLO --compressed \"https://npm.taobao.org/mirrors/alinode/v$ALINODE_VERSION/SHASUMS256.txt\"   && grep \" alinode-v$ALINODE_VERSION-linux-$ARCH.tar.gz\\$\" SHASUMS256.txt | sha256sum -c -   && tar -zxvf \"alinode-v$ALINODE_VERSION-linux-$ARCH.tar.gz\" -C /usr/local --strip-components=1 --no-same-owner   && rm \"alinode-v$ALINODE_VERSION-linux-$ARCH.tar.gz\" SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && ENABLE_NODE_LOG=NO npm set registry https://registry.npm.taobao.org   && ENABLE_NODE_LOG=NO npm set disturl https://npm.taobao.org/dist   && ENABLE_NODE_LOG=NO npm i -g yarn pm2 @alicloud/agenthub   && ENABLE_NODE_LOG=NO npm cache clean --force   && rm -rf /tmp/*" shape="box"];
  "sha256:6427c4f13b983ba85b2266fe44b7acf26b9606978834f697445690d69feca7e1" [label="local://context" shape="ellipse"];
  "sha256:129a69cc776f57bb458f3d2d7784da273cf36421766350191f48d11020e6e73d" [label="copy{src=/default.config.js, dest=/root}" shape="note"];
  "sha256:e33242d30e7e82501e0f8917be334d17eb84baefef49e1329d2debe2d74536ec" [label="copy{src=/start-agenthub.sh, dest=/}" shape="note"];
  "sha256:6b8e5dfbe40fe89ee3f8327bbb274aa5d55bd83ff5379fa8e0b1468ffbd8a4d6" [label="mkdir{path=/app}" shape="note"];
  "sha256:482a98c25e9ac8d90fc3657089a0ea8fc61af76991d2dc471af708a6630ddb7e" [label="sha256:482a98c25e9ac8d90fc3657089a0ea8fc61af76991d2dc471af708a6630ddb7e" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:81be81bd29a20124ba242db79d12eb201ad52407b03e0ab394c2941ecb38a4d3" [label=""];
  "sha256:81be81bd29a20124ba242db79d12eb201ad52407b03e0ab394c2941ecb38a4d3" -> "sha256:2e800bb5337ed85930f9e96bbec6fe36622cef999d07567ff8d172d17c86f4e8" [label=""];
  "sha256:2e800bb5337ed85930f9e96bbec6fe36622cef999d07567ff8d172d17c86f4e8" -> "sha256:129a69cc776f57bb458f3d2d7784da273cf36421766350191f48d11020e6e73d" [label=""];
  "sha256:6427c4f13b983ba85b2266fe44b7acf26b9606978834f697445690d69feca7e1" -> "sha256:129a69cc776f57bb458f3d2d7784da273cf36421766350191f48d11020e6e73d" [label=""];
  "sha256:129a69cc776f57bb458f3d2d7784da273cf36421766350191f48d11020e6e73d" -> "sha256:e33242d30e7e82501e0f8917be334d17eb84baefef49e1329d2debe2d74536ec" [label=""];
  "sha256:6427c4f13b983ba85b2266fe44b7acf26b9606978834f697445690d69feca7e1" -> "sha256:e33242d30e7e82501e0f8917be334d17eb84baefef49e1329d2debe2d74536ec" [label=""];
  "sha256:e33242d30e7e82501e0f8917be334d17eb84baefef49e1329d2debe2d74536ec" -> "sha256:6b8e5dfbe40fe89ee3f8327bbb274aa5d55bd83ff5379fa8e0b1468ffbd8a4d6" [label=""];
  "sha256:6b8e5dfbe40fe89ee3f8327bbb274aa5d55bd83ff5379fa8e0b1468ffbd8a4d6" -> "sha256:482a98c25e9ac8d90fc3657089a0ea8fc61af76991d2dc471af708a6630ddb7e" [label=""];
}

