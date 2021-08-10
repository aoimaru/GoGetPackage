[app/sources/341898516.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:f7eae76fdc3bca02d94de95b22c21a870ab40866889f2d3ceaf80c603cf6af1d" [label="local://context" shape="ellipse"];
  "sha256:b9ad8f56387e889e785ea8b17efd017a418141b7dc2ac57865688a22af3dbc6a" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:d30b56a9f2ffb015a272052497cd437b74880d57410cecc63a913d405162da19" [label="sha256:d30b56a9f2ffb015a272052497cd437b74880d57410cecc63a913d405162da19" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:b9ad8f56387e889e785ea8b17efd017a418141b7dc2ac57865688a22af3dbc6a" [label=""];
  "sha256:f7eae76fdc3bca02d94de95b22c21a870ab40866889f2d3ceaf80c603cf6af1d" -> "sha256:b9ad8f56387e889e785ea8b17efd017a418141b7dc2ac57865688a22af3dbc6a" [label=""];
  "sha256:b9ad8f56387e889e785ea8b17efd017a418141b7dc2ac57865688a22af3dbc6a" -> "sha256:d30b56a9f2ffb015a272052497cd437b74880d57410cecc63a913d405162da19" [label=""];
}

