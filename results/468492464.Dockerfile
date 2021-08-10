[app/sources/468492464.Dockerfile]
digraph {
  "sha256:6ac6deae9962d6ee6e2eb62fd03b9f4c5ce5607fb86de6de3918bf91f966dd2d" [label="docker-image://docker.io/library/bats-jenkins:latest" shape="ellipse"];
  "sha256:4a19e7bd8cb9e3ef9d05c70cd3c9c91b51e2cf717b16857efbd9d30ebd02164a" [label="/bin/sh -c /usr/local/bin/install-plugins.sh maven-plugin:2.7.1 ant:1.3 mesos:0.13.0" shape="box"];
  "sha256:80f665f8f1598236b587fb1aaffe3a1f31c10481db5a76c0cb53cf5cc4e45186" [label="sha256:80f665f8f1598236b587fb1aaffe3a1f31c10481db5a76c0cb53cf5cc4e45186" shape="plaintext"];
  "sha256:6ac6deae9962d6ee6e2eb62fd03b9f4c5ce5607fb86de6de3918bf91f966dd2d" -> "sha256:4a19e7bd8cb9e3ef9d05c70cd3c9c91b51e2cf717b16857efbd9d30ebd02164a" [label=""];
  "sha256:4a19e7bd8cb9e3ef9d05c70cd3c9c91b51e2cf717b16857efbd9d30ebd02164a" -> "sha256:80f665f8f1598236b587fb1aaffe3a1f31c10481db5a76c0cb53cf5cc4e45186" [label=""];
}

