[app/sources/341903322.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:f1af78d044e5b0f04e8d0660ad1de091847819bf5ef484a425f4a0eb95743177" [label="local://context" shape="ellipse"];
  "sha256:1618100fdbafbfa2b6e0607e0478a6236cba0fdc0be814ba1ad6da33ae49fc99" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:3e8fac862b9b0bc8935069940d0949ae44026d9d77a843f6803e419b1ddbb735" [label="pip install flask" shape="box"];
  "sha256:f93fbb877d6b4b11701bf9a885a25dff89ca706bf7e40a1984f4f1574db596dd" [label="sha256:f93fbb877d6b4b11701bf9a885a25dff89ca706bf7e40a1984f4f1574db596dd" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:1618100fdbafbfa2b6e0607e0478a6236cba0fdc0be814ba1ad6da33ae49fc99" [label=""];
  "sha256:f1af78d044e5b0f04e8d0660ad1de091847819bf5ef484a425f4a0eb95743177" -> "sha256:1618100fdbafbfa2b6e0607e0478a6236cba0fdc0be814ba1ad6da33ae49fc99" [label=""];
  "sha256:1618100fdbafbfa2b6e0607e0478a6236cba0fdc0be814ba1ad6da33ae49fc99" -> "sha256:3e8fac862b9b0bc8935069940d0949ae44026d9d77a843f6803e419b1ddbb735" [label=""];
  "sha256:3e8fac862b9b0bc8935069940d0949ae44026d9d77a843f6803e419b1ddbb735" -> "sha256:f93fbb877d6b4b11701bf9a885a25dff89ca706bf7e40a1984f4f1574db596dd" [label=""];
}

