[app/sources/341904124.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:9c3f0c6e83e24e6925515cb543933c33f79ce8ca819ad1514bd2a6f2711be4ef" [label="local://context" shape="ellipse"];
  "sha256:5dee04ed2a71fa0ad29613d5b6023f87d7add19c8aba90a5e7ca7dfc1820265f" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:c52d16891bab25f45b2e818204ea9e4eb547f9fe2cb628e9e08eedbd52c8660f" [label="pip install base58" shape="box"];
  "sha256:3fe365a819c532f6eff47c784850a4853d60399966030a073d0e2c26371cd008" [label="sha256:3fe365a819c532f6eff47c784850a4853d60399966030a073d0e2c26371cd008" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:5dee04ed2a71fa0ad29613d5b6023f87d7add19c8aba90a5e7ca7dfc1820265f" [label=""];
  "sha256:9c3f0c6e83e24e6925515cb543933c33f79ce8ca819ad1514bd2a6f2711be4ef" -> "sha256:5dee04ed2a71fa0ad29613d5b6023f87d7add19c8aba90a5e7ca7dfc1820265f" [label=""];
  "sha256:5dee04ed2a71fa0ad29613d5b6023f87d7add19c8aba90a5e7ca7dfc1820265f" -> "sha256:c52d16891bab25f45b2e818204ea9e4eb547f9fe2cb628e9e08eedbd52c8660f" [label=""];
  "sha256:c52d16891bab25f45b2e818204ea9e4eb547f9fe2cb628e9e08eedbd52c8660f" -> "sha256:3fe365a819c532f6eff47c784850a4853d60399966030a073d0e2c26371cd008" [label=""];
}

