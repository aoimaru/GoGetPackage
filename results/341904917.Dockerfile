[app/sources/341904917.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:f2b541c0aecc10f4b2317b708ececdf5c76280806ff59d76e15b75bc65f57508" [label="local://context" shape="ellipse"];
  "sha256:d7b9f33187209aa76427364d37ad282d61b5af6809fc035effbcdd627fba2582" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:bede5b5f6cc499cf1bcea98aec1922232c44399f87c726b9c73fc48b363c11c1" [label="sha256:bede5b5f6cc499cf1bcea98aec1922232c44399f87c726b9c73fc48b363c11c1" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:d7b9f33187209aa76427364d37ad282d61b5af6809fc035effbcdd627fba2582" [label=""];
  "sha256:f2b541c0aecc10f4b2317b708ececdf5c76280806ff59d76e15b75bc65f57508" -> "sha256:d7b9f33187209aa76427364d37ad282d61b5af6809fc035effbcdd627fba2582" [label=""];
  "sha256:d7b9f33187209aa76427364d37ad282d61b5af6809fc035effbcdd627fba2582" -> "sha256:bede5b5f6cc499cf1bcea98aec1922232c44399f87c726b9c73fc48b363c11c1" [label=""];
}

