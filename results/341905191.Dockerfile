[app/sources/341905191.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:eb39823f71e85fcfc829b57a1756f3c5f9980ec80fd4256377a5d9a07e3545e1" [label="local://context" shape="ellipse"];
  "sha256:078be7511c2be95a7e38b0ec36c67979aa7ed0cda0741cb64317ac8f5f5b86a4" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:2743f7d1cc14ad7cf6a84652ab380e94ed98029e25a56c4e6712524a79d28bee" [label="sha256:2743f7d1cc14ad7cf6a84652ab380e94ed98029e25a56c4e6712524a79d28bee" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:078be7511c2be95a7e38b0ec36c67979aa7ed0cda0741cb64317ac8f5f5b86a4" [label=""];
  "sha256:eb39823f71e85fcfc829b57a1756f3c5f9980ec80fd4256377a5d9a07e3545e1" -> "sha256:078be7511c2be95a7e38b0ec36c67979aa7ed0cda0741cb64317ac8f5f5b86a4" [label=""];
  "sha256:078be7511c2be95a7e38b0ec36c67979aa7ed0cda0741cb64317ac8f5f5b86a4" -> "sha256:2743f7d1cc14ad7cf6a84652ab380e94ed98029e25a56c4e6712524a79d28bee" [label=""];
}

