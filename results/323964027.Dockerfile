[app/sources/323964027.Dockerfile]
digraph {
  "sha256:007ea5910e44a70eb37895b0efe40c4a84b5f6fcc6a8442c64c53e445667ef80" [label="local://context" shape="ellipse"];
  "sha256:e231423e04f1becf0d9b5f160a852a2b2596ed150e82b9d747d698a9782e3888" [label="docker-image://docker.io/frolvlad/alpine-oraclejdk8:slim" shape="ellipse"];
  "sha256:eb7350587e31c67a2a0e10d3abad8a7a766a2074416f7a2c0bfeab816be4a38a" [label="/bin/sh -c sh -c 'touch /app.jar'" shape="box"];
  "sha256:1767626cfbe2b3a1b8b32f6d32139ad33f1983db49eb64725125cabed3a5cce8" [label="/bin/sh -c sh -c \"mkdir -p /opt/app/logs && touch /opt/app/logs/gc.log\"" shape="box"];
  "sha256:7ba977111640239dc686ed9cb81fd62a3839a94208dee90a15da30bdb972109e" [label="mkdir{path=/opt/app}" shape="note"];
  "sha256:1ddaed03575d52aa5ab3f8c3c532614f740e7bd6ca1cc9b9ca554b36d215d889" [label="copy{src=/app.jar, dest=/opt/app/app.jar}" shape="note"];
  "sha256:3cc16bb0dd46e2313b3d125c41b775d79d9fe163800dbd7815f91dc436b26999" [label="sha256:3cc16bb0dd46e2313b3d125c41b775d79d9fe163800dbd7815f91dc436b26999" shape="plaintext"];
  "sha256:e231423e04f1becf0d9b5f160a852a2b2596ed150e82b9d747d698a9782e3888" -> "sha256:eb7350587e31c67a2a0e10d3abad8a7a766a2074416f7a2c0bfeab816be4a38a" [label=""];
  "sha256:eb7350587e31c67a2a0e10d3abad8a7a766a2074416f7a2c0bfeab816be4a38a" -> "sha256:1767626cfbe2b3a1b8b32f6d32139ad33f1983db49eb64725125cabed3a5cce8" [label=""];
  "sha256:1767626cfbe2b3a1b8b32f6d32139ad33f1983db49eb64725125cabed3a5cce8" -> "sha256:7ba977111640239dc686ed9cb81fd62a3839a94208dee90a15da30bdb972109e" [label=""];
  "sha256:7ba977111640239dc686ed9cb81fd62a3839a94208dee90a15da30bdb972109e" -> "sha256:1ddaed03575d52aa5ab3f8c3c532614f740e7bd6ca1cc9b9ca554b36d215d889" [label=""];
  "sha256:007ea5910e44a70eb37895b0efe40c4a84b5f6fcc6a8442c64c53e445667ef80" -> "sha256:1ddaed03575d52aa5ab3f8c3c532614f740e7bd6ca1cc9b9ca554b36d215d889" [label=""];
  "sha256:1ddaed03575d52aa5ab3f8c3c532614f740e7bd6ca1cc9b9ca554b36d215d889" -> "sha256:3cc16bb0dd46e2313b3d125c41b775d79d9fe163800dbd7815f91dc436b26999" [label=""];
}

