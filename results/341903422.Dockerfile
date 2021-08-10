[app/sources/341903422.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:924c8ca3a8c6329aeeba16a0da81c98f18f0e0b479b46701a4da44b18eecfd5b" [label="local://context" shape="ellipse"];
  "sha256:b73b9e4acf58ad621ceb786bdae470cdb78a40485ac25784a7534bf8e1c92eaa" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:c0f85affe9947d55b52e4a25e169ceb3704dd26088d6d2c4cdfd90572618bf5f" [label="sha256:c0f85affe9947d55b52e4a25e169ceb3704dd26088d6d2c4cdfd90572618bf5f" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:b73b9e4acf58ad621ceb786bdae470cdb78a40485ac25784a7534bf8e1c92eaa" [label=""];
  "sha256:924c8ca3a8c6329aeeba16a0da81c98f18f0e0b479b46701a4da44b18eecfd5b" -> "sha256:b73b9e4acf58ad621ceb786bdae470cdb78a40485ac25784a7534bf8e1c92eaa" [label=""];
  "sha256:b73b9e4acf58ad621ceb786bdae470cdb78a40485ac25784a7534bf8e1c92eaa" -> "sha256:c0f85affe9947d55b52e4a25e169ceb3704dd26088d6d2c4cdfd90572618bf5f" [label=""];
}

