[app/sources/341905279.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:6f00884a838888e86a4401c3bdeeba8c2a32cfef8d90aa67bf4c06557367d173" [label="local://context" shape="ellipse"];
  "sha256:37887666e78e6ce56308656edaf7faf895db5f6f2c57dfad215f4b41df6ffac3" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:1208ee04848e0671714f5adf987dec52e0e754b95dd64407c5a2ec7fbac7eaae" [label="pip install fabric" shape="box"];
  "sha256:358cc46463df21e731eaabcc556dd5ef720481d9efec90a7df5c1b1507d83ba8" [label="sha256:358cc46463df21e731eaabcc556dd5ef720481d9efec90a7df5c1b1507d83ba8" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:37887666e78e6ce56308656edaf7faf895db5f6f2c57dfad215f4b41df6ffac3" [label=""];
  "sha256:6f00884a838888e86a4401c3bdeeba8c2a32cfef8d90aa67bf4c06557367d173" -> "sha256:37887666e78e6ce56308656edaf7faf895db5f6f2c57dfad215f4b41df6ffac3" [label=""];
  "sha256:37887666e78e6ce56308656edaf7faf895db5f6f2c57dfad215f4b41df6ffac3" -> "sha256:1208ee04848e0671714f5adf987dec52e0e754b95dd64407c5a2ec7fbac7eaae" [label=""];
  "sha256:1208ee04848e0671714f5adf987dec52e0e754b95dd64407c5a2ec7fbac7eaae" -> "sha256:358cc46463df21e731eaabcc556dd5ef720481d9efec90a7df5c1b1507d83ba8" [label=""];
}

