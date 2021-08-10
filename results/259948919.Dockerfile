[app/sources/259948919.Dockerfile]
digraph {
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" [label="docker-image://docker.io/library/node:10-alpine" shape="ellipse"];
  "sha256:2229accbb31d5b13f6b1276059196875001abadfc8bae73d4991a03fee391e34" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:8b70ddc4b6e2c9e83656a53a66cf04b4d2cc92970fd01749180d33571f9b1470" [label="local://context" shape="ellipse"];
  "sha256:abcda85ab2587736920b48151b30702f8cc87230beebff74a5997ef10a0aab9b" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:54880e33cca7bb9741ba51ad194e930091e8437d40e93291dfdb58b4820291ac" [label="/bin/sh -c npm install && npm run build" shape="box"];
  "sha256:839b25d2ad1c4320f72e4ad6ea106e5ee359fd2486689dcbab926c30ebaf9d0a" [label="sha256:839b25d2ad1c4320f72e4ad6ea106e5ee359fd2486689dcbab926c30ebaf9d0a" shape="plaintext"];
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" -> "sha256:2229accbb31d5b13f6b1276059196875001abadfc8bae73d4991a03fee391e34" [label=""];
  "sha256:2229accbb31d5b13f6b1276059196875001abadfc8bae73d4991a03fee391e34" -> "sha256:abcda85ab2587736920b48151b30702f8cc87230beebff74a5997ef10a0aab9b" [label=""];
  "sha256:8b70ddc4b6e2c9e83656a53a66cf04b4d2cc92970fd01749180d33571f9b1470" -> "sha256:abcda85ab2587736920b48151b30702f8cc87230beebff74a5997ef10a0aab9b" [label=""];
  "sha256:abcda85ab2587736920b48151b30702f8cc87230beebff74a5997ef10a0aab9b" -> "sha256:54880e33cca7bb9741ba51ad194e930091e8437d40e93291dfdb58b4820291ac" [label=""];
  "sha256:54880e33cca7bb9741ba51ad194e930091e8437d40e93291dfdb58b4820291ac" -> "sha256:839b25d2ad1c4320f72e4ad6ea106e5ee359fd2486689dcbab926c30ebaf9d0a" [label=""];
}

