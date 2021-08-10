[app/sources/327112602.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:42f2dd021db943d47766419a7e58ac4bd9e993c8b83a2baa90a6c6a320e24820" [label="local://context" shape="ellipse"];
  "sha256:efb0e5f91b51c90bce61036f2ee1d7f58d03a1f67370650f70401d8b3c67c41c" [label="copy{src=/nginx/default.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" [label="docker-image://docker.io/library/node:alpine" shape="ellipse"];
  "sha256:042c1d4ddcb71c3cec897b3d03f1f57ec51fb1257dcde65bd8988d0acbfc7790" [label="mkdir{path=/app}" shape="note"];
  "sha256:bbfc84642811ebc7e59b83475eb8326403a7ebfca6ba319b0d6a1eb4acd26d5b" [label="copy{src=/package.json, dest=/app/}" shape="note"];
  "sha256:f665bcc9be0b7e5ae7a485beb5ea8dae2a42a677ae9d170f0b8035aa4fc37fc7" [label="/bin/sh -c npm install" shape="box"];
  "sha256:c74a0e042cf44180747847ba37083f931bfeb83271bd6d62af84d55e853eed02" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:fae17d8f57b8a66590e5fc5c72f775e611b821cc40b1c1eeb0e4aef228c1a889" [label="/bin/sh -c npm run build" shape="box"];
  "sha256:007d563cec4e5c296d94876df58f82cc9582339c03c2de7826cb185cfbea2c4a" [label="copy{src=/app/build, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:cd0146780c0494b16dda9d2221ad72ebd3ebf57071ceee1fcde91519f58c4509" [label="sha256:cd0146780c0494b16dda9d2221ad72ebd3ebf57071ceee1fcde91519f58c4509" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:efb0e5f91b51c90bce61036f2ee1d7f58d03a1f67370650f70401d8b3c67c41c" [label=""];
  "sha256:42f2dd021db943d47766419a7e58ac4bd9e993c8b83a2baa90a6c6a320e24820" -> "sha256:efb0e5f91b51c90bce61036f2ee1d7f58d03a1f67370650f70401d8b3c67c41c" [label=""];
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" -> "sha256:042c1d4ddcb71c3cec897b3d03f1f57ec51fb1257dcde65bd8988d0acbfc7790" [label=""];
  "sha256:042c1d4ddcb71c3cec897b3d03f1f57ec51fb1257dcde65bd8988d0acbfc7790" -> "sha256:bbfc84642811ebc7e59b83475eb8326403a7ebfca6ba319b0d6a1eb4acd26d5b" [label=""];
  "sha256:42f2dd021db943d47766419a7e58ac4bd9e993c8b83a2baa90a6c6a320e24820" -> "sha256:bbfc84642811ebc7e59b83475eb8326403a7ebfca6ba319b0d6a1eb4acd26d5b" [label=""];
  "sha256:bbfc84642811ebc7e59b83475eb8326403a7ebfca6ba319b0d6a1eb4acd26d5b" -> "sha256:f665bcc9be0b7e5ae7a485beb5ea8dae2a42a677ae9d170f0b8035aa4fc37fc7" [label=""];
  "sha256:f665bcc9be0b7e5ae7a485beb5ea8dae2a42a677ae9d170f0b8035aa4fc37fc7" -> "sha256:c74a0e042cf44180747847ba37083f931bfeb83271bd6d62af84d55e853eed02" [label=""];
  "sha256:42f2dd021db943d47766419a7e58ac4bd9e993c8b83a2baa90a6c6a320e24820" -> "sha256:c74a0e042cf44180747847ba37083f931bfeb83271bd6d62af84d55e853eed02" [label=""];
  "sha256:c74a0e042cf44180747847ba37083f931bfeb83271bd6d62af84d55e853eed02" -> "sha256:fae17d8f57b8a66590e5fc5c72f775e611b821cc40b1c1eeb0e4aef228c1a889" [label=""];
  "sha256:efb0e5f91b51c90bce61036f2ee1d7f58d03a1f67370650f70401d8b3c67c41c" -> "sha256:007d563cec4e5c296d94876df58f82cc9582339c03c2de7826cb185cfbea2c4a" [label=""];
  "sha256:fae17d8f57b8a66590e5fc5c72f775e611b821cc40b1c1eeb0e4aef228c1a889" -> "sha256:007d563cec4e5c296d94876df58f82cc9582339c03c2de7826cb185cfbea2c4a" [label=""];
  "sha256:007d563cec4e5c296d94876df58f82cc9582339c03c2de7826cb185cfbea2c4a" -> "sha256:cd0146780c0494b16dda9d2221ad72ebd3ebf57071ceee1fcde91519f58c4509" [label=""];
}

