[app/sources/276410153.Dockerfile]
digraph {
  "sha256:47baadcb69c58ae786f799e16575b5ccc0b8f5453f165fd61d82a9aa418fdd2c" [label="docker-image://docker.io/minio/minio:latest" shape="ellipse"];
  "sha256:3f69f919f3e8698e3b6a61a7ed71151c4a3329d6ba2f2c2278ec1f81a8c14cf5" [label="local://context" shape="ellipse"];
  "sha256:a531c35725a916d897b1c035d38463af4bfbde6d506b6efa3420ab620eda6e9f" [label="copy{src=/config.json, dest=/root/.minio/config.json}" shape="note"];
  "sha256:6ec4e9d065f321527907264a42b4e60c63fe3fab672a02de149393e83a21d29b" [label="sha256:6ec4e9d065f321527907264a42b4e60c63fe3fab672a02de149393e83a21d29b" shape="plaintext"];
  "sha256:47baadcb69c58ae786f799e16575b5ccc0b8f5453f165fd61d82a9aa418fdd2c" -> "sha256:a531c35725a916d897b1c035d38463af4bfbde6d506b6efa3420ab620eda6e9f" [label=""];
  "sha256:3f69f919f3e8698e3b6a61a7ed71151c4a3329d6ba2f2c2278ec1f81a8c14cf5" -> "sha256:a531c35725a916d897b1c035d38463af4bfbde6d506b6efa3420ab620eda6e9f" [label=""];
  "sha256:a531c35725a916d897b1c035d38463af4bfbde6d506b6efa3420ab620eda6e9f" -> "sha256:6ec4e9d065f321527907264a42b4e60c63fe3fab672a02de149393e83a21d29b" [label=""];
}

