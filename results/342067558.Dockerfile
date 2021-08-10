[app/sources/342067558.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:4e740c17125c63d3aae0b76e77dcb4672a96c1d1cdd4c21139d01584291d30a7" [label="local://context" shape="ellipse"];
  "sha256:13774ab34dda4757eb78dcc1447da99004c9e605d035aa1045a2ffee74b3ce2c" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:9532059b17d6a394d4e6bc200f0e8b25d675b73bd5ad543137ff9e7c7a889c6a" [label="sha256:9532059b17d6a394d4e6bc200f0e8b25d675b73bd5ad543137ff9e7c7a889c6a" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:13774ab34dda4757eb78dcc1447da99004c9e605d035aa1045a2ffee74b3ce2c" [label=""];
  "sha256:4e740c17125c63d3aae0b76e77dcb4672a96c1d1cdd4c21139d01584291d30a7" -> "sha256:13774ab34dda4757eb78dcc1447da99004c9e605d035aa1045a2ffee74b3ce2c" [label=""];
  "sha256:13774ab34dda4757eb78dcc1447da99004c9e605d035aa1045a2ffee74b3ce2c" -> "sha256:9532059b17d6a394d4e6bc200f0e8b25d675b73bd5ad543137ff9e7c7a889c6a" [label=""];
}

