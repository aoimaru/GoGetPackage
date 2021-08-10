[app/sources/341898274.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:301fc0439d445a99360d9d348b2a861ef71f77e288c3db6c33fd46e20c3fd563" [label="local://context" shape="ellipse"];
  "sha256:715136da91db54e902cec0a026281962f716b5140591f0831d59fe7ebab8efaa" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:04d64c030f10d194b423376f2d7708b6c783f76fa7c19fcbb1cc36d0f52fd880" [label="sha256:04d64c030f10d194b423376f2d7708b6c783f76fa7c19fcbb1cc36d0f52fd880" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:715136da91db54e902cec0a026281962f716b5140591f0831d59fe7ebab8efaa" [label=""];
  "sha256:301fc0439d445a99360d9d348b2a861ef71f77e288c3db6c33fd46e20c3fd563" -> "sha256:715136da91db54e902cec0a026281962f716b5140591f0831d59fe7ebab8efaa" [label=""];
  "sha256:715136da91db54e902cec0a026281962f716b5140591f0831d59fe7ebab8efaa" -> "sha256:04d64c030f10d194b423376f2d7708b6c783f76fa7c19fcbb1cc36d0f52fd880" [label=""];
}

