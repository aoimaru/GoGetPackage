[app/sources/341901908.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:f112745bd0d32e56c0570ac16b7105a8049b8efde978fea6d6a7a1b325d49a03" [label="local://context" shape="ellipse"];
  "sha256:c4c9abf44771f9b23fb49de0e5f6e49f296152e54b3be04ce8339f07bfdc5825" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:2b2f44e7a49d217affd8729661aa8b0384fac0a3faa980a7c45dc226102bc6d5" [label="sha256:2b2f44e7a49d217affd8729661aa8b0384fac0a3faa980a7c45dc226102bc6d5" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:c4c9abf44771f9b23fb49de0e5f6e49f296152e54b3be04ce8339f07bfdc5825" [label=""];
  "sha256:f112745bd0d32e56c0570ac16b7105a8049b8efde978fea6d6a7a1b325d49a03" -> "sha256:c4c9abf44771f9b23fb49de0e5f6e49f296152e54b3be04ce8339f07bfdc5825" [label=""];
  "sha256:c4c9abf44771f9b23fb49de0e5f6e49f296152e54b3be04ce8339f07bfdc5825" -> "sha256:2b2f44e7a49d217affd8729661aa8b0384fac0a3faa980a7c45dc226102bc6d5" [label=""];
}

