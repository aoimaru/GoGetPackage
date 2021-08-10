[app/sources/341902048.Dockerfile]
digraph {
  "sha256:690f20d6153dd141976c46feec6ac893ec092ecc4b9c234270f47eacada73134" [label="local://context" shape="ellipse"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:a736a8fc19e39fa3bb81f20e2b2b67750eb36afb0f6cc9d57ed4869e1a76426c" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:396a9900fb0b100005662ec0f614bfc28f7b81c7580c3ab70f676f5b26421a43" [label="sha256:396a9900fb0b100005662ec0f614bfc28f7b81c7580c3ab70f676f5b26421a43" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:a736a8fc19e39fa3bb81f20e2b2b67750eb36afb0f6cc9d57ed4869e1a76426c" [label=""];
  "sha256:690f20d6153dd141976c46feec6ac893ec092ecc4b9c234270f47eacada73134" -> "sha256:a736a8fc19e39fa3bb81f20e2b2b67750eb36afb0f6cc9d57ed4869e1a76426c" [label=""];
  "sha256:a736a8fc19e39fa3bb81f20e2b2b67750eb36afb0f6cc9d57ed4869e1a76426c" -> "sha256:396a9900fb0b100005662ec0f614bfc28f7b81c7580c3ab70f676f5b26421a43" [label=""];
}

