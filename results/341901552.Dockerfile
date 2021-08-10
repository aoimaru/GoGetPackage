[app/sources/341901552.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:cdad1d422563ebc7dfac1848fa594af6da15565618d1a1f5b552999c7b32788e" [label="local://context" shape="ellipse"];
  "sha256:7eaf4dae8618eda67245fc6aa7ee901ba6f90ab5ba57b7bb9a48b3a512cda409" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:be8a4f6ad93644ad649708106684f5337da31ab665635c4d360ec4c5fe760764" [label="sha256:be8a4f6ad93644ad649708106684f5337da31ab665635c4d360ec4c5fe760764" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:7eaf4dae8618eda67245fc6aa7ee901ba6f90ab5ba57b7bb9a48b3a512cda409" [label=""];
  "sha256:cdad1d422563ebc7dfac1848fa594af6da15565618d1a1f5b552999c7b32788e" -> "sha256:7eaf4dae8618eda67245fc6aa7ee901ba6f90ab5ba57b7bb9a48b3a512cda409" [label=""];
  "sha256:7eaf4dae8618eda67245fc6aa7ee901ba6f90ab5ba57b7bb9a48b3a512cda409" -> "sha256:be8a4f6ad93644ad649708106684f5337da31ab665635c4d360ec4c5fe760764" [label=""];
}

