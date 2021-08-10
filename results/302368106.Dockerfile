[app/sources/302368106.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:4fbac69f54246aba51b5ba476192710b1ec6906461b1f1ce6236014e50bea4a2" [label="/bin/sh -c pip install nose requests" shape="box"];
  "sha256:cee8cd7e8d2e184c203a319ce3da8522b57ac5759d64e8d59af531fbcac21681" [label="mkdir{path=/code}" shape="note"];
  "sha256:e021ad3718e1b62d98ad6b730db4cde477e36d4959a5ce13a6bc0d62b47c48cf" [label="sha256:e021ad3718e1b62d98ad6b730db4cde477e36d4959a5ce13a6bc0d62b47c48cf" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:4fbac69f54246aba51b5ba476192710b1ec6906461b1f1ce6236014e50bea4a2" [label=""];
  "sha256:4fbac69f54246aba51b5ba476192710b1ec6906461b1f1ce6236014e50bea4a2" -> "sha256:cee8cd7e8d2e184c203a319ce3da8522b57ac5759d64e8d59af531fbcac21681" [label=""];
  "sha256:cee8cd7e8d2e184c203a319ce3da8522b57ac5759d64e8d59af531fbcac21681" -> "sha256:e021ad3718e1b62d98ad6b730db4cde477e36d4959a5ce13a6bc0d62b47c48cf" [label=""];
}

