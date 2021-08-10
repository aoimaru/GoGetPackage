[app/sources/252785678.Dockerfile]
digraph {
  "sha256:efb3676e74ba68edc1ba2e60a7b182bac14c183c69c5a9c2f18594bc6e786acf" [label="docker-image://docker.io/mhart/alpine-node:6.2.2" shape="ellipse"];
  "sha256:4f96f3a17c5ce81d3f7da3176572befe0aeed9fd7659fab2294e5a4fab753af9" [label="mkdir{path=/src}" shape="note"];
  "sha256:4ad03c329cfaebe673b008bbefbcd96f518ab6c8a8c71718ae231cb76cc3c2c8" [label="/bin/sh -c apk add --update build-base autoconf automake file nasm libpng-dev python bash git && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:184b3e9a5141404f29d5447dd5d577447aa20aa5defdf541167f20481d52d301" [label="local://context" shape="ellipse"];
  "sha256:dcd78a64154606a53a1a47ece35c29a6b9aec2cf558dd23d22ff45f6e6b1ea88" [label="copy{src=/package.json, dest=/src/package.json}" shape="note"];
  "sha256:d3edb9a6c001c39b64a516c0c1c9b093f5181a4af9039e7f327b9063990c5b00" [label="/bin/sh -c npm install -g gulp" shape="box"];
  "sha256:7ff1a26cf8a902bfedb7946a6d14b4da6f07782f2cd4e402746d612d0153de51" [label="/bin/sh -c npm install --production" shape="box"];
  "sha256:fd0f9a841049ea7185baf9dca5e84b3d7c74c20b1b2a35479653213ec37045a1" [label="copy{src=/index.js, dest=/src}" shape="note"];
  "sha256:d807a0b0a7c13f02696990eeb0c23bfe1ff8815358da24fa47ea5d46b044c2bb" [label="copy{src=/conf, dest=/src/conf}" shape="note"];
  "sha256:2244ae58b58a7d0f4a7af2c80cae345304bb2abf993653e845046f2ab8ec1538" [label="copy{src=/lib, dest=/src/lib}" shape="note"];
  "sha256:d02920871cbae253eaa0c364507b36b54a8ddc1232bd5a54e2a9f43713a2cbe6" [label="sha256:d02920871cbae253eaa0c364507b36b54a8ddc1232bd5a54e2a9f43713a2cbe6" shape="plaintext"];
  "sha256:efb3676e74ba68edc1ba2e60a7b182bac14c183c69c5a9c2f18594bc6e786acf" -> "sha256:4f96f3a17c5ce81d3f7da3176572befe0aeed9fd7659fab2294e5a4fab753af9" [label=""];
  "sha256:4f96f3a17c5ce81d3f7da3176572befe0aeed9fd7659fab2294e5a4fab753af9" -> "sha256:4ad03c329cfaebe673b008bbefbcd96f518ab6c8a8c71718ae231cb76cc3c2c8" [label=""];
  "sha256:4ad03c329cfaebe673b008bbefbcd96f518ab6c8a8c71718ae231cb76cc3c2c8" -> "sha256:dcd78a64154606a53a1a47ece35c29a6b9aec2cf558dd23d22ff45f6e6b1ea88" [label=""];
  "sha256:184b3e9a5141404f29d5447dd5d577447aa20aa5defdf541167f20481d52d301" -> "sha256:dcd78a64154606a53a1a47ece35c29a6b9aec2cf558dd23d22ff45f6e6b1ea88" [label=""];
  "sha256:dcd78a64154606a53a1a47ece35c29a6b9aec2cf558dd23d22ff45f6e6b1ea88" -> "sha256:d3edb9a6c001c39b64a516c0c1c9b093f5181a4af9039e7f327b9063990c5b00" [label=""];
  "sha256:d3edb9a6c001c39b64a516c0c1c9b093f5181a4af9039e7f327b9063990c5b00" -> "sha256:7ff1a26cf8a902bfedb7946a6d14b4da6f07782f2cd4e402746d612d0153de51" [label=""];
  "sha256:7ff1a26cf8a902bfedb7946a6d14b4da6f07782f2cd4e402746d612d0153de51" -> "sha256:fd0f9a841049ea7185baf9dca5e84b3d7c74c20b1b2a35479653213ec37045a1" [label=""];
  "sha256:184b3e9a5141404f29d5447dd5d577447aa20aa5defdf541167f20481d52d301" -> "sha256:fd0f9a841049ea7185baf9dca5e84b3d7c74c20b1b2a35479653213ec37045a1" [label=""];
  "sha256:fd0f9a841049ea7185baf9dca5e84b3d7c74c20b1b2a35479653213ec37045a1" -> "sha256:d807a0b0a7c13f02696990eeb0c23bfe1ff8815358da24fa47ea5d46b044c2bb" [label=""];
  "sha256:184b3e9a5141404f29d5447dd5d577447aa20aa5defdf541167f20481d52d301" -> "sha256:d807a0b0a7c13f02696990eeb0c23bfe1ff8815358da24fa47ea5d46b044c2bb" [label=""];
  "sha256:d807a0b0a7c13f02696990eeb0c23bfe1ff8815358da24fa47ea5d46b044c2bb" -> "sha256:2244ae58b58a7d0f4a7af2c80cae345304bb2abf993653e845046f2ab8ec1538" [label=""];
  "sha256:184b3e9a5141404f29d5447dd5d577447aa20aa5defdf541167f20481d52d301" -> "sha256:2244ae58b58a7d0f4a7af2c80cae345304bb2abf993653e845046f2ab8ec1538" [label=""];
  "sha256:2244ae58b58a7d0f4a7af2c80cae345304bb2abf993653e845046f2ab8ec1538" -> "sha256:d02920871cbae253eaa0c364507b36b54a8ddc1232bd5a54e2a9f43713a2cbe6" [label=""];
}

