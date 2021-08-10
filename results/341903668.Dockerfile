[app/sources/341903668.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:7df01cf4c2b17232f1eec1e3a9313aec16c1b55f34e3f7a857bace7bd7bc1a2e" [label="local://context" shape="ellipse"];
  "sha256:ba626325ddac6058cce3fcd62a0ba2628192ea6674d28dcb509617572a2cfa3f" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:eec0a358834a10b7a0d76cd7f2d57d61a67de39d56a33a446bfd10f4ab6f4585" [label="sha256:eec0a358834a10b7a0d76cd7f2d57d61a67de39d56a33a446bfd10f4ab6f4585" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:ba626325ddac6058cce3fcd62a0ba2628192ea6674d28dcb509617572a2cfa3f" [label=""];
  "sha256:7df01cf4c2b17232f1eec1e3a9313aec16c1b55f34e3f7a857bace7bd7bc1a2e" -> "sha256:ba626325ddac6058cce3fcd62a0ba2628192ea6674d28dcb509617572a2cfa3f" [label=""];
  "sha256:ba626325ddac6058cce3fcd62a0ba2628192ea6674d28dcb509617572a2cfa3f" -> "sha256:eec0a358834a10b7a0d76cd7f2d57d61a67de39d56a33a446bfd10f4ab6f4585" [label=""];
}

