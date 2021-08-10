[app/sources/341898648.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:ff7e403d0a3fe428ffea022e136e79ef3bf37fa4c1604f85b59e5f9deed59005" [label="local://context" shape="ellipse"];
  "sha256:5c1bfb590de5721e65856ff5b2383075094b9238e9da6340fbfd4794410117d8" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:059fed8eabbe5ee06680febe560ab5c8e637a9fd7818b560fb1ff4aa42cc33f5" [label="sha256:059fed8eabbe5ee06680febe560ab5c8e637a9fd7818b560fb1ff4aa42cc33f5" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:5c1bfb590de5721e65856ff5b2383075094b9238e9da6340fbfd4794410117d8" [label=""];
  "sha256:ff7e403d0a3fe428ffea022e136e79ef3bf37fa4c1604f85b59e5f9deed59005" -> "sha256:5c1bfb590de5721e65856ff5b2383075094b9238e9da6340fbfd4794410117d8" [label=""];
  "sha256:5c1bfb590de5721e65856ff5b2383075094b9238e9da6340fbfd4794410117d8" -> "sha256:059fed8eabbe5ee06680febe560ab5c8e637a9fd7818b560fb1ff4aa42cc33f5" [label=""];
}

