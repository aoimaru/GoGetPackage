[app/sources/326110211.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:419ba48d2b641c4afba969c5fbebfe24210bdc157d52b471bf85388f7505e77a" [label="local://context" shape="ellipse"];
  "sha256:4ea5cba670964204942e971a8a33bd3efc3d55a351a59c3bbf3b9bdd91164fd1" [label="copy{src=/clang.tar.gz, dest=/}" shape="note"];
  "sha256:98e2571bc4a45ffb082bab673980a9b0eac188764f3a5cfb2f172d18c23f4151" [label="sha256:98e2571bc4a45ffb082bab673980a9b0eac188764f3a5cfb2f172d18c23f4151" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:4ea5cba670964204942e971a8a33bd3efc3d55a351a59c3bbf3b9bdd91164fd1" [label=""];
  "sha256:419ba48d2b641c4afba969c5fbebfe24210bdc157d52b471bf85388f7505e77a" -> "sha256:4ea5cba670964204942e971a8a33bd3efc3d55a351a59c3bbf3b9bdd91164fd1" [label=""];
  "sha256:4ea5cba670964204942e971a8a33bd3efc3d55a351a59c3bbf3b9bdd91164fd1" -> "sha256:98e2571bc4a45ffb082bab673980a9b0eac188764f3a5cfb2f172d18c23f4151" [label=""];
}

