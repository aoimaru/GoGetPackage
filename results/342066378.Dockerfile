[app/sources/342066378.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:04f9665bb68601a1b824f69fb245fe32c8983cdd81849bbdbe8b75567f9d4741" [label="local://context" shape="ellipse"];
  "sha256:318cf8dfd284b5c64f120d5f617e5c206b6304489381ca3143581d61d5b664bf" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:0929c6d6293e4f83238ef47a1350ece1dfa781697d3bca69acaf0ceec65d44fd" [label="sha256:0929c6d6293e4f83238ef47a1350ece1dfa781697d3bca69acaf0ceec65d44fd" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:318cf8dfd284b5c64f120d5f617e5c206b6304489381ca3143581d61d5b664bf" [label=""];
  "sha256:04f9665bb68601a1b824f69fb245fe32c8983cdd81849bbdbe8b75567f9d4741" -> "sha256:318cf8dfd284b5c64f120d5f617e5c206b6304489381ca3143581d61d5b664bf" [label=""];
  "sha256:318cf8dfd284b5c64f120d5f617e5c206b6304489381ca3143581d61d5b664bf" -> "sha256:0929c6d6293e4f83238ef47a1350ece1dfa781697d3bca69acaf0ceec65d44fd" [label=""];
}

