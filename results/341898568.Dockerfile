[app/sources/341898568.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:3a16aacc7e2b34b09724b8027781de933a6dea0e636056e1bfeedd2b3510d029" [label="local://context" shape="ellipse"];
  "sha256:e302483fc1fd700aa992f5fe743b3ab3ed153632e3ccc45019dc1a205487b3a3" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:60a0900cebd282411af9320991d0c9fa5e2a9d91c69dc4c94404b1b71c618a95" [label="pip install lz4" shape="box"];
  "sha256:c3813fc7478799e552167cf69f839a6245a9fb5870102059944df761a555c323" [label="sha256:c3813fc7478799e552167cf69f839a6245a9fb5870102059944df761a555c323" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:e302483fc1fd700aa992f5fe743b3ab3ed153632e3ccc45019dc1a205487b3a3" [label=""];
  "sha256:3a16aacc7e2b34b09724b8027781de933a6dea0e636056e1bfeedd2b3510d029" -> "sha256:e302483fc1fd700aa992f5fe743b3ab3ed153632e3ccc45019dc1a205487b3a3" [label=""];
  "sha256:e302483fc1fd700aa992f5fe743b3ab3ed153632e3ccc45019dc1a205487b3a3" -> "sha256:60a0900cebd282411af9320991d0c9fa5e2a9d91c69dc4c94404b1b71c618a95" [label=""];
  "sha256:60a0900cebd282411af9320991d0c9fa5e2a9d91c69dc4c94404b1b71c618a95" -> "sha256:c3813fc7478799e552167cf69f839a6245a9fb5870102059944df761a555c323" [label=""];
}
