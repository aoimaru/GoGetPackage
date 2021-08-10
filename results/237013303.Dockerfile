[app/sources/237013303.Dockerfile]
digraph {
  "sha256:713cc05ac7af5f629eca10bf4e6806f1183e39dc9977c208778225db356ab26c" [label="docker-image://docker.io/library/node:6-alpine" shape="ellipse"];
  "sha256:cb5a81cb869f36926d3a70efa29cdfc1637072714d4e6816016fc6eaab96f87a" [label="/bin/sh -c npm i -g pm2@2.4.6" shape="box"];
  "sha256:cbf135e2776b79f7ff9a8b5c0d981e20cbcfa2f11366b6a2df2b3e8ef718c270" [label="/bin/sh -c mkdir -p /usr/src/api" shape="box"];
  "sha256:51941e899c7d6f4235d3b087b77a5c3c2245b8050bf68c30882b24c807250214" [label="mkdir{path=/usr/src/api}" shape="note"];
  "sha256:fe996a5bfa8db68abc51add0772412a27d603db7b1c5e3eec6a93e41aa2aa2d7" [label="local://context" shape="ellipse"];
  "sha256:e3059695218a10cbf7124b06893a448b8c5d0335d93cc4f498e0dca9198aaa93" [label="copy{src=/api/package.json, dest=/usr/src/api/}" shape="note"];
  "sha256:d0d8cf0dc3eccbd07f68afacc54c11307e21cf4fe93991eba4c207cb17aba6ba" [label="/bin/sh -c npm i --production" shape="box"];
  "sha256:f9bf8dafb71fd757eefa7fe12c3ddbde697cc4e718aa2f50c3ec623376e75315" [label="https://process.filestackapi.com/ADNupMnWyR7kCWRvm76Laz/resize=height:60/https://www.filepicker.io/api/file/WYqKiG0xQQ65DBnss8nD" shape="ellipse"];
  "sha256:26c25f2d3140ff81a444ed6084081cabeefa2f2b9bea789590bf4ce3813ea9be" [label="copy{src=/WYqKiG0xQQ65DBnss8nD, dest=/usr/src/api/public/node-university-logo.png}" shape="note"];
  "sha256:acccd1a4a35dae833f7077aea97c2c8890680d95972205c38cfdc59477d0d46f" [label="copy{src=/api, dest=/usr/src/api/}" shape="note"];
  "sha256:edd9c6b6529304761fe67ed8ed141cb3245ec52ccbb780353469266e2b5e2d68" [label="sha256:edd9c6b6529304761fe67ed8ed141cb3245ec52ccbb780353469266e2b5e2d68" shape="plaintext"];
  "sha256:713cc05ac7af5f629eca10bf4e6806f1183e39dc9977c208778225db356ab26c" -> "sha256:cb5a81cb869f36926d3a70efa29cdfc1637072714d4e6816016fc6eaab96f87a" [label=""];
  "sha256:cb5a81cb869f36926d3a70efa29cdfc1637072714d4e6816016fc6eaab96f87a" -> "sha256:cbf135e2776b79f7ff9a8b5c0d981e20cbcfa2f11366b6a2df2b3e8ef718c270" [label=""];
  "sha256:cbf135e2776b79f7ff9a8b5c0d981e20cbcfa2f11366b6a2df2b3e8ef718c270" -> "sha256:51941e899c7d6f4235d3b087b77a5c3c2245b8050bf68c30882b24c807250214" [label=""];
  "sha256:51941e899c7d6f4235d3b087b77a5c3c2245b8050bf68c30882b24c807250214" -> "sha256:e3059695218a10cbf7124b06893a448b8c5d0335d93cc4f498e0dca9198aaa93" [label=""];
  "sha256:fe996a5bfa8db68abc51add0772412a27d603db7b1c5e3eec6a93e41aa2aa2d7" -> "sha256:e3059695218a10cbf7124b06893a448b8c5d0335d93cc4f498e0dca9198aaa93" [label=""];
  "sha256:e3059695218a10cbf7124b06893a448b8c5d0335d93cc4f498e0dca9198aaa93" -> "sha256:d0d8cf0dc3eccbd07f68afacc54c11307e21cf4fe93991eba4c207cb17aba6ba" [label=""];
  "sha256:d0d8cf0dc3eccbd07f68afacc54c11307e21cf4fe93991eba4c207cb17aba6ba" -> "sha256:26c25f2d3140ff81a444ed6084081cabeefa2f2b9bea789590bf4ce3813ea9be" [label=""];
  "sha256:f9bf8dafb71fd757eefa7fe12c3ddbde697cc4e718aa2f50c3ec623376e75315" -> "sha256:26c25f2d3140ff81a444ed6084081cabeefa2f2b9bea789590bf4ce3813ea9be" [label=""];
  "sha256:26c25f2d3140ff81a444ed6084081cabeefa2f2b9bea789590bf4ce3813ea9be" -> "sha256:acccd1a4a35dae833f7077aea97c2c8890680d95972205c38cfdc59477d0d46f" [label=""];
  "sha256:fe996a5bfa8db68abc51add0772412a27d603db7b1c5e3eec6a93e41aa2aa2d7" -> "sha256:acccd1a4a35dae833f7077aea97c2c8890680d95972205c38cfdc59477d0d46f" [label=""];
  "sha256:acccd1a4a35dae833f7077aea97c2c8890680d95972205c38cfdc59477d0d46f" -> "sha256:edd9c6b6529304761fe67ed8ed141cb3245ec52ccbb780353469266e2b5e2d68" [label=""];
}

