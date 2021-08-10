[app/sources/229709105.Dockerfile]
digraph {
  "sha256:b4fc191af1e59fc97ee4a62b7f87ba8895c6ed6b094574453e2cafea664e7c93" [label="docker-image://docker.io/library/buildpack-deps:jessie" shape="ellipse"];
  "sha256:e0492d08510446f5abf4bd2468d434e88f34368f3ab69969f47dfff7ab3eb5c6" [label="/bin/sh -c groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node" shape="box"];
  "sha256:c060b5f1774a5b029342d59892c05afe7c4b5e559bb03ecea6ce52b5a14e73c2" [label="/bin/sh -c curl -fsSLO --compressed \"https://npm.taobao.org/mirrors/alinode/v$ALINODE_VERSION/alinode-v$ALINODE_VERSION-linux-$ARCH.tar.gz\"   && curl -fsSLO --compressed \"https://npm.taobao.org/mirrors/alinode/v$ALINODE_VERSION/SHASUMS256.txt\"   && grep \" alinode-v$ALINODE_VERSION-linux-$ARCH.tar.gz\\$\" SHASUMS256.txt | sha256sum -c -   && tar -zxvf \"alinode-v$ALINODE_VERSION-linux-$ARCH.tar.gz\" -C /usr/local --strip-components=1 --no-same-owner   && rm \"alinode-v$ALINODE_VERSION-linux-$ARCH.tar.gz\" SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs   && ENABLE_NODE_LOG=NO npm install -g @alicloud/agenthub" shape="box"];
  "sha256:967aadfe9fe57f84b0ab803537c2dc4b8b6752e1acaf17bb9f8483cca7152715" [label="local://context" shape="ellipse"];
  "sha256:2c782b0cf6b0d90afadba125b5e4049ad72150ff25413f7562336b3d02bcce72" [label="copy{src=/default.config.js, dest=/root}" shape="note"];
  "sha256:5a89f9b6bc7b510b480fd6ddc13f23cf0eeaa82d2ecd757ee6fdbf42c972f169" [label="copy{src=/start-agenthub.sh, dest=/}" shape="note"];
  "sha256:836c5f09d3cb7f351a13d82e4da4024b0015ef9e0070f85a87821396da8ad99a" [label="/bin/sh -c chmod u+x /start-agenthub.sh" shape="box"];
  "sha256:a6d1dae805c13a1f543f766b961e8d14223be49ee05241657f172a40badaad8f" [label="/bin/sh -c set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys \"$key\" ||     gpg --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys \"$key\" ||     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys \"$key\" ;   done   && curl -fsSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz\"   && curl -fsSLO --compressed \"https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc\"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz" shape="box"];
  "sha256:7d271cc69f874d84949d0e20d085cf7ccbbdba71c9eafd5a515ee7297a1a8c53" [label="sha256:7d271cc69f874d84949d0e20d085cf7ccbbdba71c9eafd5a515ee7297a1a8c53" shape="plaintext"];
  "sha256:b4fc191af1e59fc97ee4a62b7f87ba8895c6ed6b094574453e2cafea664e7c93" -> "sha256:e0492d08510446f5abf4bd2468d434e88f34368f3ab69969f47dfff7ab3eb5c6" [label=""];
  "sha256:e0492d08510446f5abf4bd2468d434e88f34368f3ab69969f47dfff7ab3eb5c6" -> "sha256:c060b5f1774a5b029342d59892c05afe7c4b5e559bb03ecea6ce52b5a14e73c2" [label=""];
  "sha256:c060b5f1774a5b029342d59892c05afe7c4b5e559bb03ecea6ce52b5a14e73c2" -> "sha256:2c782b0cf6b0d90afadba125b5e4049ad72150ff25413f7562336b3d02bcce72" [label=""];
  "sha256:967aadfe9fe57f84b0ab803537c2dc4b8b6752e1acaf17bb9f8483cca7152715" -> "sha256:2c782b0cf6b0d90afadba125b5e4049ad72150ff25413f7562336b3d02bcce72" [label=""];
  "sha256:2c782b0cf6b0d90afadba125b5e4049ad72150ff25413f7562336b3d02bcce72" -> "sha256:5a89f9b6bc7b510b480fd6ddc13f23cf0eeaa82d2ecd757ee6fdbf42c972f169" [label=""];
  "sha256:967aadfe9fe57f84b0ab803537c2dc4b8b6752e1acaf17bb9f8483cca7152715" -> "sha256:5a89f9b6bc7b510b480fd6ddc13f23cf0eeaa82d2ecd757ee6fdbf42c972f169" [label=""];
  "sha256:5a89f9b6bc7b510b480fd6ddc13f23cf0eeaa82d2ecd757ee6fdbf42c972f169" -> "sha256:836c5f09d3cb7f351a13d82e4da4024b0015ef9e0070f85a87821396da8ad99a" [label=""];
  "sha256:836c5f09d3cb7f351a13d82e4da4024b0015ef9e0070f85a87821396da8ad99a" -> "sha256:a6d1dae805c13a1f543f766b961e8d14223be49ee05241657f172a40badaad8f" [label=""];
  "sha256:a6d1dae805c13a1f543f766b961e8d14223be49ee05241657f172a40badaad8f" -> "sha256:7d271cc69f874d84949d0e20d085cf7ccbbdba71c9eafd5a515ee7297a1a8c53" [label=""];
}

