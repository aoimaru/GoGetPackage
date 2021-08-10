[app/sources/341899716.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:86a71dd9661fe00369b5a2bb3772e635508716228994c52844da3c6400c0909d" [label="local://context" shape="ellipse"];
  "sha256:2bd019901ef54c19a443e50e66f71e6a705eafa61fa750bbc6fa6ee880776124" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:75efd3321c689bd77221c1f01c07d39540e89f47f7db8d67eece93e7de1c7d3e" [label="sha256:75efd3321c689bd77221c1f01c07d39540e89f47f7db8d67eece93e7de1c7d3e" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:2bd019901ef54c19a443e50e66f71e6a705eafa61fa750bbc6fa6ee880776124" [label=""];
  "sha256:86a71dd9661fe00369b5a2bb3772e635508716228994c52844da3c6400c0909d" -> "sha256:2bd019901ef54c19a443e50e66f71e6a705eafa61fa750bbc6fa6ee880776124" [label=""];
  "sha256:2bd019901ef54c19a443e50e66f71e6a705eafa61fa750bbc6fa6ee880776124" -> "sha256:75efd3321c689bd77221c1f01c07d39540e89f47f7db8d67eece93e7de1c7d3e" [label=""];
}

