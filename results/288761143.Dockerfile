[app/sources/288761143.Dockerfile]
digraph {
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" [label="docker-image://docker.io/library/alpine:edge" shape="ellipse"];
  "sha256:75c0a6e166466fce69a73db84d325e54e1ad148c6f650f34e0822f6451dacd1a" [label="/bin/sh -c apk --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ add  \tnodejs nodejs-npm chromium firefox xwininfo xvfb dbus eudev ttf-freefont fluxbox" shape="box"];
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" [label="docker-image://docker.io/library/node:8-alpine" shape="ellipse"];
  "sha256:c181f36dea2f8446f8216fddb3d8dfe865fa76a5dddef9ec7aeedb6888741b0c" [label="local://context" shape="ellipse"];
  "sha256:67eeaf0d90c0a7b821944d6366114782c512eddaf8d2c4a4ca832d3d37aba656" [label="copy{src=/package.json, dest=/package.json}" shape="note"];
  "sha256:5e9f7a7b32d4a4d66979ccada9ac00350c3ad55a01095fcb486ab6c19fa446ab" [label="copy{src=/yarn.lock, dest=/yarn.lock}" shape="note"];
  "sha256:4e3ee6ce736df7a2a6a20e16f4b31dfd5b271a4f808ef407419f45006672c465" [label="/bin/sh -c yarn install" shape="box"];
  "sha256:2e48fd59acdec2cf1474a0fc3079adf806608838e20dcbc56d6162caa2fe9baf" [label="copy{src=/node_modules, dest=/test/node_modules}" shape="note"];
  "sha256:8b482b174d7ffff2a17d2269183c6905209ec8fe9ca8269b27f496d4311d2c1d" [label="copy{src=/src, dest=/test/src}" shape="note"];
  "sha256:e3955892a5198abfd53a801717978a13bb2f020965ff3fa24dfecb0a01532cd1" [label="copy{src=/main.js, dest=/test/main.js}" shape="note"];
  "sha256:f702c00c01334ab19cfefce7a9a9433368148e7a126f0890702ccf3a2b29be3a" [label="copy{src=/build/docker/test.sh, dest=/test/test.sh}" shape="note"];
  "sha256:c1c07ba1cb10e159026603f3dc226f5be9185327a8eb733d5839850585367438" [label="mkdir{path=/test}" shape="note"];
  "sha256:32095c470e7279b4befc6f25b5a1146ba3ef64b28e46c9504291676d679d66b6" [label="/bin/sh -c chmod +x ./test.sh && ln -s /test/test.sh /usr/local/bin/gherkin-testcafe" shape="box"];
  "sha256:38b1fb4ad0fcd4cf4827d896bb82d727fdca72232b80f0ee20d077c90df92d0d" [label="sha256:38b1fb4ad0fcd4cf4827d896bb82d727fdca72232b80f0ee20d077c90df92d0d" shape="plaintext"];
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" -> "sha256:75c0a6e166466fce69a73db84d325e54e1ad148c6f650f34e0822f6451dacd1a" [label=""];
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" -> "sha256:67eeaf0d90c0a7b821944d6366114782c512eddaf8d2c4a4ca832d3d37aba656" [label=""];
  "sha256:c181f36dea2f8446f8216fddb3d8dfe865fa76a5dddef9ec7aeedb6888741b0c" -> "sha256:67eeaf0d90c0a7b821944d6366114782c512eddaf8d2c4a4ca832d3d37aba656" [label=""];
  "sha256:67eeaf0d90c0a7b821944d6366114782c512eddaf8d2c4a4ca832d3d37aba656" -> "sha256:5e9f7a7b32d4a4d66979ccada9ac00350c3ad55a01095fcb486ab6c19fa446ab" [label=""];
  "sha256:c181f36dea2f8446f8216fddb3d8dfe865fa76a5dddef9ec7aeedb6888741b0c" -> "sha256:5e9f7a7b32d4a4d66979ccada9ac00350c3ad55a01095fcb486ab6c19fa446ab" [label=""];
  "sha256:5e9f7a7b32d4a4d66979ccada9ac00350c3ad55a01095fcb486ab6c19fa446ab" -> "sha256:4e3ee6ce736df7a2a6a20e16f4b31dfd5b271a4f808ef407419f45006672c465" [label=""];
  "sha256:75c0a6e166466fce69a73db84d325e54e1ad148c6f650f34e0822f6451dacd1a" -> "sha256:2e48fd59acdec2cf1474a0fc3079adf806608838e20dcbc56d6162caa2fe9baf" [label=""];
  "sha256:4e3ee6ce736df7a2a6a20e16f4b31dfd5b271a4f808ef407419f45006672c465" -> "sha256:2e48fd59acdec2cf1474a0fc3079adf806608838e20dcbc56d6162caa2fe9baf" [label=""];
  "sha256:2e48fd59acdec2cf1474a0fc3079adf806608838e20dcbc56d6162caa2fe9baf" -> "sha256:8b482b174d7ffff2a17d2269183c6905209ec8fe9ca8269b27f496d4311d2c1d" [label=""];
  "sha256:c181f36dea2f8446f8216fddb3d8dfe865fa76a5dddef9ec7aeedb6888741b0c" -> "sha256:8b482b174d7ffff2a17d2269183c6905209ec8fe9ca8269b27f496d4311d2c1d" [label=""];
  "sha256:8b482b174d7ffff2a17d2269183c6905209ec8fe9ca8269b27f496d4311d2c1d" -> "sha256:e3955892a5198abfd53a801717978a13bb2f020965ff3fa24dfecb0a01532cd1" [label=""];
  "sha256:c181f36dea2f8446f8216fddb3d8dfe865fa76a5dddef9ec7aeedb6888741b0c" -> "sha256:e3955892a5198abfd53a801717978a13bb2f020965ff3fa24dfecb0a01532cd1" [label=""];
  "sha256:e3955892a5198abfd53a801717978a13bb2f020965ff3fa24dfecb0a01532cd1" -> "sha256:f702c00c01334ab19cfefce7a9a9433368148e7a126f0890702ccf3a2b29be3a" [label=""];
  "sha256:c181f36dea2f8446f8216fddb3d8dfe865fa76a5dddef9ec7aeedb6888741b0c" -> "sha256:f702c00c01334ab19cfefce7a9a9433368148e7a126f0890702ccf3a2b29be3a" [label=""];
  "sha256:f702c00c01334ab19cfefce7a9a9433368148e7a126f0890702ccf3a2b29be3a" -> "sha256:c1c07ba1cb10e159026603f3dc226f5be9185327a8eb733d5839850585367438" [label=""];
  "sha256:c1c07ba1cb10e159026603f3dc226f5be9185327a8eb733d5839850585367438" -> "sha256:32095c470e7279b4befc6f25b5a1146ba3ef64b28e46c9504291676d679d66b6" [label=""];
  "sha256:32095c470e7279b4befc6f25b5a1146ba3ef64b28e46c9504291676d679d66b6" -> "sha256:38b1fb4ad0fcd4cf4827d896bb82d727fdca72232b80f0ee20d077c90df92d0d" [label=""];
}

