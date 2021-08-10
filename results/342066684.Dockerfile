[app/sources/342066684.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:f1397847b8317e637ad5db49d3b40cf7f079ad35b3b0645cecfbb10659f4c10d" [label="local://context" shape="ellipse"];
  "sha256:d8dd6df01089a060905e37e919cd6fca6b61aeaa8db1222ea64519ed9b07c9fb" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:0520e51f7395090f9b89555e3debf091076ba0a0685fe14737347c7c86b59332" [label="sha256:0520e51f7395090f9b89555e3debf091076ba0a0685fe14737347c7c86b59332" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:d8dd6df01089a060905e37e919cd6fca6b61aeaa8db1222ea64519ed9b07c9fb" [label=""];
  "sha256:f1397847b8317e637ad5db49d3b40cf7f079ad35b3b0645cecfbb10659f4c10d" -> "sha256:d8dd6df01089a060905e37e919cd6fca6b61aeaa8db1222ea64519ed9b07c9fb" [label=""];
  "sha256:d8dd6df01089a060905e37e919cd6fca6b61aeaa8db1222ea64519ed9b07c9fb" -> "sha256:0520e51f7395090f9b89555e3debf091076ba0a0685fe14737347c7c86b59332" [label=""];
}

