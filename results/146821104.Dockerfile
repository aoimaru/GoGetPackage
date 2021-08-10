[app/sources/146821104.Dockerfile]
digraph {
  "sha256:1e47b3811173e2ea94287f896e86692108a05031fcb2e875ff52b6dd5f9bbb10" [label="docker-image://docker.io/library/spark-base:0.8.0" shape="ellipse"];
  "sha256:625971bf75085695faddf4a29818ed39881fb4e0b7372c41269da3bb46af6a16" [label="local://context" shape="ellipse"];
  "sha256:fde77a152753b5bec1bce344d4d9cd8f318f4225b832866c07b7303ecb139eee" [label="copy{src=/files, dest=/root/spark_master_files}" shape="note"];
  "sha256:073f85ce1e0d0e6bdf3ee91221195d0103ed1e19c4fbe218b5b2b152f189750a" [label="sha256:073f85ce1e0d0e6bdf3ee91221195d0103ed1e19c4fbe218b5b2b152f189750a" shape="plaintext"];
  "sha256:1e47b3811173e2ea94287f896e86692108a05031fcb2e875ff52b6dd5f9bbb10" -> "sha256:fde77a152753b5bec1bce344d4d9cd8f318f4225b832866c07b7303ecb139eee" [label=""];
  "sha256:625971bf75085695faddf4a29818ed39881fb4e0b7372c41269da3bb46af6a16" -> "sha256:fde77a152753b5bec1bce344d4d9cd8f318f4225b832866c07b7303ecb139eee" [label=""];
  "sha256:fde77a152753b5bec1bce344d4d9cd8f318f4225b832866c07b7303ecb139eee" -> "sha256:073f85ce1e0d0e6bdf3ee91221195d0103ed1e19c4fbe218b5b2b152f189750a" [label=""];
}

