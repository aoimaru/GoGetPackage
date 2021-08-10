[app/sources/387999248.Dockerfile]
digraph {
  "sha256:dcb539ba9d1f72fffbf18d29567a388fab862712efe7ce07fcea030d4f39e6c5" [label="local://context" shape="ellipse"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:67f8f7f67a6ab9937af78f8382981fbaf235b459d275d5bb0316b218b21d9707" [label="/bin/sh -c apk add --no-cache task ruby python  && apk add --no-cache --virtual .build-dependencies             ruby-dev             make             g++" shape="box"];
  "sha256:011126307085fc6413b87e3e4e1f23e807dc4ef7abbe74ddca1a2af0a842ca32" [label="copy{src=/docker/.taskrc, dest=/root/.taskrc}" shape="note"];
  "sha256:3f615edf4d56d7c17708b4379baffc6aa3a7b1fa4299833881f5d233bd532585" [label="copy{src=/lib, dest=/opt/app/lib}" shape="note"];
  "sha256:84b179f566321f0f9c502f08f26709e8bfa4b7190001ec1ea4d13ba47626d48a" [label="copy{src=/bin, dest=/opt/app/bin}" shape="note"];
  "sha256:744c47e9c46766c4e4234e1f9e52121090c2203877431cff1612bbcbacbc3cf9" [label="copy{src=/taskwarrior-web.gemspec, dest=/opt/app/},copy{src=/LICENSE, dest=/opt/app/},copy{src=/README.md, dest=/opt/app/}" shape="note"];
  "sha256:806d97477d9673c61b1a1f8a2bb0e1125c8dffc3f0bcad8dc4e26e096cdbdcc0" [label="mkdir{path=/opt/app}" shape="note"];
  "sha256:9ae7fa51cd5883ddc9ece23110b27b5c0a18ff999e6ec49955130d7b7f1a68fd" [label="/bin/sh -c GEM=$(gem build taskwarrior-web.gemspec | awk '/File: .*/{ print $2 }')  && gem install ${GEM} --no-document" shape="box"];
  "sha256:646d1a3a6f76ca3f5ac7aec61134f78b77b7c0432cce5068b2ae338f6b813996" [label="/bin/sh -c apk del --no-cache .build-dependencies" shape="box"];
  "sha256:90e9e078fa9b85d101cd2e3079878c16c0538fbeb4d98a880b4c01d67a827c6a" [label="sha256:90e9e078fa9b85d101cd2e3079878c16c0538fbeb4d98a880b4c01d67a827c6a" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:67f8f7f67a6ab9937af78f8382981fbaf235b459d275d5bb0316b218b21d9707" [label=""];
  "sha256:67f8f7f67a6ab9937af78f8382981fbaf235b459d275d5bb0316b218b21d9707" -> "sha256:011126307085fc6413b87e3e4e1f23e807dc4ef7abbe74ddca1a2af0a842ca32" [label=""];
  "sha256:dcb539ba9d1f72fffbf18d29567a388fab862712efe7ce07fcea030d4f39e6c5" -> "sha256:011126307085fc6413b87e3e4e1f23e807dc4ef7abbe74ddca1a2af0a842ca32" [label=""];
  "sha256:011126307085fc6413b87e3e4e1f23e807dc4ef7abbe74ddca1a2af0a842ca32" -> "sha256:3f615edf4d56d7c17708b4379baffc6aa3a7b1fa4299833881f5d233bd532585" [label=""];
  "sha256:dcb539ba9d1f72fffbf18d29567a388fab862712efe7ce07fcea030d4f39e6c5" -> "sha256:3f615edf4d56d7c17708b4379baffc6aa3a7b1fa4299833881f5d233bd532585" [label=""];
  "sha256:3f615edf4d56d7c17708b4379baffc6aa3a7b1fa4299833881f5d233bd532585" -> "sha256:84b179f566321f0f9c502f08f26709e8bfa4b7190001ec1ea4d13ba47626d48a" [label=""];
  "sha256:dcb539ba9d1f72fffbf18d29567a388fab862712efe7ce07fcea030d4f39e6c5" -> "sha256:84b179f566321f0f9c502f08f26709e8bfa4b7190001ec1ea4d13ba47626d48a" [label=""];
  "sha256:84b179f566321f0f9c502f08f26709e8bfa4b7190001ec1ea4d13ba47626d48a" -> "sha256:744c47e9c46766c4e4234e1f9e52121090c2203877431cff1612bbcbacbc3cf9" [label=""];
  "sha256:dcb539ba9d1f72fffbf18d29567a388fab862712efe7ce07fcea030d4f39e6c5" -> "sha256:744c47e9c46766c4e4234e1f9e52121090c2203877431cff1612bbcbacbc3cf9" [label=""];
  "sha256:744c47e9c46766c4e4234e1f9e52121090c2203877431cff1612bbcbacbc3cf9" -> "sha256:806d97477d9673c61b1a1f8a2bb0e1125c8dffc3f0bcad8dc4e26e096cdbdcc0" [label=""];
  "sha256:806d97477d9673c61b1a1f8a2bb0e1125c8dffc3f0bcad8dc4e26e096cdbdcc0" -> "sha256:9ae7fa51cd5883ddc9ece23110b27b5c0a18ff999e6ec49955130d7b7f1a68fd" [label=""];
  "sha256:9ae7fa51cd5883ddc9ece23110b27b5c0a18ff999e6ec49955130d7b7f1a68fd" -> "sha256:646d1a3a6f76ca3f5ac7aec61134f78b77b7c0432cce5068b2ae338f6b813996" [label=""];
  "sha256:646d1a3a6f76ca3f5ac7aec61134f78b77b7c0432cce5068b2ae338f6b813996" -> "sha256:90e9e078fa9b85d101cd2e3079878c16c0538fbeb4d98a880b4c01d67a827c6a" [label=""];
}

