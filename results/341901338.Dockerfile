[app/sources/341901338.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:53dcbd4c07e3f440ddbc3fdfb452cdab792c6d4acc9f0ed56286aaf368888297" [label="local://context" shape="ellipse"];
  "sha256:7f1c160edc27246bfae02cb9225e7f901cf145f90639a8a24a424af92a43245d" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:78b1493b4d4a747ec67c2230a73d3900ff444b9e51949d6017cf6a7389c81a74" [label="sha256:78b1493b4d4a747ec67c2230a73d3900ff444b9e51949d6017cf6a7389c81a74" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:7f1c160edc27246bfae02cb9225e7f901cf145f90639a8a24a424af92a43245d" [label=""];
  "sha256:53dcbd4c07e3f440ddbc3fdfb452cdab792c6d4acc9f0ed56286aaf368888297" -> "sha256:7f1c160edc27246bfae02cb9225e7f901cf145f90639a8a24a424af92a43245d" [label=""];
  "sha256:7f1c160edc27246bfae02cb9225e7f901cf145f90639a8a24a424af92a43245d" -> "sha256:78b1493b4d4a747ec67c2230a73d3900ff444b9e51949d6017cf6a7389c81a74" [label=""];
}

