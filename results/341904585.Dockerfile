[app/sources/341904585.Dockerfile]
digraph {
  "sha256:84df8ed06d8c937b5705641c3c89d6362f33f55ebf1c78b37df43e3c6cda4ad0" [label="local://context" shape="ellipse"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:f1d8b7dc0c345dd8db4b1ed21ecb87d59228f53e637f2e5401aba019c129b8f3" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:3c11c076d71c5cc6afef3aa07a7bf92ad0b6ca9c78c2ffc9116c5b7aae2e3aba" [label="sha256:3c11c076d71c5cc6afef3aa07a7bf92ad0b6ca9c78c2ffc9116c5b7aae2e3aba" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:f1d8b7dc0c345dd8db4b1ed21ecb87d59228f53e637f2e5401aba019c129b8f3" [label=""];
  "sha256:84df8ed06d8c937b5705641c3c89d6362f33f55ebf1c78b37df43e3c6cda4ad0" -> "sha256:f1d8b7dc0c345dd8db4b1ed21ecb87d59228f53e637f2e5401aba019c129b8f3" [label=""];
  "sha256:f1d8b7dc0c345dd8db4b1ed21ecb87d59228f53e637f2e5401aba019c129b8f3" -> "sha256:3c11c076d71c5cc6afef3aa07a7bf92ad0b6ca9c78c2ffc9116c5b7aae2e3aba" [label=""];
}

