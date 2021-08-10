[app/sources/341898998.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:1e17b3f92ce0d062e26c9a76171e22ad7f305eab72fbcc0067124279b012e893" [label="local://context" shape="ellipse"];
  "sha256:ab0b1babed7b9322d4ccd91b1dc74602dda476e9ad02fa357480854f0334a2e8" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:d811f251a6cf64ae52032d9fbad368bcf9036a46eb7da93e3eb0ffa463917b5d" [label="sha256:d811f251a6cf64ae52032d9fbad368bcf9036a46eb7da93e3eb0ffa463917b5d" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:ab0b1babed7b9322d4ccd91b1dc74602dda476e9ad02fa357480854f0334a2e8" [label=""];
  "sha256:1e17b3f92ce0d062e26c9a76171e22ad7f305eab72fbcc0067124279b012e893" -> "sha256:ab0b1babed7b9322d4ccd91b1dc74602dda476e9ad02fa357480854f0334a2e8" [label=""];
  "sha256:ab0b1babed7b9322d4ccd91b1dc74602dda476e9ad02fa357480854f0334a2e8" -> "sha256:d811f251a6cf64ae52032d9fbad368bcf9036a46eb7da93e3eb0ffa463917b5d" [label=""];
}

