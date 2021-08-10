[app/sources/356503880.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:2b9edaa868863a68aed4983658464933ff85465fa8a5e2866e45adaa2704488f" [label="local://context" shape="ellipse"];
  "sha256:7a63d7721a5801b27842005806c591fb5e82650039a68682887a90b00db3123e" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:cc8c55d3faab5f5e539e5ab5057a7b490f0b60f73eaaf8615dd70f8730404efa" [label="/bin/sh -c cd api && npm install" shape="box"];
  "sha256:9eb90b9b6844970f6b51fa4d819337b0a80a11593a6457acf929335945b92c71" [label="sha256:9eb90b9b6844970f6b51fa4d819337b0a80a11593a6457acf929335945b92c71" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:7a63d7721a5801b27842005806c591fb5e82650039a68682887a90b00db3123e" [label=""];
  "sha256:2b9edaa868863a68aed4983658464933ff85465fa8a5e2866e45adaa2704488f" -> "sha256:7a63d7721a5801b27842005806c591fb5e82650039a68682887a90b00db3123e" [label=""];
  "sha256:7a63d7721a5801b27842005806c591fb5e82650039a68682887a90b00db3123e" -> "sha256:cc8c55d3faab5f5e539e5ab5057a7b490f0b60f73eaaf8615dd70f8730404efa" [label=""];
  "sha256:cc8c55d3faab5f5e539e5ab5057a7b490f0b60f73eaaf8615dd70f8730404efa" -> "sha256:9eb90b9b6844970f6b51fa4d819337b0a80a11593a6457acf929335945b92c71" [label=""];
}

