[app/sources/215933628.Dockerfile]
digraph {
  "sha256:d48ba2952af994001a74fb6cd83686de04130cf5ceafa11c871dc60d5279832a" [label="local://context" shape="ellipse"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:dd53ae4fbb3a1f162dd635546a7c96e0c585e753fb8f7b8d5b8787c57408f042" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:65b6b77eb95f8a2a31364956631d9379193271845d9b3fe1d75b0cff6678ad18" [label="/bin/sh -c npm install --global babel-cli" shape="box"];
  "sha256:d1868e2c7fe515ee18aa08e63f56180e272cac046e1a1eb12753ec4edeabaf91" [label="/bin/sh -c npm install --save-dev babel-core babel-preset-es2015" shape="box"];
  "sha256:4599891d0c74ca7e9da41a71282d465bc3c1ede1a6e0bc962154caf9e8ff1f0a" [label="/bin/sh -c npm install" shape="box"];
  "sha256:671e411e0126267596f4e3cc248a1b5710fb7b806f5cd01a66c61afa4d6cb8c4" [label="/bin/sh -c npm run transpile" shape="box"];
  "sha256:9876a1d44d78b4e72d9fa698edf6268b77f016b0c6807f67d56ba0cc9e259000" [label="mkdir{path=/app}" shape="note"];
  "sha256:960f36982cf5fa14a530aa21cfe9eede5967b6b1bcedbee22aed6177bb6feb83" [label="sha256:960f36982cf5fa14a530aa21cfe9eede5967b6b1bcedbee22aed6177bb6feb83" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:dd53ae4fbb3a1f162dd635546a7c96e0c585e753fb8f7b8d5b8787c57408f042" [label=""];
  "sha256:d48ba2952af994001a74fb6cd83686de04130cf5ceafa11c871dc60d5279832a" -> "sha256:dd53ae4fbb3a1f162dd635546a7c96e0c585e753fb8f7b8d5b8787c57408f042" [label=""];
  "sha256:dd53ae4fbb3a1f162dd635546a7c96e0c585e753fb8f7b8d5b8787c57408f042" -> "sha256:65b6b77eb95f8a2a31364956631d9379193271845d9b3fe1d75b0cff6678ad18" [label=""];
  "sha256:65b6b77eb95f8a2a31364956631d9379193271845d9b3fe1d75b0cff6678ad18" -> "sha256:d1868e2c7fe515ee18aa08e63f56180e272cac046e1a1eb12753ec4edeabaf91" [label=""];
  "sha256:d1868e2c7fe515ee18aa08e63f56180e272cac046e1a1eb12753ec4edeabaf91" -> "sha256:4599891d0c74ca7e9da41a71282d465bc3c1ede1a6e0bc962154caf9e8ff1f0a" [label=""];
  "sha256:4599891d0c74ca7e9da41a71282d465bc3c1ede1a6e0bc962154caf9e8ff1f0a" -> "sha256:671e411e0126267596f4e3cc248a1b5710fb7b806f5cd01a66c61afa4d6cb8c4" [label=""];
  "sha256:671e411e0126267596f4e3cc248a1b5710fb7b806f5cd01a66c61afa4d6cb8c4" -> "sha256:9876a1d44d78b4e72d9fa698edf6268b77f016b0c6807f67d56ba0cc9e259000" [label=""];
  "sha256:9876a1d44d78b4e72d9fa698edf6268b77f016b0c6807f67d56ba0cc9e259000" -> "sha256:960f36982cf5fa14a530aa21cfe9eede5967b6b1bcedbee22aed6177bb6feb83" [label=""];
}

