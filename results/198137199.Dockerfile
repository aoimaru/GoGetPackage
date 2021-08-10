[app/sources/198137199.Dockerfile]
digraph {
  "sha256:d8635ea7526c6db68f9b86f2251c66ef0341e3364fb4d71c655b3bafae401d61" [label="local://context" shape="ellipse"];
  "sha256:7a633c8d4d8fe252bd75604cc53456572cab7bfd5b5c00b05f9b058620b9961a" [label="docker-image://docker.io/library/node:5.1.1" shape="ellipse"];
  "sha256:c50e706ae26b6d8f619527d8afa95d778f854a92a56474ea0313f98ecc903ac3" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:4fb14a7b6644f0b79dff5e17736e104742d9221d55b41ef9c08cf0b9e982c7be" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:d1080a78e549f7d40ba7a8e9acedaff69658c64572f66a5fa7f5cf0f67341fa0" [label="/bin/sh -c npm install nodemon -g" shape="box"];
  "sha256:e472f75f84ba4ff85c954bcea722e28e840e23d9ca3cefb841e2e25539a9a8ea" [label="copy{src=/package.json, dest=/usr/src/app}" shape="note"];
  "sha256:37729a8dd6063ec90a7d6a67d463208b14b7dfb32cdd6c4c71b997b88e58729b" [label="/bin/sh -c npm install" shape="box"];
  "sha256:0fb8ad7e38ba6e34bcd726db179e0e28517103e97373c57250dbfbb7e6391c61" [label="copy{src=/src, dest=/usr/src/app/src}" shape="note"];
  "sha256:46c572fe9b9243fea82c7e68fd1be5f078ebb83f282b37662bf1678444d5c35e" [label="copy{src=/bin, dest=/usr/src/app/bin}" shape="note"];
  "sha256:6f6a46b19c9fd87f516a86866b58fa94b675bddd0b0cbff7c8db08de683eb965" [label="copy{src=/config, dest=/usr/src/app/config}" shape="note"];
  "sha256:6c62a16775a645e7dc1fd7e8ec850cc6bfefd6ea1ed3911d1f53e60a299c5f37" [label="copy{src=/.babelrc, dest=/usr/src/app/}" shape="note"];
  "sha256:9b935bb42cccbf8b0b60dd48f31093f6123809ad38481f32f978ad33488670cd" [label="copy{src=/nodemon.json, dest=/usr/src/app/}" shape="note"];
  "sha256:249b4eba663ff5670da4489331957b774c9d902a00f1680976d195f86d6efaba" [label="copy{src=/index.js, dest=/usr/src/app/}" shape="note"];
  "sha256:aceded24689964be7449097de44dec3b75fd75dbf7c18770deafe48161687f39" [label="/bin/sh -c npm run build" shape="box"];
  "sha256:a40d5433d12005577e9e9488a16060fdc4032759d1871d4f551e1d66f9bf3588" [label="sha256:a40d5433d12005577e9e9488a16060fdc4032759d1871d4f551e1d66f9bf3588" shape="plaintext"];
  "sha256:7a633c8d4d8fe252bd75604cc53456572cab7bfd5b5c00b05f9b058620b9961a" -> "sha256:c50e706ae26b6d8f619527d8afa95d778f854a92a56474ea0313f98ecc903ac3" [label=""];
  "sha256:c50e706ae26b6d8f619527d8afa95d778f854a92a56474ea0313f98ecc903ac3" -> "sha256:4fb14a7b6644f0b79dff5e17736e104742d9221d55b41ef9c08cf0b9e982c7be" [label=""];
  "sha256:4fb14a7b6644f0b79dff5e17736e104742d9221d55b41ef9c08cf0b9e982c7be" -> "sha256:d1080a78e549f7d40ba7a8e9acedaff69658c64572f66a5fa7f5cf0f67341fa0" [label=""];
  "sha256:d1080a78e549f7d40ba7a8e9acedaff69658c64572f66a5fa7f5cf0f67341fa0" -> "sha256:e472f75f84ba4ff85c954bcea722e28e840e23d9ca3cefb841e2e25539a9a8ea" [label=""];
  "sha256:d8635ea7526c6db68f9b86f2251c66ef0341e3364fb4d71c655b3bafae401d61" -> "sha256:e472f75f84ba4ff85c954bcea722e28e840e23d9ca3cefb841e2e25539a9a8ea" [label=""];
  "sha256:e472f75f84ba4ff85c954bcea722e28e840e23d9ca3cefb841e2e25539a9a8ea" -> "sha256:37729a8dd6063ec90a7d6a67d463208b14b7dfb32cdd6c4c71b997b88e58729b" [label=""];
  "sha256:37729a8dd6063ec90a7d6a67d463208b14b7dfb32cdd6c4c71b997b88e58729b" -> "sha256:0fb8ad7e38ba6e34bcd726db179e0e28517103e97373c57250dbfbb7e6391c61" [label=""];
  "sha256:d8635ea7526c6db68f9b86f2251c66ef0341e3364fb4d71c655b3bafae401d61" -> "sha256:0fb8ad7e38ba6e34bcd726db179e0e28517103e97373c57250dbfbb7e6391c61" [label=""];
  "sha256:0fb8ad7e38ba6e34bcd726db179e0e28517103e97373c57250dbfbb7e6391c61" -> "sha256:46c572fe9b9243fea82c7e68fd1be5f078ebb83f282b37662bf1678444d5c35e" [label=""];
  "sha256:d8635ea7526c6db68f9b86f2251c66ef0341e3364fb4d71c655b3bafae401d61" -> "sha256:46c572fe9b9243fea82c7e68fd1be5f078ebb83f282b37662bf1678444d5c35e" [label=""];
  "sha256:46c572fe9b9243fea82c7e68fd1be5f078ebb83f282b37662bf1678444d5c35e" -> "sha256:6f6a46b19c9fd87f516a86866b58fa94b675bddd0b0cbff7c8db08de683eb965" [label=""];
  "sha256:d8635ea7526c6db68f9b86f2251c66ef0341e3364fb4d71c655b3bafae401d61" -> "sha256:6f6a46b19c9fd87f516a86866b58fa94b675bddd0b0cbff7c8db08de683eb965" [label=""];
  "sha256:6f6a46b19c9fd87f516a86866b58fa94b675bddd0b0cbff7c8db08de683eb965" -> "sha256:6c62a16775a645e7dc1fd7e8ec850cc6bfefd6ea1ed3911d1f53e60a299c5f37" [label=""];
  "sha256:d8635ea7526c6db68f9b86f2251c66ef0341e3364fb4d71c655b3bafae401d61" -> "sha256:6c62a16775a645e7dc1fd7e8ec850cc6bfefd6ea1ed3911d1f53e60a299c5f37" [label=""];
  "sha256:6c62a16775a645e7dc1fd7e8ec850cc6bfefd6ea1ed3911d1f53e60a299c5f37" -> "sha256:9b935bb42cccbf8b0b60dd48f31093f6123809ad38481f32f978ad33488670cd" [label=""];
  "sha256:d8635ea7526c6db68f9b86f2251c66ef0341e3364fb4d71c655b3bafae401d61" -> "sha256:9b935bb42cccbf8b0b60dd48f31093f6123809ad38481f32f978ad33488670cd" [label=""];
  "sha256:9b935bb42cccbf8b0b60dd48f31093f6123809ad38481f32f978ad33488670cd" -> "sha256:249b4eba663ff5670da4489331957b774c9d902a00f1680976d195f86d6efaba" [label=""];
  "sha256:d8635ea7526c6db68f9b86f2251c66ef0341e3364fb4d71c655b3bafae401d61" -> "sha256:249b4eba663ff5670da4489331957b774c9d902a00f1680976d195f86d6efaba" [label=""];
  "sha256:249b4eba663ff5670da4489331957b774c9d902a00f1680976d195f86d6efaba" -> "sha256:aceded24689964be7449097de44dec3b75fd75dbf7c18770deafe48161687f39" [label=""];
  "sha256:aceded24689964be7449097de44dec3b75fd75dbf7c18770deafe48161687f39" -> "sha256:a40d5433d12005577e9e9488a16060fdc4032759d1871d4f551e1d66f9bf3588" [label=""];
}

