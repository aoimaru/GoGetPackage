[app/sources/342068454.Dockerfile]
digraph {
  "sha256:219301a9634bdae8aea3d7a0cf24937435e196563628e0e1b4fc118dfff6fee7" [label="local://context" shape="ellipse"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:1a2af2258947f903a036e422d475fdc982bbec3dd52305065612746b3aea844d" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:13c2279890d47c119b70c40b059d0952776415bdd5c6b49b8c99cbc4d3b679e1" [label="pip install zmq" shape="box"];
  "sha256:dbdf96553821c6458d78e060e500bf33af37248d89b7a8f3f4e381a3c8a3a920" [label="pip install numpy" shape="box"];
  "sha256:329abe4bab3f8455345dcfc00e7cc9d3e8bc801f0eac0b1d7705fc380f8ed1bd" [label="sha256:329abe4bab3f8455345dcfc00e7cc9d3e8bc801f0eac0b1d7705fc380f8ed1bd" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:1a2af2258947f903a036e422d475fdc982bbec3dd52305065612746b3aea844d" [label=""];
  "sha256:219301a9634bdae8aea3d7a0cf24937435e196563628e0e1b4fc118dfff6fee7" -> "sha256:1a2af2258947f903a036e422d475fdc982bbec3dd52305065612746b3aea844d" [label=""];
  "sha256:1a2af2258947f903a036e422d475fdc982bbec3dd52305065612746b3aea844d" -> "sha256:13c2279890d47c119b70c40b059d0952776415bdd5c6b49b8c99cbc4d3b679e1" [label=""];
  "sha256:13c2279890d47c119b70c40b059d0952776415bdd5c6b49b8c99cbc4d3b679e1" -> "sha256:dbdf96553821c6458d78e060e500bf33af37248d89b7a8f3f4e381a3c8a3a920" [label=""];
  "sha256:dbdf96553821c6458d78e060e500bf33af37248d89b7a8f3f4e381a3c8a3a920" -> "sha256:329abe4bab3f8455345dcfc00e7cc9d3e8bc801f0eac0b1d7705fc380f8ed1bd" [label=""];
}

