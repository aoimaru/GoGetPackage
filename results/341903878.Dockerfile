[app/sources/341903878.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:b2eb9574e78b0a6dab3099a7ae499a169ec0189603cc1abdd50caf8404e01392" [label="local://context" shape="ellipse"];
  "sha256:48d8e1bcb3fe36bbbfc5366b4d81801ba8de5d42506a63f05c0e36a72058081c" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:2a02f9b68140f79cda23447bb2a93fb23799043a6b8ba0b32727c74acab203f8" [label="sha256:2a02f9b68140f79cda23447bb2a93fb23799043a6b8ba0b32727c74acab203f8" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:48d8e1bcb3fe36bbbfc5366b4d81801ba8de5d42506a63f05c0e36a72058081c" [label=""];
  "sha256:b2eb9574e78b0a6dab3099a7ae499a169ec0189603cc1abdd50caf8404e01392" -> "sha256:48d8e1bcb3fe36bbbfc5366b4d81801ba8de5d42506a63f05c0e36a72058081c" [label=""];
  "sha256:48d8e1bcb3fe36bbbfc5366b4d81801ba8de5d42506a63f05c0e36a72058081c" -> "sha256:2a02f9b68140f79cda23447bb2a93fb23799043a6b8ba0b32727c74acab203f8" [label=""];
}

