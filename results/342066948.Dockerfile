[app/sources/342066948.Dockerfile]
digraph {
  "sha256:6e4b85cd9118b99ffd4d920b09537a15c46514d2b7d73a28b99f568e7c138e81" [label="local://context" shape="ellipse"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:d196bf90dd14e627467ecb045649884c539763fbc0f174cfe3a1272a1bec8143" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:226cc37ad42482eec14e17ae1fbb159ba2c0952458dc78dad0c6a44a9701ab01" [label="sha256:226cc37ad42482eec14e17ae1fbb159ba2c0952458dc78dad0c6a44a9701ab01" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:d196bf90dd14e627467ecb045649884c539763fbc0f174cfe3a1272a1bec8143" [label=""];
  "sha256:6e4b85cd9118b99ffd4d920b09537a15c46514d2b7d73a28b99f568e7c138e81" -> "sha256:d196bf90dd14e627467ecb045649884c539763fbc0f174cfe3a1272a1bec8143" [label=""];
  "sha256:d196bf90dd14e627467ecb045649884c539763fbc0f174cfe3a1272a1bec8143" -> "sha256:226cc37ad42482eec14e17ae1fbb159ba2c0952458dc78dad0c6a44a9701ab01" [label=""];
}

