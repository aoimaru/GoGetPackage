[app/sources/253400793.Dockerfile]
digraph {
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:42af624a0d8e6cf8bd0bb6acfd7d9c6ca45d16e203ed801fa33f21d5cbf0292d" [label="local://context" shape="ellipse"];
  "sha256:d06f33e3059707b80e7bd3244020e76bb4c863a098acac0559333188d68ad804" [label="copy{src=/target/starwars-1.0.1.jar, dest=/server.jar}" shape="note"];
  "sha256:b661a96ec708054b29aef226a4168dccdc6c1978ec97e5d06556f0ceba9ea6c3" [label="sha256:b661a96ec708054b29aef226a4168dccdc6c1978ec97e5d06556f0ceba9ea6c3" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:d06f33e3059707b80e7bd3244020e76bb4c863a098acac0559333188d68ad804" [label=""];
  "sha256:42af624a0d8e6cf8bd0bb6acfd7d9c6ca45d16e203ed801fa33f21d5cbf0292d" -> "sha256:d06f33e3059707b80e7bd3244020e76bb4c863a098acac0559333188d68ad804" [label=""];
  "sha256:d06f33e3059707b80e7bd3244020e76bb4c863a098acac0559333188d68ad804" -> "sha256:b661a96ec708054b29aef226a4168dccdc6c1978ec97e5d06556f0ceba9ea6c3" [label=""];
}

