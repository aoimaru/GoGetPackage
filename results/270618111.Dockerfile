[app/sources/270618111.Dockerfile]
digraph {
  "sha256:07c7ab6b0feaae8d7b19505eaa124f1cbc7cf52ddb48bfa1bae346d678575594" [label="docker-image://docker.io/library/node:slim" shape="ellipse"];
  "sha256:14a971959d72ef2f335c75af10cbf0171408beee22d67289d018a3c941b86071" [label="/bin/sh -c mkdir -p /home/node/service" shape="box"];
  "sha256:4c17cdd16e7d0fe55d2a7f5937d3cd194876fe98c99800cfd2a8f015f97644ac" [label="mkdir{path=/home/node/service}" shape="note"];
  "sha256:422e3a9563fa1c2bd5eea5e0208637e3cb72041fb5f771951080d243ae8e197d" [label="local://context" shape="ellipse"];
  "sha256:d5748f002ac27bdd75988d5afcb101add0ebbbfaf59fa3afca3ef751f2282964" [label="copy{src=/package.json, dest=/home/node/service}" shape="note"];
  "sha256:f70dc1da7c2e05695bd89e76c613be9d76cad1f5caab22d02ad39b59e46cee1c" [label="/bin/sh -c npm install" shape="box"];
  "sha256:c37336533be42dc2086daf68d1b0091042b042d228239a7aee9be09a6241d6b2" [label="copy{src=/, dest=/home/node/service}" shape="note"];
  "sha256:7609b8c86aaed4311de172b808b925ab2e9c1f5a599772dd24c4e4863e8ffb7d" [label="sha256:7609b8c86aaed4311de172b808b925ab2e9c1f5a599772dd24c4e4863e8ffb7d" shape="plaintext"];
  "sha256:07c7ab6b0feaae8d7b19505eaa124f1cbc7cf52ddb48bfa1bae346d678575594" -> "sha256:14a971959d72ef2f335c75af10cbf0171408beee22d67289d018a3c941b86071" [label=""];
  "sha256:14a971959d72ef2f335c75af10cbf0171408beee22d67289d018a3c941b86071" -> "sha256:4c17cdd16e7d0fe55d2a7f5937d3cd194876fe98c99800cfd2a8f015f97644ac" [label=""];
  "sha256:4c17cdd16e7d0fe55d2a7f5937d3cd194876fe98c99800cfd2a8f015f97644ac" -> "sha256:d5748f002ac27bdd75988d5afcb101add0ebbbfaf59fa3afca3ef751f2282964" [label=""];
  "sha256:422e3a9563fa1c2bd5eea5e0208637e3cb72041fb5f771951080d243ae8e197d" -> "sha256:d5748f002ac27bdd75988d5afcb101add0ebbbfaf59fa3afca3ef751f2282964" [label=""];
  "sha256:d5748f002ac27bdd75988d5afcb101add0ebbbfaf59fa3afca3ef751f2282964" -> "sha256:f70dc1da7c2e05695bd89e76c613be9d76cad1f5caab22d02ad39b59e46cee1c" [label=""];
  "sha256:f70dc1da7c2e05695bd89e76c613be9d76cad1f5caab22d02ad39b59e46cee1c" -> "sha256:c37336533be42dc2086daf68d1b0091042b042d228239a7aee9be09a6241d6b2" [label=""];
  "sha256:422e3a9563fa1c2bd5eea5e0208637e3cb72041fb5f771951080d243ae8e197d" -> "sha256:c37336533be42dc2086daf68d1b0091042b042d228239a7aee9be09a6241d6b2" [label=""];
  "sha256:c37336533be42dc2086daf68d1b0091042b042d228239a7aee9be09a6241d6b2" -> "sha256:7609b8c86aaed4311de172b808b925ab2e9c1f5a599772dd24c4e4863e8ffb7d" [label=""];
}

