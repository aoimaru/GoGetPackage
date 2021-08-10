[app/sources/341902502.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:866eb5ca847cad40a3e6d395256e827d9c9650e2a7448ddf7fe5da3cbaa694a9" [label="local://context" shape="ellipse"];
  "sha256:0ba3abc80ea47f20087170a29543adfaf8fdd369060b2f0787b6e5bd544c8e34" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:0150d7a2cd1cedbbdea144cd7ad662f5590510bc1d8d05fc32e3b774199662a6" [label="sha256:0150d7a2cd1cedbbdea144cd7ad662f5590510bc1d8d05fc32e3b774199662a6" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:0ba3abc80ea47f20087170a29543adfaf8fdd369060b2f0787b6e5bd544c8e34" [label=""];
  "sha256:866eb5ca847cad40a3e6d395256e827d9c9650e2a7448ddf7fe5da3cbaa694a9" -> "sha256:0ba3abc80ea47f20087170a29543adfaf8fdd369060b2f0787b6e5bd544c8e34" [label=""];
  "sha256:0ba3abc80ea47f20087170a29543adfaf8fdd369060b2f0787b6e5bd544c8e34" -> "sha256:0150d7a2cd1cedbbdea144cd7ad662f5590510bc1d8d05fc32e3b774199662a6" [label=""];
}

