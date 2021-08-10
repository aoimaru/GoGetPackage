[app/sources/341904445.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:f888304ddeff3112d3f6b845fc1e2bfd6373bc4c50a4db152b5696ddb660e077" [label="local://context" shape="ellipse"];
  "sha256:566c8dd182fd7cab1a54b97b72e65c18d8dde065689024fa6b75824d3b44dffb" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:70c7ef9e0b81b0ec083fb5a94bc89518cc9f589103934c479624d78c5aed4d15" [label="sha256:70c7ef9e0b81b0ec083fb5a94bc89518cc9f589103934c479624d78c5aed4d15" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:566c8dd182fd7cab1a54b97b72e65c18d8dde065689024fa6b75824d3b44dffb" [label=""];
  "sha256:f888304ddeff3112d3f6b845fc1e2bfd6373bc4c50a4db152b5696ddb660e077" -> "sha256:566c8dd182fd7cab1a54b97b72e65c18d8dde065689024fa6b75824d3b44dffb" [label=""];
  "sha256:566c8dd182fd7cab1a54b97b72e65c18d8dde065689024fa6b75824d3b44dffb" -> "sha256:70c7ef9e0b81b0ec083fb5a94bc89518cc9f589103934c479624d78c5aed4d15" [label=""];
}

