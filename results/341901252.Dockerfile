[app/sources/341901252.Dockerfile]
digraph {
  "sha256:795d14eb8386a146d28ab4f07f7222cdb4ba917450f141f61ce36aa7033dc855" [label="local://context" shape="ellipse"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:92f408980069f8fa352bf201a72d97dec54b5b91da7a4f25b0af3d26d4080ca3" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:e4ab01d41854b7bd63f0bffad2c2df40f108503304a96d76b15e1b6355948eab" [label="sha256:e4ab01d41854b7bd63f0bffad2c2df40f108503304a96d76b15e1b6355948eab" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:92f408980069f8fa352bf201a72d97dec54b5b91da7a4f25b0af3d26d4080ca3" [label=""];
  "sha256:795d14eb8386a146d28ab4f07f7222cdb4ba917450f141f61ce36aa7033dc855" -> "sha256:92f408980069f8fa352bf201a72d97dec54b5b91da7a4f25b0af3d26d4080ca3" [label=""];
  "sha256:92f408980069f8fa352bf201a72d97dec54b5b91da7a4f25b0af3d26d4080ca3" -> "sha256:e4ab01d41854b7bd63f0bffad2c2df40f108503304a96d76b15e1b6355948eab" [label=""];
}

