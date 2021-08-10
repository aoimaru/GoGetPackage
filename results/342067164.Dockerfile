[app/sources/342067164.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:d937715f6cbe2584ebe4619f6eb35582fb6a4fc7619f32b80feb8c2d8671c108" [label="local://context" shape="ellipse"];
  "sha256:f1610ef2af3124f9d6f7caf4f447168e8d78249250ac99da148539a1fae38557" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:8190a7634d91bd0cabdbfe207016f51f90472b6ccb9f4cc219823f5a66810f98" [label="sha256:8190a7634d91bd0cabdbfe207016f51f90472b6ccb9f4cc219823f5a66810f98" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:f1610ef2af3124f9d6f7caf4f447168e8d78249250ac99da148539a1fae38557" [label=""];
  "sha256:d937715f6cbe2584ebe4619f6eb35582fb6a4fc7619f32b80feb8c2d8671c108" -> "sha256:f1610ef2af3124f9d6f7caf4f447168e8d78249250ac99da148539a1fae38557" [label=""];
  "sha256:f1610ef2af3124f9d6f7caf4f447168e8d78249250ac99da148539a1fae38557" -> "sha256:8190a7634d91bd0cabdbfe207016f51f90472b6ccb9f4cc219823f5a66810f98" [label=""];
}

