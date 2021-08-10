[app/sources/252894347.Dockerfile]
digraph {
  "sha256:4d02577a34c6f82cfebcfc59422583d719474b88486c23c8b3a444aa58176f38" [label="local://context" shape="ellipse"];
  "sha256:d81fd103081d768d53d8d74527a6097481e4cbd0d9316f6b6387b3ff3c8bbd16" [label="docker-image://docker.io/library/python:2-onbuild" shape="ellipse"];
  "sha256:bdef0c6e9ff4e4c0874cc07583180ddc9fda81f6b3479f2f413d9f2f7f98cdb6" [label="copy{src=/config.yaml, dest=/opt/microservices/config.yaml}" shape="note"];
  "sha256:ec485d05a43281be3ccf91cb73915958b78eac14c42d9d16215bd024bf9e9043" [label="copy{src=/.tar.gz, dest=/opt/microservices/}" shape="note"];
  "sha256:7cf856bb6e95658495135993445bd6b646505fd84effc0af41e1ae73a82e33d1" [label="copy{src=/app.py, dest=/opt/microservices/}" shape="note"];
  "sha256:71ee9b23ba479941d4663304a275fedece4080895a2bdd856f42dd7be9cb7b07" [label="mkdir{path=/opt/microservices}" shape="note"];
  "sha256:5ebef4dfe297f1133fe82a47fd526d71aba3f943d93ec636568ff3ccf9328aa6" [label="/bin/sh -c tar -xzf /opt/microservices/${A8_SIDECAR_RELEASE}.tar.gz -C /" shape="box"];
  "sha256:e5d281aed168f9df4936b48a394ab99ceb2370ae841d13454661fd8b98132ab9" [label="sha256:e5d281aed168f9df4936b48a394ab99ceb2370ae841d13454661fd8b98132ab9" shape="plaintext"];
  "sha256:d81fd103081d768d53d8d74527a6097481e4cbd0d9316f6b6387b3ff3c8bbd16" -> "sha256:bdef0c6e9ff4e4c0874cc07583180ddc9fda81f6b3479f2f413d9f2f7f98cdb6" [label=""];
  "sha256:4d02577a34c6f82cfebcfc59422583d719474b88486c23c8b3a444aa58176f38" -> "sha256:bdef0c6e9ff4e4c0874cc07583180ddc9fda81f6b3479f2f413d9f2f7f98cdb6" [label=""];
  "sha256:bdef0c6e9ff4e4c0874cc07583180ddc9fda81f6b3479f2f413d9f2f7f98cdb6" -> "sha256:ec485d05a43281be3ccf91cb73915958b78eac14c42d9d16215bd024bf9e9043" [label=""];
  "sha256:4d02577a34c6f82cfebcfc59422583d719474b88486c23c8b3a444aa58176f38" -> "sha256:ec485d05a43281be3ccf91cb73915958b78eac14c42d9d16215bd024bf9e9043" [label=""];
  "sha256:ec485d05a43281be3ccf91cb73915958b78eac14c42d9d16215bd024bf9e9043" -> "sha256:7cf856bb6e95658495135993445bd6b646505fd84effc0af41e1ae73a82e33d1" [label=""];
  "sha256:4d02577a34c6f82cfebcfc59422583d719474b88486c23c8b3a444aa58176f38" -> "sha256:7cf856bb6e95658495135993445bd6b646505fd84effc0af41e1ae73a82e33d1" [label=""];
  "sha256:7cf856bb6e95658495135993445bd6b646505fd84effc0af41e1ae73a82e33d1" -> "sha256:71ee9b23ba479941d4663304a275fedece4080895a2bdd856f42dd7be9cb7b07" [label=""];
  "sha256:71ee9b23ba479941d4663304a275fedece4080895a2bdd856f42dd7be9cb7b07" -> "sha256:5ebef4dfe297f1133fe82a47fd526d71aba3f943d93ec636568ff3ccf9328aa6" [label=""];
  "sha256:5ebef4dfe297f1133fe82a47fd526d71aba3f943d93ec636568ff3ccf9328aa6" -> "sha256:e5d281aed168f9df4936b48a394ab99ceb2370ae841d13454661fd8b98132ab9" [label=""];
}

