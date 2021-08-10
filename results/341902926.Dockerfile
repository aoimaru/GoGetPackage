[app/sources/341902926.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:0f5a848d31bc27f1c67cf8d499ae1d2b436a1c48a976185d67f71bb80be8b6f1" [label="local://context" shape="ellipse"];
  "sha256:a892f1da6750c2b5d072346993beff6e1ae4267c3777b0feb4d3f51147ef7aed" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:00cf386c9c3256b4ae28d598485da687348ac0db6a5034da04645f5d85470371" [label="sha256:00cf386c9c3256b4ae28d598485da687348ac0db6a5034da04645f5d85470371" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:a892f1da6750c2b5d072346993beff6e1ae4267c3777b0feb4d3f51147ef7aed" [label=""];
  "sha256:0f5a848d31bc27f1c67cf8d499ae1d2b436a1c48a976185d67f71bb80be8b6f1" -> "sha256:a892f1da6750c2b5d072346993beff6e1ae4267c3777b0feb4d3f51147ef7aed" [label=""];
  "sha256:a892f1da6750c2b5d072346993beff6e1ae4267c3777b0feb4d3f51147ef7aed" -> "sha256:00cf386c9c3256b4ae28d598485da687348ac0db6a5034da04645f5d85470371" [label=""];
}

