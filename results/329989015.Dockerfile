[app/sources/329989015.Dockerfile]
digraph {
  "sha256:68336c5f052d50be26b6c2d296a1e98018448431b56c52d9e89ceec4132218c6" [label="local://context" shape="ellipse"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" [label="docker-image://docker.io/library/alpine:3.5" shape="ellipse"];
  "sha256:9511d99d71fb862ae6682bd5237eedc824f67828dea7c3ff9a9520d074dd47da" [label="mkdir{path=/bin}" shape="note"];
  "sha256:4c5cb10f93d9114932c82dc9aeba6e42bb13641924c7c7bbc7088654fbb777a4" [label="copy{src=/dyskctl, dest=/bin/dyskctl}" shape="note"];
  "sha256:114c16c574e6ee6663c51e98a3ca984226afa12905efd51ed5f87ddb3a99c21c" [label="sha256:114c16c574e6ee6663c51e98a3ca984226afa12905efd51ed5f87ddb3a99c21c" shape="plaintext"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" -> "sha256:9511d99d71fb862ae6682bd5237eedc824f67828dea7c3ff9a9520d074dd47da" [label=""];
  "sha256:9511d99d71fb862ae6682bd5237eedc824f67828dea7c3ff9a9520d074dd47da" -> "sha256:4c5cb10f93d9114932c82dc9aeba6e42bb13641924c7c7bbc7088654fbb777a4" [label=""];
  "sha256:68336c5f052d50be26b6c2d296a1e98018448431b56c52d9e89ceec4132218c6" -> "sha256:4c5cb10f93d9114932c82dc9aeba6e42bb13641924c7c7bbc7088654fbb777a4" [label=""];
  "sha256:4c5cb10f93d9114932c82dc9aeba6e42bb13641924c7c7bbc7088654fbb777a4" -> "sha256:114c16c574e6ee6663c51e98a3ca984226afa12905efd51ed5f87ddb3a99c21c" [label=""];
}

