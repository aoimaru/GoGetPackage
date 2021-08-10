[app/sources/191895764.Dockerfile]
digraph {
  "sha256:86d01bb2bc99886a51085e2b202978768ee91e3f5de68f0a48239d2fc9783260" [label="docker-image://docker.io/library/node:6.9.1" shape="ellipse"];
  "sha256:131137ae6d31c59444bb9bc61c09b4d21b768c19a9a0ff4d4428112ba0cb735f" [label="/bin/sh -c npm install -g webpack coffee-script" shape="box"];
  "sha256:1e3654da51f16531524ab415ca833b0a5cbdc2530e41c284cd70362fe9c9da62" [label="mkdir{path=/myapp}" shape="note"];
  "sha256:e807d9d80b4a43b9723d3a703cd5cf0c31d295c18549bef0ba360550ee2b02b3" [label="sha256:e807d9d80b4a43b9723d3a703cd5cf0c31d295c18549bef0ba360550ee2b02b3" shape="plaintext"];
  "sha256:86d01bb2bc99886a51085e2b202978768ee91e3f5de68f0a48239d2fc9783260" -> "sha256:131137ae6d31c59444bb9bc61c09b4d21b768c19a9a0ff4d4428112ba0cb735f" [label=""];
  "sha256:131137ae6d31c59444bb9bc61c09b4d21b768c19a9a0ff4d4428112ba0cb735f" -> "sha256:1e3654da51f16531524ab415ca833b0a5cbdc2530e41c284cd70362fe9c9da62" [label=""];
  "sha256:1e3654da51f16531524ab415ca833b0a5cbdc2530e41c284cd70362fe9c9da62" -> "sha256:e807d9d80b4a43b9723d3a703cd5cf0c31d295c18549bef0ba360550ee2b02b3" [label=""];
}

