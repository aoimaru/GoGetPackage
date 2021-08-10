[app/sources/341900646.Dockerfile]
digraph {
  "sha256:24add6137b47f6b8763e432d91d30ee800a0995e7dce4f2fd478aa80aec1e189" [label="local://context" shape="ellipse"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:7897ae1810e2e04f4a8664234294650c04d71cda23b9dbda647eeec4266ad9b3" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:d7a7b2e6bcdca65205a8d43a80be08ca4ec65cae126e0c32d807eed65955b746" [label="sha256:d7a7b2e6bcdca65205a8d43a80be08ca4ec65cae126e0c32d807eed65955b746" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:7897ae1810e2e04f4a8664234294650c04d71cda23b9dbda647eeec4266ad9b3" [label=""];
  "sha256:24add6137b47f6b8763e432d91d30ee800a0995e7dce4f2fd478aa80aec1e189" -> "sha256:7897ae1810e2e04f4a8664234294650c04d71cda23b9dbda647eeec4266ad9b3" [label=""];
  "sha256:7897ae1810e2e04f4a8664234294650c04d71cda23b9dbda647eeec4266ad9b3" -> "sha256:d7a7b2e6bcdca65205a8d43a80be08ca4ec65cae126e0c32d807eed65955b746" [label=""];
}

