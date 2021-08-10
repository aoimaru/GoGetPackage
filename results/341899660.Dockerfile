[app/sources/341899660.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:89e231a4c4ba1ff6dcd07376e861b6579fc1332066fca8269827db5d0a9e29fc" [label="local://context" shape="ellipse"];
  "sha256:b87b26bc9f2f7655124017431077626c2fdd49adddf645b229fed0a1d2b2404c" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:7330142ce24f2c9f7c5f39603eadef62fe7ec3f6cd648f7d346f4ad57e88ab0a" [label="sha256:7330142ce24f2c9f7c5f39603eadef62fe7ec3f6cd648f7d346f4ad57e88ab0a" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:b87b26bc9f2f7655124017431077626c2fdd49adddf645b229fed0a1d2b2404c" [label=""];
  "sha256:89e231a4c4ba1ff6dcd07376e861b6579fc1332066fca8269827db5d0a9e29fc" -> "sha256:b87b26bc9f2f7655124017431077626c2fdd49adddf645b229fed0a1d2b2404c" [label=""];
  "sha256:b87b26bc9f2f7655124017431077626c2fdd49adddf645b229fed0a1d2b2404c" -> "sha256:7330142ce24f2c9f7c5f39603eadef62fe7ec3f6cd648f7d346f4ad57e88ab0a" [label=""];
}

