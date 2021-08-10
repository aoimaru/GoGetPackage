[app/sources/216178712.Dockerfile]
digraph {
  "sha256:5b422a9d4f7e282305150cf086160a0e17a6f2f285ce55b1283991aa1a02bb3d" [label="docker-image://docker.io/library/python:2.7.10-wheezy" shape="ellipse"];
  "sha256:5a9c362b58d1fdf92a5b151949af5477834ad5c7348542bf89fe12db92a26fc5" [label="/bin/sh -c pip install Flask flask-mysqldb redis" shape="box"];
  "sha256:3a35ea061a4dcfde927f96cb794b6318a5954edbe59c760dff0aaf6a2a8d2f7e" [label="mkdir{path=/app}" shape="note"];
  "sha256:1799f286c89ef8c5cd874c3063bca9abe838843b9df156386c98ba98787b32bf" [label="sha256:1799f286c89ef8c5cd874c3063bca9abe838843b9df156386c98ba98787b32bf" shape="plaintext"];
  "sha256:5b422a9d4f7e282305150cf086160a0e17a6f2f285ce55b1283991aa1a02bb3d" -> "sha256:5a9c362b58d1fdf92a5b151949af5477834ad5c7348542bf89fe12db92a26fc5" [label=""];
  "sha256:5a9c362b58d1fdf92a5b151949af5477834ad5c7348542bf89fe12db92a26fc5" -> "sha256:3a35ea061a4dcfde927f96cb794b6318a5954edbe59c760dff0aaf6a2a8d2f7e" [label=""];
  "sha256:3a35ea061a4dcfde927f96cb794b6318a5954edbe59c760dff0aaf6a2a8d2f7e" -> "sha256:1799f286c89ef8c5cd874c3063bca9abe838843b9df156386c98ba98787b32bf" [label=""];
}

