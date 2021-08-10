[app/sources/341903554.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:f83f03191ac9501b4d35384c69d4dfee797a8f436d007882ebd208476da58e31" [label="local://context" shape="ellipse"];
  "sha256:ca813b0190e0ab172b7ff722084e56f5edc153aab34e2407b7b08e85e0ab0009" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:5e8a294b6eb40e40e1787729f9c01e5bcd560c7e054c4fab057ec83e9bd5d02b" [label="sha256:5e8a294b6eb40e40e1787729f9c01e5bcd560c7e054c4fab057ec83e9bd5d02b" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:ca813b0190e0ab172b7ff722084e56f5edc153aab34e2407b7b08e85e0ab0009" [label=""];
  "sha256:f83f03191ac9501b4d35384c69d4dfee797a8f436d007882ebd208476da58e31" -> "sha256:ca813b0190e0ab172b7ff722084e56f5edc153aab34e2407b7b08e85e0ab0009" [label=""];
  "sha256:ca813b0190e0ab172b7ff722084e56f5edc153aab34e2407b7b08e85e0ab0009" -> "sha256:5e8a294b6eb40e40e1787729f9c01e5bcd560c7e054c4fab057ec83e9bd5d02b" [label=""];
}

