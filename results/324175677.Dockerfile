[app/sources/324175677.Dockerfile]
digraph {
  "sha256:e2d2429f3e5c57ad16ec5a816c5ae0e0143a9c9bce78b31548a5e41cb5566e62" [label="local://context" shape="ellipse"];
  "sha256:e231423e04f1becf0d9b5f160a852a2b2596ed150e82b9d747d698a9782e3888" [label="docker-image://docker.io/frolvlad/alpine-oraclejdk8:slim" shape="ellipse"];
  "sha256:eb7350587e31c67a2a0e10d3abad8a7a766a2074416f7a2c0bfeab816be4a38a" [label="/bin/sh -c sh -c 'touch /app.jar'" shape="box"];
  "sha256:1767626cfbe2b3a1b8b32f6d32139ad33f1983db49eb64725125cabed3a5cce8" [label="/bin/sh -c sh -c \"mkdir -p /opt/app/logs && touch /opt/app/logs/gc.log\"" shape="box"];
  "sha256:7ba977111640239dc686ed9cb81fd62a3839a94208dee90a15da30bdb972109e" [label="mkdir{path=/opt/app}" shape="note"];
  "sha256:76b7d3b34bb89f89a9f1631e1af9a08f3c4a8db30a8b3f8d405f8a4e4bc636a5" [label="copy{src=/app.jar, dest=/opt/app/app.jar}" shape="note"];
  "sha256:6c3044ce650738faa5e76789ae8a3e2fd3df00e561f3b63f783684de05b5e43e" [label="sha256:6c3044ce650738faa5e76789ae8a3e2fd3df00e561f3b63f783684de05b5e43e" shape="plaintext"];
  "sha256:e231423e04f1becf0d9b5f160a852a2b2596ed150e82b9d747d698a9782e3888" -> "sha256:eb7350587e31c67a2a0e10d3abad8a7a766a2074416f7a2c0bfeab816be4a38a" [label=""];
  "sha256:eb7350587e31c67a2a0e10d3abad8a7a766a2074416f7a2c0bfeab816be4a38a" -> "sha256:1767626cfbe2b3a1b8b32f6d32139ad33f1983db49eb64725125cabed3a5cce8" [label=""];
  "sha256:1767626cfbe2b3a1b8b32f6d32139ad33f1983db49eb64725125cabed3a5cce8" -> "sha256:7ba977111640239dc686ed9cb81fd62a3839a94208dee90a15da30bdb972109e" [label=""];
  "sha256:7ba977111640239dc686ed9cb81fd62a3839a94208dee90a15da30bdb972109e" -> "sha256:76b7d3b34bb89f89a9f1631e1af9a08f3c4a8db30a8b3f8d405f8a4e4bc636a5" [label=""];
  "sha256:e2d2429f3e5c57ad16ec5a816c5ae0e0143a9c9bce78b31548a5e41cb5566e62" -> "sha256:76b7d3b34bb89f89a9f1631e1af9a08f3c4a8db30a8b3f8d405f8a4e4bc636a5" [label=""];
  "sha256:76b7d3b34bb89f89a9f1631e1af9a08f3c4a8db30a8b3f8d405f8a4e4bc636a5" -> "sha256:6c3044ce650738faa5e76789ae8a3e2fd3df00e561f3b63f783684de05b5e43e" [label=""];
}

