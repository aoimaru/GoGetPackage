[app/sources/342066888.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:b329d36c55899425113f60b00ddab9c5ba70caf6265a0e4103a49fdb6cc9ab70" [label="local://context" shape="ellipse"];
  "sha256:e9f7c963f44ca35f17f7e186cb735d299f5c29b00e7bf85fa49af15ca8dadc3f" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:920a6f9f3720217c0cf2f6350babcaa2b3822b9661ed709f2b41c59081b8670d" [label="sha256:920a6f9f3720217c0cf2f6350babcaa2b3822b9661ed709f2b41c59081b8670d" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:e9f7c963f44ca35f17f7e186cb735d299f5c29b00e7bf85fa49af15ca8dadc3f" [label=""];
  "sha256:b329d36c55899425113f60b00ddab9c5ba70caf6265a0e4103a49fdb6cc9ab70" -> "sha256:e9f7c963f44ca35f17f7e186cb735d299f5c29b00e7bf85fa49af15ca8dadc3f" [label=""];
  "sha256:e9f7c963f44ca35f17f7e186cb735d299f5c29b00e7bf85fa49af15ca8dadc3f" -> "sha256:920a6f9f3720217c0cf2f6350babcaa2b3822b9661ed709f2b41c59081b8670d" [label=""];
}

