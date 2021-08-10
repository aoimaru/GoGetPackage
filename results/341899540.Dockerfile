[app/sources/341899540.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:ff212bec67195f9836a87b98a2240582cbbf48f91e39181ce5e189f556ef52e2" [label="local://context" shape="ellipse"];
  "sha256:8b40e69842f2f2e4ef5b194b4b83396acf2f2729973f1a24ee881ceb23ebb48a" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:edafb5064cc49af3f43ef0857d4f9195abd0dbba1744999f3afebbe5808f6b87" [label="sha256:edafb5064cc49af3f43ef0857d4f9195abd0dbba1744999f3afebbe5808f6b87" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:8b40e69842f2f2e4ef5b194b4b83396acf2f2729973f1a24ee881ceb23ebb48a" [label=""];
  "sha256:ff212bec67195f9836a87b98a2240582cbbf48f91e39181ce5e189f556ef52e2" -> "sha256:8b40e69842f2f2e4ef5b194b4b83396acf2f2729973f1a24ee881ceb23ebb48a" [label=""];
  "sha256:8b40e69842f2f2e4ef5b194b4b83396acf2f2729973f1a24ee881ceb23ebb48a" -> "sha256:edafb5064cc49af3f43ef0857d4f9195abd0dbba1744999f3afebbe5808f6b87" [label=""];
}

