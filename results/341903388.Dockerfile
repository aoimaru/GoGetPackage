[app/sources/341903388.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:f721b60155156225fc2f478c62fe36ad8a2fddc96f6da5c919b1d5f4f1d34925" [label="local://context" shape="ellipse"];
  "sha256:85fff673537b1b32b028a1529524b07350f90649450ff6c603cd8cfa5af62de4" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:72733b5e56824fa1e64b62115ae3e8f30dad8951402bd4e93adaf5bb83a96ca8" [label="sha256:72733b5e56824fa1e64b62115ae3e8f30dad8951402bd4e93adaf5bb83a96ca8" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:85fff673537b1b32b028a1529524b07350f90649450ff6c603cd8cfa5af62de4" [label=""];
  "sha256:f721b60155156225fc2f478c62fe36ad8a2fddc96f6da5c919b1d5f4f1d34925" -> "sha256:85fff673537b1b32b028a1529524b07350f90649450ff6c603cd8cfa5af62de4" [label=""];
  "sha256:85fff673537b1b32b028a1529524b07350f90649450ff6c603cd8cfa5af62de4" -> "sha256:72733b5e56824fa1e64b62115ae3e8f30dad8951402bd4e93adaf5bb83a96ca8" [label=""];
}

