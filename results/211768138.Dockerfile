[app/sources/211768138.Dockerfile]
digraph {
  "sha256:d712fad79caf60e0db2662a586e23eb3a32de2f5f084b6d663669b20311f3e9d" [label="docker-image://docker.io/anapsix/alpine-java:latest" shape="ellipse"];
  "sha256:372154b23ca85152a23e0fb01b87efe60956e32caaf4cab22624d1df006c5743" [label="local://context" shape="ellipse"];
  "sha256:a6b0990eb7dc23844464a1d92c22f62a7b092c88acc8971ef31f4d12dd83e71e" [label="copy{src=/target/raptor-tree-1.0-exec.jar, dest=/raptor.jar}" shape="note"];
  "sha256:80115573dd63843bc8030f4e122ee4b05052d24ac72800ad78b22322f8673a8f" [label="sha256:80115573dd63843bc8030f4e122ee4b05052d24ac72800ad78b22322f8673a8f" shape="plaintext"];
  "sha256:d712fad79caf60e0db2662a586e23eb3a32de2f5f084b6d663669b20311f3e9d" -> "sha256:a6b0990eb7dc23844464a1d92c22f62a7b092c88acc8971ef31f4d12dd83e71e" [label=""];
  "sha256:372154b23ca85152a23e0fb01b87efe60956e32caaf4cab22624d1df006c5743" -> "sha256:a6b0990eb7dc23844464a1d92c22f62a7b092c88acc8971ef31f4d12dd83e71e" [label=""];
  "sha256:a6b0990eb7dc23844464a1d92c22f62a7b092c88acc8971ef31f4d12dd83e71e" -> "sha256:80115573dd63843bc8030f4e122ee4b05052d24ac72800ad78b22322f8673a8f" [label=""];
}

