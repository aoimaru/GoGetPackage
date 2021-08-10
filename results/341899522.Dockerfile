[app/sources/341899522.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:8edb3648ec7a3583c595858ee5600e3167f87ca1055c48f6b2f1fbf587e0bc0e" [label="local://context" shape="ellipse"];
  "sha256:a7ce87646ec88048f40c48f1671e42ccbc1888d8b51d8d2d0b74f2ddd79aab45" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:ab2dfee9143bb34ddae3dbf32bb2557c0f17c3a0843476d92daada259afe7e69" [label="sha256:ab2dfee9143bb34ddae3dbf32bb2557c0f17c3a0843476d92daada259afe7e69" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:a7ce87646ec88048f40c48f1671e42ccbc1888d8b51d8d2d0b74f2ddd79aab45" [label=""];
  "sha256:8edb3648ec7a3583c595858ee5600e3167f87ca1055c48f6b2f1fbf587e0bc0e" -> "sha256:a7ce87646ec88048f40c48f1671e42ccbc1888d8b51d8d2d0b74f2ddd79aab45" [label=""];
  "sha256:a7ce87646ec88048f40c48f1671e42ccbc1888d8b51d8d2d0b74f2ddd79aab45" -> "sha256:ab2dfee9143bb34ddae3dbf32bb2557c0f17c3a0843476d92daada259afe7e69" [label=""];
}

