[app/sources/260280539.Dockerfile]
digraph {
  "sha256:63ec9f3663b38e06070a4df72c2b7a5a70f5b68f8ca6783fbd38a2c5a3799b80" [label="docker-image://docker.io/jkaralus/druid8s-base:latest" shape="ellipse"];
  "sha256:42d7f772d2a3eb2b46148c7f226cad290e0951fb0caffe676c48c0bb98ec7e22" [label="mkdir{path=/iap-druid/imply-}" shape="note"];
  "sha256:3c759b40748d160145fd71d4b60fb6b900b011b55194566f13f4624cbc1f62fe" [label="sha256:3c759b40748d160145fd71d4b60fb6b900b011b55194566f13f4624cbc1f62fe" shape="plaintext"];
  "sha256:63ec9f3663b38e06070a4df72c2b7a5a70f5b68f8ca6783fbd38a2c5a3799b80" -> "sha256:42d7f772d2a3eb2b46148c7f226cad290e0951fb0caffe676c48c0bb98ec7e22" [label=""];
  "sha256:42d7f772d2a3eb2b46148c7f226cad290e0951fb0caffe676c48c0bb98ec7e22" -> "sha256:3c759b40748d160145fd71d4b60fb6b900b011b55194566f13f4624cbc1f62fe" [label=""];
}

