[app/sources/341901172.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:632e9668c961000153689b67c92fd376b17e9d4064b69682257ec4b576e9b5dd" [label="local://context" shape="ellipse"];
  "sha256:1975db4bfec638fae5e65a50b97d1fa95155493047dcade8ab5e93734caee026" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:b5087c654aec8bcfc6f84e82d258440ba1e79aad631879223a2a555148e10bce" [label="pip install gpxpy" shape="box"];
  "sha256:425e874a9ee287b2fb96b554520d8e699f7b7ec3447bb0d52f35d00822631ac5" [label="pip install gpxpy" shape="box"];
  "sha256:50eaceebf9ac47425008ed0b3ea71e83f64cd3532495a7771798b3d6745ebab0" [label="sha256:50eaceebf9ac47425008ed0b3ea71e83f64cd3532495a7771798b3d6745ebab0" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:1975db4bfec638fae5e65a50b97d1fa95155493047dcade8ab5e93734caee026" [label=""];
  "sha256:632e9668c961000153689b67c92fd376b17e9d4064b69682257ec4b576e9b5dd" -> "sha256:1975db4bfec638fae5e65a50b97d1fa95155493047dcade8ab5e93734caee026" [label=""];
  "sha256:1975db4bfec638fae5e65a50b97d1fa95155493047dcade8ab5e93734caee026" -> "sha256:b5087c654aec8bcfc6f84e82d258440ba1e79aad631879223a2a555148e10bce" [label=""];
  "sha256:b5087c654aec8bcfc6f84e82d258440ba1e79aad631879223a2a555148e10bce" -> "sha256:425e874a9ee287b2fb96b554520d8e699f7b7ec3447bb0d52f35d00822631ac5" [label=""];
  "sha256:425e874a9ee287b2fb96b554520d8e699f7b7ec3447bb0d52f35d00822631ac5" -> "sha256:50eaceebf9ac47425008ed0b3ea71e83f64cd3532495a7771798b3d6745ebab0" [label=""];
}

