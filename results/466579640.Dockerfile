[app/sources/466579640.Dockerfile]
digraph {
  "sha256:d25947319d17c95d1d7407131a4a723f360ac161e5ea27902b28f4a72163c26b" [label="docker-image://docker.io/library/python:3.5-slim" shape="ellipse"];
  "sha256:31a2593a0b6e86144207488e3af7a69a169f50d3e413338f58d637e5d80b4247" [label="mkdir{path=/app}" shape="note"];
  "sha256:9d371ce58c5fe86304615b3148d57117f59a371cb7bd1ba87a12dc9f847c80d6" [label="local://context" shape="ellipse"];
  "sha256:73ad036f931fc02ced61907338d04bcfa584d8924c3384e7b990be66c163babe" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:2a0e2c58c63e4b933f1c66017dfa7779531e4d431561c6ca86a6e52eafa5db22" [label="/bin/sh -c pip install --trusted-host pypi.python.org -r requirements.txt" shape="box"];
  "sha256:8e8891a17b93ce9e0c4ee60dceb2e1c21e2d9a570a5ce8936a4fce78a2610a06" [label="sha256:8e8891a17b93ce9e0c4ee60dceb2e1c21e2d9a570a5ce8936a4fce78a2610a06" shape="plaintext"];
  "sha256:d25947319d17c95d1d7407131a4a723f360ac161e5ea27902b28f4a72163c26b" -> "sha256:31a2593a0b6e86144207488e3af7a69a169f50d3e413338f58d637e5d80b4247" [label=""];
  "sha256:31a2593a0b6e86144207488e3af7a69a169f50d3e413338f58d637e5d80b4247" -> "sha256:73ad036f931fc02ced61907338d04bcfa584d8924c3384e7b990be66c163babe" [label=""];
  "sha256:9d371ce58c5fe86304615b3148d57117f59a371cb7bd1ba87a12dc9f847c80d6" -> "sha256:73ad036f931fc02ced61907338d04bcfa584d8924c3384e7b990be66c163babe" [label=""];
  "sha256:73ad036f931fc02ced61907338d04bcfa584d8924c3384e7b990be66c163babe" -> "sha256:2a0e2c58c63e4b933f1c66017dfa7779531e4d431561c6ca86a6e52eafa5db22" [label=""];
  "sha256:2a0e2c58c63e4b933f1c66017dfa7779531e4d431561c6ca86a6e52eafa5db22" -> "sha256:8e8891a17b93ce9e0c4ee60dceb2e1c21e2d9a570a5ce8936a4fce78a2610a06" [label=""];
}

