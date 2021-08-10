[app/sources/342067258.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:b4b88f8e6a768c2d626b22046ee2dfd99ef13a0c5d5f89e4e91411e7bab36c27" [label="local://context" shape="ellipse"];
  "sha256:b5a36310039110fdf8ab2f2f7c9fc68e106305115255fc4b57ecf2b14371eed6" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:ad069f792d73af8fbc864911ca30ad51b3b3b18f4ee21c8144b18d600754a71d" [label="sha256:ad069f792d73af8fbc864911ca30ad51b3b3b18f4ee21c8144b18d600754a71d" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:b5a36310039110fdf8ab2f2f7c9fc68e106305115255fc4b57ecf2b14371eed6" [label=""];
  "sha256:b4b88f8e6a768c2d626b22046ee2dfd99ef13a0c5d5f89e4e91411e7bab36c27" -> "sha256:b5a36310039110fdf8ab2f2f7c9fc68e106305115255fc4b57ecf2b14371eed6" [label=""];
  "sha256:b5a36310039110fdf8ab2f2f7c9fc68e106305115255fc4b57ecf2b14371eed6" -> "sha256:ad069f792d73af8fbc864911ca30ad51b3b3b18f4ee21c8144b18d600754a71d" [label=""];
}

