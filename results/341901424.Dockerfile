[app/sources/341901424.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:1c9211d07d1bfccf98d1721015629cd49fa4f5ee2324b7ad3da93714233c8c14" [label="local://context" shape="ellipse"];
  "sha256:46b4fb568560f527b5389d2daddf1e80382fe2a063917ca5ebd3f84852212b54" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:d6e51731ae2b1bdb1381624c1a0f410a4c89da8ae1601c62c2dd3728e7085fbd" [label="sha256:d6e51731ae2b1bdb1381624c1a0f410a4c89da8ae1601c62c2dd3728e7085fbd" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:46b4fb568560f527b5389d2daddf1e80382fe2a063917ca5ebd3f84852212b54" [label=""];
  "sha256:1c9211d07d1bfccf98d1721015629cd49fa4f5ee2324b7ad3da93714233c8c14" -> "sha256:46b4fb568560f527b5389d2daddf1e80382fe2a063917ca5ebd3f84852212b54" [label=""];
  "sha256:46b4fb568560f527b5389d2daddf1e80382fe2a063917ca5ebd3f84852212b54" -> "sha256:d6e51731ae2b1bdb1381624c1a0f410a4c89da8ae1601c62c2dd3728e7085fbd" [label=""];
}

