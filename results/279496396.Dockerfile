[app/sources/279496396.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:706f57dc99f2be6039164fabf2d8fd5a13e6986df3fccd8ae1edafc0d10a65ad" [label="/bin/sh -c mkdir -p ${PARSE_HOME}" shape="box"];
  "sha256:2304225d569a3c6c4a82b63322c73d300e72a28978c298b03a5868ccc4c0a1e9" [label="local://context" shape="ellipse"];
  "sha256:62a7b7306b2958991e50c680a242d80ecf5a2da47e1b0aae1dd6a4b1b7e47521" [label="copy{src=/package.json, dest=/home/node/parse-dashboard}" shape="note"];
  "sha256:72c54e62d5b7b853c59d52313f3e445e829e0a6fc053650260a80fbdd9ff6cd5" [label="copy{src=/config.json, dest=/home/node/parse-dashboard}" shape="note"];
  "sha256:bf136fbe98ecd5e6e7a28281ee0cdf45b48925639aa3534f239fad699d6f2ada" [label="mkdir{path=/home/node/parse-dashboard}" shape="note"];
  "sha256:8a49385e37a5cddd279c9da7e166cfba52d529f368756c482d8670e241073aa1" [label="/bin/sh -c npm install" shape="box"];
  "sha256:2c24510239eadbfe097cf8499a46193ed215645ccf4d64b5b74a6ca7184362cf" [label="sha256:2c24510239eadbfe097cf8499a46193ed215645ccf4d64b5b74a6ca7184362cf" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:706f57dc99f2be6039164fabf2d8fd5a13e6986df3fccd8ae1edafc0d10a65ad" [label=""];
  "sha256:706f57dc99f2be6039164fabf2d8fd5a13e6986df3fccd8ae1edafc0d10a65ad" -> "sha256:62a7b7306b2958991e50c680a242d80ecf5a2da47e1b0aae1dd6a4b1b7e47521" [label=""];
  "sha256:2304225d569a3c6c4a82b63322c73d300e72a28978c298b03a5868ccc4c0a1e9" -> "sha256:62a7b7306b2958991e50c680a242d80ecf5a2da47e1b0aae1dd6a4b1b7e47521" [label=""];
  "sha256:62a7b7306b2958991e50c680a242d80ecf5a2da47e1b0aae1dd6a4b1b7e47521" -> "sha256:72c54e62d5b7b853c59d52313f3e445e829e0a6fc053650260a80fbdd9ff6cd5" [label=""];
  "sha256:2304225d569a3c6c4a82b63322c73d300e72a28978c298b03a5868ccc4c0a1e9" -> "sha256:72c54e62d5b7b853c59d52313f3e445e829e0a6fc053650260a80fbdd9ff6cd5" [label=""];
  "sha256:72c54e62d5b7b853c59d52313f3e445e829e0a6fc053650260a80fbdd9ff6cd5" -> "sha256:bf136fbe98ecd5e6e7a28281ee0cdf45b48925639aa3534f239fad699d6f2ada" [label=""];
  "sha256:bf136fbe98ecd5e6e7a28281ee0cdf45b48925639aa3534f239fad699d6f2ada" -> "sha256:8a49385e37a5cddd279c9da7e166cfba52d529f368756c482d8670e241073aa1" [label=""];
  "sha256:8a49385e37a5cddd279c9da7e166cfba52d529f368756c482d8670e241073aa1" -> "sha256:2c24510239eadbfe097cf8499a46193ed215645ccf4d64b5b74a6ca7184362cf" [label=""];
}

