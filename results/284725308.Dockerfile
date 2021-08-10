[app/sources/284725308.Dockerfile]
digraph {
  "sha256:ac58a1c3cf19058a8cfd43d80bc4f46b5f9089b0233a2f57cd5dd0313d751290" [label="local://context" shape="ellipse"];
  "sha256:5209ccff149f0c16b216eba6b769679c7d0d4a29e7e81e2d31b790adc6fd7770" [label="docker-image://docker.io/fxleb/nuxeo-keendo:7.10" shape="ellipse"];
  "sha256:57bbe506e05eec861748e3d74cb4f96ec7616823c02998518d95c685d2fe13b1" [label="copy{src=/nuxeo.conf, dest=/nuxeo.conf}" shape="note"];
  "sha256:aba06d4955ba128a02eecf7ac0211e091150e219cdb7403a6d83ff0ec36c7ff3" [label="sha256:aba06d4955ba128a02eecf7ac0211e091150e219cdb7403a6d83ff0ec36c7ff3" shape="plaintext"];
  "sha256:5209ccff149f0c16b216eba6b769679c7d0d4a29e7e81e2d31b790adc6fd7770" -> "sha256:57bbe506e05eec861748e3d74cb4f96ec7616823c02998518d95c685d2fe13b1" [label=""];
  "sha256:ac58a1c3cf19058a8cfd43d80bc4f46b5f9089b0233a2f57cd5dd0313d751290" -> "sha256:57bbe506e05eec861748e3d74cb4f96ec7616823c02998518d95c685d2fe13b1" [label=""];
  "sha256:57bbe506e05eec861748e3d74cb4f96ec7616823c02998518d95c685d2fe13b1" -> "sha256:aba06d4955ba128a02eecf7ac0211e091150e219cdb7403a6d83ff0ec36c7ff3" [label=""];
}

