[app/sources/342067902.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:f70f82d96f479fbffc6d65c860df4e6f5d4080d2926014fa23edb02121200a57" [label="local://context" shape="ellipse"];
  "sha256:51e65993446b79a8916aa31200e809db322cea9b3bf57ce5b2c7f7ce9fa9bd05" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:c3871a9d54cdcd285bd6f81f7e202bfde72a800a3a1ec5319b26f6574b333b1b" [label="sha256:c3871a9d54cdcd285bd6f81f7e202bfde72a800a3a1ec5319b26f6574b333b1b" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:51e65993446b79a8916aa31200e809db322cea9b3bf57ce5b2c7f7ce9fa9bd05" [label=""];
  "sha256:f70f82d96f479fbffc6d65c860df4e6f5d4080d2926014fa23edb02121200a57" -> "sha256:51e65993446b79a8916aa31200e809db322cea9b3bf57ce5b2c7f7ce9fa9bd05" [label=""];
  "sha256:51e65993446b79a8916aa31200e809db322cea9b3bf57ce5b2c7f7ce9fa9bd05" -> "sha256:c3871a9d54cdcd285bd6f81f7e202bfde72a800a3a1ec5319b26f6574b333b1b" [label=""];
}

