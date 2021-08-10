[app/sources/252771082.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:6eb15180d4282cfbce1f4c752126c5be8033f642d1f2b5582f27cd2b506a9735" [label="/bin/sh -c apt update && apt install -y nginx" shape="box"];
  "sha256:00d7e24c88d3d2ba2db4d4eda51f6540aa7814625f90d9214758d5a2b1c97d64" [label="sha256:00d7e24c88d3d2ba2db4d4eda51f6540aa7814625f90d9214758d5a2b1c97d64" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:6eb15180d4282cfbce1f4c752126c5be8033f642d1f2b5582f27cd2b506a9735" [label=""];
  "sha256:6eb15180d4282cfbce1f4c752126c5be8033f642d1f2b5582f27cd2b506a9735" -> "sha256:00d7e24c88d3d2ba2db4d4eda51f6540aa7814625f90d9214758d5a2b1c97d64" [label=""];
}

