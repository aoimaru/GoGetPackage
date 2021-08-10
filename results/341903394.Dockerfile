[app/sources/341903394.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:7899015db81aed13708098c78c83ca5b6b978b164f8d8061e77cbd7fd89bb7c9" [label="local://context" shape="ellipse"];
  "sha256:c5d060c229a3e948ba2b0f443845d5f90a520f64d35d915bb6f0b343fc3e9a42" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:bfd5b2da99edab45479c6e816f771d46ae7c0d71e37ba59e4ea66261c5143e5c" [label="sha256:bfd5b2da99edab45479c6e816f771d46ae7c0d71e37ba59e4ea66261c5143e5c" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:c5d060c229a3e948ba2b0f443845d5f90a520f64d35d915bb6f0b343fc3e9a42" [label=""];
  "sha256:7899015db81aed13708098c78c83ca5b6b978b164f8d8061e77cbd7fd89bb7c9" -> "sha256:c5d060c229a3e948ba2b0f443845d5f90a520f64d35d915bb6f0b343fc3e9a42" [label=""];
  "sha256:c5d060c229a3e948ba2b0f443845d5f90a520f64d35d915bb6f0b343fc3e9a42" -> "sha256:bfd5b2da99edab45479c6e816f771d46ae7c0d71e37ba59e4ea66261c5143e5c" [label=""];
}

