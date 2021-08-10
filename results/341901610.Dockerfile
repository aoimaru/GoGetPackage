[app/sources/341901610.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:4d7cba551e0d8b35d6a107595b07fe148e31644240c232718ee2f92733c05cff" [label="local://context" shape="ellipse"];
  "sha256:4194e781fbdc9f60735fdf090853d244e055c26da7d388140400fa22cfcf2cec" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:926e10deb0cbefa7082d74991529d2d1bbf948d70b5e232f596adb677d6992ef" [label="sha256:926e10deb0cbefa7082d74991529d2d1bbf948d70b5e232f596adb677d6992ef" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:4194e781fbdc9f60735fdf090853d244e055c26da7d388140400fa22cfcf2cec" [label=""];
  "sha256:4d7cba551e0d8b35d6a107595b07fe148e31644240c232718ee2f92733c05cff" -> "sha256:4194e781fbdc9f60735fdf090853d244e055c26da7d388140400fa22cfcf2cec" [label=""];
  "sha256:4194e781fbdc9f60735fdf090853d244e055c26da7d388140400fa22cfcf2cec" -> "sha256:926e10deb0cbefa7082d74991529d2d1bbf948d70b5e232f596adb677d6992ef" [label=""];
}

