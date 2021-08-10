[app/sources/280739060.Dockerfile]
digraph {
  "sha256:b5fb93af1b1719de170e1766324f5092c32512f6921c10b24f8e08be8243fbe1" [label="local://context" shape="ellipse"];
  "sha256:a9803c19ae97ef05dcea2c1e6a88281f0d9a543df4993c416bd251e4e69daf3d" [label="docker-image://docker.io/library/node:11-alpine" shape="ellipse"];
  "sha256:e59cdb9f57df6781263fdb7a3a08851da763a6da604bb5af22a0db6ba724b779" [label="/bin/sh -c apk --update --no-cache add chromium     && rm -rf /var/lib/apt/lists/*     /var/cache/apk/*     /usr/share/man     /tmp/*     /usr/lib/node_modules/npm/man     /usr/lib/node_modules/npm/doc     /usr/lib/node_modules/npm/html     /usr/lib/node_modules/npm/scripts" shape="box"];
  "sha256:7ba028971717276da24e61ae01396f11402ab4c36021ded52ac5a901bd9b5e72" [label="/bin/sh -c mkdir -p /home/lighthouse" shape="box"];
  "sha256:646f9c5de985ebe3afe7e7798a2446440b470490feef9b436d0373e19c873707" [label="mkdir{path=/home/lighthouse}" shape="note"];
  "sha256:38f257c0290ad5770d0f1586fc2e14742e173c3d1052d6c4ea79aab5b102720a" [label="copy{src=/src, dest=/home/lighthouse/src}" shape="note"];
  "sha256:ec5538e87a2fc1a025e0a558af4d61867c6853eb05a5af40b0fb7c71bf7e36de" [label="copy{src=/package.json, dest=/home/lighthouse/package.json}" shape="note"];
  "sha256:b5218b0f115a8281ca752149b944de69150c7c087704e93342522c435e65d6c1" [label="/bin/sh -c npm i -g ." shape="box"];
  "sha256:0907d9b6f3a60715098aec1f7a1f139111ca11088c75225a2150cb693efaa02c" [label="/bin/sh -c addgroup -S chrome && adduser -S -g chrome chrome     && mkdir -p /home/chrome/reports && chown -R chrome:chrome /home/chrome" shape="box"];
  "sha256:4985552e4197084a79257a9437a8da843d401973d406b654574005352ad248cf" [label="mkdir{path=/home/chrome/reports}" shape="note"];
  "sha256:5b7b8702994cf0f0a3b0a5680953f4a9465e5fcebc338dcb3b8e205e4c0a099b" [label="sha256:5b7b8702994cf0f0a3b0a5680953f4a9465e5fcebc338dcb3b8e205e4c0a099b" shape="plaintext"];
  "sha256:a9803c19ae97ef05dcea2c1e6a88281f0d9a543df4993c416bd251e4e69daf3d" -> "sha256:e59cdb9f57df6781263fdb7a3a08851da763a6da604bb5af22a0db6ba724b779" [label=""];
  "sha256:e59cdb9f57df6781263fdb7a3a08851da763a6da604bb5af22a0db6ba724b779" -> "sha256:7ba028971717276da24e61ae01396f11402ab4c36021ded52ac5a901bd9b5e72" [label=""];
  "sha256:7ba028971717276da24e61ae01396f11402ab4c36021ded52ac5a901bd9b5e72" -> "sha256:646f9c5de985ebe3afe7e7798a2446440b470490feef9b436d0373e19c873707" [label=""];
  "sha256:646f9c5de985ebe3afe7e7798a2446440b470490feef9b436d0373e19c873707" -> "sha256:38f257c0290ad5770d0f1586fc2e14742e173c3d1052d6c4ea79aab5b102720a" [label=""];
  "sha256:b5fb93af1b1719de170e1766324f5092c32512f6921c10b24f8e08be8243fbe1" -> "sha256:38f257c0290ad5770d0f1586fc2e14742e173c3d1052d6c4ea79aab5b102720a" [label=""];
  "sha256:38f257c0290ad5770d0f1586fc2e14742e173c3d1052d6c4ea79aab5b102720a" -> "sha256:ec5538e87a2fc1a025e0a558af4d61867c6853eb05a5af40b0fb7c71bf7e36de" [label=""];
  "sha256:b5fb93af1b1719de170e1766324f5092c32512f6921c10b24f8e08be8243fbe1" -> "sha256:ec5538e87a2fc1a025e0a558af4d61867c6853eb05a5af40b0fb7c71bf7e36de" [label=""];
  "sha256:ec5538e87a2fc1a025e0a558af4d61867c6853eb05a5af40b0fb7c71bf7e36de" -> "sha256:b5218b0f115a8281ca752149b944de69150c7c087704e93342522c435e65d6c1" [label=""];
  "sha256:b5218b0f115a8281ca752149b944de69150c7c087704e93342522c435e65d6c1" -> "sha256:0907d9b6f3a60715098aec1f7a1f139111ca11088c75225a2150cb693efaa02c" [label=""];
  "sha256:0907d9b6f3a60715098aec1f7a1f139111ca11088c75225a2150cb693efaa02c" -> "sha256:4985552e4197084a79257a9437a8da843d401973d406b654574005352ad248cf" [label=""];
  "sha256:4985552e4197084a79257a9437a8da843d401973d406b654574005352ad248cf" -> "sha256:5b7b8702994cf0f0a3b0a5680953f4a9465e5fcebc338dcb3b8e205e4c0a099b" [label=""];
}

