[app/sources/341904975.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:2792889ad64f444e12521748561bdad14493c7f44253dca2c4340b6306cd8865" [label="local://context" shape="ellipse"];
  "sha256:d9524870ae20208be866a819bb392aac43892ace5026485a29483b1e979f7b4a" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:45eb62cdf5b32d58ed6cba24ccc58cf66b935f2d42fc93bc267abd25e2b175cf" [label="sha256:45eb62cdf5b32d58ed6cba24ccc58cf66b935f2d42fc93bc267abd25e2b175cf" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:d9524870ae20208be866a819bb392aac43892ace5026485a29483b1e979f7b4a" [label=""];
  "sha256:2792889ad64f444e12521748561bdad14493c7f44253dca2c4340b6306cd8865" -> "sha256:d9524870ae20208be866a819bb392aac43892ace5026485a29483b1e979f7b4a" [label=""];
  "sha256:d9524870ae20208be866a819bb392aac43892ace5026485a29483b1e979f7b4a" -> "sha256:45eb62cdf5b32d58ed6cba24ccc58cf66b935f2d42fc93bc267abd25e2b175cf" [label=""];
}

