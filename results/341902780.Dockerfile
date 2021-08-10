[app/sources/341902780.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:e32a4871ba880fe5aef5df284e81f579f53419079a302b9a36e9557fd4b36fb8" [label="local://context" shape="ellipse"];
  "sha256:f65c16cb41de0e864e209c6281f92a6a51277b43806fe4bfd07bedf67dbc83e0" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:c83ef9828b3f28629d0f2371133af78269e3a4c2f3afcc6c4a73c281c4abe703" [label="sha256:c83ef9828b3f28629d0f2371133af78269e3a4c2f3afcc6c4a73c281c4abe703" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:f65c16cb41de0e864e209c6281f92a6a51277b43806fe4bfd07bedf67dbc83e0" [label=""];
  "sha256:e32a4871ba880fe5aef5df284e81f579f53419079a302b9a36e9557fd4b36fb8" -> "sha256:f65c16cb41de0e864e209c6281f92a6a51277b43806fe4bfd07bedf67dbc83e0" [label=""];
  "sha256:f65c16cb41de0e864e209c6281f92a6a51277b43806fe4bfd07bedf67dbc83e0" -> "sha256:c83ef9828b3f28629d0f2371133af78269e3a4c2f3afcc6c4a73c281c4abe703" [label=""];
}

