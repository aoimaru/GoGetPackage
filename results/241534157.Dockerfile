[app/sources/241534157.Dockerfile]
digraph {
  "sha256:458fcc1ff4a390bea56d1f5d7445e4a9afce9beaca861a182aca3ed4a6ede3e5" [label="docker-image://docker.io/matthiasnoback/php_workshop_tools_base:latest" shape="ellipse"];
  "sha256:36fbbc647b70a6af1dc450fef56f95c4957e2ad3d771dbc5904320d0c6e0d3a9" [label="local://context" shape="ellipse"];
  "sha256:43fe987ce17db722cb886877de300cdfe1f8884d59af0bccb36df5f86a6b8ae0" [label="copy{src=/run_tests.sh, dest=/usr/bin}" shape="note"];
  "sha256:1632e7d0c0c6d251359496d9ab89bc4434fcaad800f2c9fa7295d0c9fde89bde" [label="sha256:1632e7d0c0c6d251359496d9ab89bc4434fcaad800f2c9fa7295d0c9fde89bde" shape="plaintext"];
  "sha256:458fcc1ff4a390bea56d1f5d7445e4a9afce9beaca861a182aca3ed4a6ede3e5" -> "sha256:43fe987ce17db722cb886877de300cdfe1f8884d59af0bccb36df5f86a6b8ae0" [label=""];
  "sha256:36fbbc647b70a6af1dc450fef56f95c4957e2ad3d771dbc5904320d0c6e0d3a9" -> "sha256:43fe987ce17db722cb886877de300cdfe1f8884d59af0bccb36df5f86a6b8ae0" [label=""];
  "sha256:43fe987ce17db722cb886877de300cdfe1f8884d59af0bccb36df5f86a6b8ae0" -> "sha256:1632e7d0c0c6d251359496d9ab89bc4434fcaad800f2c9fa7295d0c9fde89bde" [label=""];
}

