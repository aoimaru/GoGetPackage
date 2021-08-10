[app/sources/252782349.Dockerfile]
digraph {
  "sha256:7c2a98c8c296659d79ed9833ff47b7be9c7203141512e283a8487a0f1fb909f9" [label="docker-image://docker.io/mhart/alpine-node:6.9.4" shape="ellipse"];
  "sha256:a890bdf7e5471f87d842d0fb91b4b080140593a5ada35f5a1527470bddef4fa8" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:b8127e86d62d7bf9a77ddae3511218491b5bb10bf97839bc27fb105754260d3a" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:6b3d2f4853e9daaea5af9d0a47be9450e48cca9c1a165699329e3f99b254941d" [label="local://context" shape="ellipse"];
  "sha256:6eacfadfa647fd2be642acbb7b7edb142eaa711888ca840f3c6f0b92ac16d69a" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:de01e1fb9470892c872dbb1b3550477f58ff923c93f725ba0058eebba9ff276a" [label="/bin/sh -c npm install && npm install pm2 -g" shape="box"];
  "sha256:7a708c2cd05c3ca0cea424ef922feff028db6a8965bc51c261c8c69652f0fdb4" [label="sha256:7a708c2cd05c3ca0cea424ef922feff028db6a8965bc51c261c8c69652f0fdb4" shape="plaintext"];
  "sha256:7c2a98c8c296659d79ed9833ff47b7be9c7203141512e283a8487a0f1fb909f9" -> "sha256:a890bdf7e5471f87d842d0fb91b4b080140593a5ada35f5a1527470bddef4fa8" [label=""];
  "sha256:a890bdf7e5471f87d842d0fb91b4b080140593a5ada35f5a1527470bddef4fa8" -> "sha256:b8127e86d62d7bf9a77ddae3511218491b5bb10bf97839bc27fb105754260d3a" [label=""];
  "sha256:b8127e86d62d7bf9a77ddae3511218491b5bb10bf97839bc27fb105754260d3a" -> "sha256:6eacfadfa647fd2be642acbb7b7edb142eaa711888ca840f3c6f0b92ac16d69a" [label=""];
  "sha256:6b3d2f4853e9daaea5af9d0a47be9450e48cca9c1a165699329e3f99b254941d" -> "sha256:6eacfadfa647fd2be642acbb7b7edb142eaa711888ca840f3c6f0b92ac16d69a" [label=""];
  "sha256:6eacfadfa647fd2be642acbb7b7edb142eaa711888ca840f3c6f0b92ac16d69a" -> "sha256:de01e1fb9470892c872dbb1b3550477f58ff923c93f725ba0058eebba9ff276a" [label=""];
  "sha256:de01e1fb9470892c872dbb1b3550477f58ff923c93f725ba0058eebba9ff276a" -> "sha256:7a708c2cd05c3ca0cea424ef922feff028db6a8965bc51c261c8c69652f0fdb4" [label=""];
}

