[app/sources/320768808.Dockerfile]
digraph {
  "sha256:cc9e4d41c2126d53a0bc15c44d31b3304f4241ad65e9e6af444b5985d46dc223" [label="docker-image://docker.io/library/node:8.11.3-slim" shape="ellipse"];
  "sha256:c6adebedafd94df2bdbab26969245c04d8a9e353e1167de976840ee6890bf203" [label="/bin/sh -c npm install -g rpscript" shape="box"];
  "sha256:a761094fa2ce657d9feff099776170054dd8f302d44bc5b9961d6a97c0ea34fa" [label="/bin/sh -c rps install basic" shape="box"];
  "sha256:3d0a41f5242261bd278092dd4d74b63428be48bcb7ab1a52b1439c4fbc12a089" [label="/bin/sh -c echo \"log 'hello world'\" > test.rps" shape="box"];
  "sha256:cdc4b139651f6f1ce1033339c3675e30179b3b521579c50d54cb1afceb98f758" [label="sha256:cdc4b139651f6f1ce1033339c3675e30179b3b521579c50d54cb1afceb98f758" shape="plaintext"];
  "sha256:cc9e4d41c2126d53a0bc15c44d31b3304f4241ad65e9e6af444b5985d46dc223" -> "sha256:c6adebedafd94df2bdbab26969245c04d8a9e353e1167de976840ee6890bf203" [label=""];
  "sha256:c6adebedafd94df2bdbab26969245c04d8a9e353e1167de976840ee6890bf203" -> "sha256:a761094fa2ce657d9feff099776170054dd8f302d44bc5b9961d6a97c0ea34fa" [label=""];
  "sha256:a761094fa2ce657d9feff099776170054dd8f302d44bc5b9961d6a97c0ea34fa" -> "sha256:3d0a41f5242261bd278092dd4d74b63428be48bcb7ab1a52b1439c4fbc12a089" [label=""];
  "sha256:3d0a41f5242261bd278092dd4d74b63428be48bcb7ab1a52b1439c4fbc12a089" -> "sha256:cdc4b139651f6f1ce1033339c3675e30179b3b521579c50d54cb1afceb98f758" [label=""];
}

