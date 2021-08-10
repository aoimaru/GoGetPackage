[app/sources/341899812.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:2bc73a225c6379ccac6ff18dd79843c6be902a6381e08491dd01c85c4ac7b7ec" [label="local://context" shape="ellipse"];
  "sha256:e9be2a541464e01d9e3e1bb25c799d7828e76387f99c0a4f70803562cac79a23" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:dff0ae2632c9838c9efc37e68c13c8f137a81823bd0efccb1b7466f7e15262b1" [label="pip install sqlalchemy" shape="box"];
  "sha256:688edb1d85052cea730d78a2a8f07e7a2db644a4c864648d5dd3b486346753d3" [label="pip install sqlalchemy" shape="box"];
  "sha256:95c0700686e6ceb3e24a0b57781459854de092a89503e1c15374f0c7291081de" [label="pip install sqlalchemy" shape="box"];
  "sha256:a765fb4e1954091ea7ee90fb18ed52759a170e649138d3916ff8859906a01457" [label="sha256:a765fb4e1954091ea7ee90fb18ed52759a170e649138d3916ff8859906a01457" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:e9be2a541464e01d9e3e1bb25c799d7828e76387f99c0a4f70803562cac79a23" [label=""];
  "sha256:2bc73a225c6379ccac6ff18dd79843c6be902a6381e08491dd01c85c4ac7b7ec" -> "sha256:e9be2a541464e01d9e3e1bb25c799d7828e76387f99c0a4f70803562cac79a23" [label=""];
  "sha256:e9be2a541464e01d9e3e1bb25c799d7828e76387f99c0a4f70803562cac79a23" -> "sha256:dff0ae2632c9838c9efc37e68c13c8f137a81823bd0efccb1b7466f7e15262b1" [label=""];
  "sha256:dff0ae2632c9838c9efc37e68c13c8f137a81823bd0efccb1b7466f7e15262b1" -> "sha256:688edb1d85052cea730d78a2a8f07e7a2db644a4c864648d5dd3b486346753d3" [label=""];
  "sha256:688edb1d85052cea730d78a2a8f07e7a2db644a4c864648d5dd3b486346753d3" -> "sha256:95c0700686e6ceb3e24a0b57781459854de092a89503e1c15374f0c7291081de" [label=""];
  "sha256:95c0700686e6ceb3e24a0b57781459854de092a89503e1c15374f0c7291081de" -> "sha256:a765fb4e1954091ea7ee90fb18ed52759a170e649138d3916ff8859906a01457" [label=""];
}

