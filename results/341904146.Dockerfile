[app/sources/341904146.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:084db45bf9a49f758caef73e0109776c6eebbb649136f702a2d4fbf715d44c74" [label="local://context" shape="ellipse"];
  "sha256:eb8cf5204fb762a05d64848aeb3c4f73cbcac0fb019eed0676cb56175fd52575" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:0b60d69e0b212a14aab658be92f7273b9d179291444256b072ea6692db16077f" [label="sha256:0b60d69e0b212a14aab658be92f7273b9d179291444256b072ea6692db16077f" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:eb8cf5204fb762a05d64848aeb3c4f73cbcac0fb019eed0676cb56175fd52575" [label=""];
  "sha256:084db45bf9a49f758caef73e0109776c6eebbb649136f702a2d4fbf715d44c74" -> "sha256:eb8cf5204fb762a05d64848aeb3c4f73cbcac0fb019eed0676cb56175fd52575" [label=""];
  "sha256:eb8cf5204fb762a05d64848aeb3c4f73cbcac0fb019eed0676cb56175fd52575" -> "sha256:0b60d69e0b212a14aab658be92f7273b9d179291444256b072ea6692db16077f" [label=""];
}

