[app/sources/341899222.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:acfcb80784a9bd24368a463710a883fa54bdc488d044b41d66f63757f3399841" [label="local://context" shape="ellipse"];
  "sha256:1799fe50fba6a43e509e558d4d7d131cb170f82c286fb9015dc6e6cc23f51cad" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:dd7eb057bc1e8b36b532f01c0136e715548afcd114f6e6e56a7bacab2b844d91" [label="sha256:dd7eb057bc1e8b36b532f01c0136e715548afcd114f6e6e56a7bacab2b844d91" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:1799fe50fba6a43e509e558d4d7d131cb170f82c286fb9015dc6e6cc23f51cad" [label=""];
  "sha256:acfcb80784a9bd24368a463710a883fa54bdc488d044b41d66f63757f3399841" -> "sha256:1799fe50fba6a43e509e558d4d7d131cb170f82c286fb9015dc6e6cc23f51cad" [label=""];
  "sha256:1799fe50fba6a43e509e558d4d7d131cb170f82c286fb9015dc6e6cc23f51cad" -> "sha256:dd7eb057bc1e8b36b532f01c0136e715548afcd114f6e6e56a7bacab2b844d91" [label=""];
}

