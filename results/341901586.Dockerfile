[app/sources/341901586.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:57c311c975a11941644849134edb9ca7e54678182a0fd73b0f40db20a3434dc1" [label="local://context" shape="ellipse"];
  "sha256:ad1e56378f3eef8277c4343c44e6b4df894e63de749f7df169ad837aeaa5d98b" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:b983ee4813f5f3ee53434d0fc92c56ce368d7deaffc2ab702a2e48a0d92d8dcd" [label="sha256:b983ee4813f5f3ee53434d0fc92c56ce368d7deaffc2ab702a2e48a0d92d8dcd" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:ad1e56378f3eef8277c4343c44e6b4df894e63de749f7df169ad837aeaa5d98b" [label=""];
  "sha256:57c311c975a11941644849134edb9ca7e54678182a0fd73b0f40db20a3434dc1" -> "sha256:ad1e56378f3eef8277c4343c44e6b4df894e63de749f7df169ad837aeaa5d98b" [label=""];
  "sha256:ad1e56378f3eef8277c4343c44e6b4df894e63de749f7df169ad837aeaa5d98b" -> "sha256:b983ee4813f5f3ee53434d0fc92c56ce368d7deaffc2ab702a2e48a0d92d8dcd" [label=""];
}

