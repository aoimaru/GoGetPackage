[app/sources/286179620.Dockerfile]
digraph {
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" [label="docker-image://docker.io/library/node:alpine" shape="ellipse"];
  "sha256:042c1d4ddcb71c3cec897b3d03f1f57ec51fb1257dcde65bd8988d0acbfc7790" [label="mkdir{path=/app}" shape="note"];
  "sha256:9b3a47935ae3ca10d2ce7c0cd31f3071d16200bfe0d5a9d609462dee03629893" [label="local://context" shape="ellipse"];
  "sha256:19dffa65ab49b83b880e7963e0c394d9c2be195a7f8ca0bfb9942aa191ca4b80" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:96b24f4820638a5ab5f55a164a8f429df036ceafc4352326a12a6ef1d64edbe3" [label="sha256:96b24f4820638a5ab5f55a164a8f429df036ceafc4352326a12a6ef1d64edbe3" shape="plaintext"];
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" -> "sha256:042c1d4ddcb71c3cec897b3d03f1f57ec51fb1257dcde65bd8988d0acbfc7790" [label=""];
  "sha256:042c1d4ddcb71c3cec897b3d03f1f57ec51fb1257dcde65bd8988d0acbfc7790" -> "sha256:19dffa65ab49b83b880e7963e0c394d9c2be195a7f8ca0bfb9942aa191ca4b80" [label=""];
  "sha256:9b3a47935ae3ca10d2ce7c0cd31f3071d16200bfe0d5a9d609462dee03629893" -> "sha256:19dffa65ab49b83b880e7963e0c394d9c2be195a7f8ca0bfb9942aa191ca4b80" [label=""];
  "sha256:19dffa65ab49b83b880e7963e0c394d9c2be195a7f8ca0bfb9942aa191ca4b80" -> "sha256:96b24f4820638a5ab5f55a164a8f429df036ceafc4352326a12a6ef1d64edbe3" [label=""];
}

