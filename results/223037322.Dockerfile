[app/sources/223037322.Dockerfile]
digraph {
  "sha256:821a1a5ab2629c460561810213e4bad74e45c22f075992b126364420cd54cf12" [label="docker-image://docker.io/library/node:wheezy" shape="ellipse"];
  "sha256:e06937bb88996beb3acd37bed686bfa18500124bd9374c1f567446d55caf75a9" [label="/bin/sh -c npm install pm2 -g" shape="box"];
  "sha256:bc46936d8dc5c42b77e32f01a980bb74d13ea964e2b4e846f4d0bbf463612e0f" [label="sha256:bc46936d8dc5c42b77e32f01a980bb74d13ea964e2b4e846f4d0bbf463612e0f" shape="plaintext"];
  "sha256:821a1a5ab2629c460561810213e4bad74e45c22f075992b126364420cd54cf12" -> "sha256:e06937bb88996beb3acd37bed686bfa18500124bd9374c1f567446d55caf75a9" [label=""];
  "sha256:e06937bb88996beb3acd37bed686bfa18500124bd9374c1f567446d55caf75a9" -> "sha256:bc46936d8dc5c42b77e32f01a980bb74d13ea964e2b4e846f4d0bbf463612e0f" [label=""];
}

