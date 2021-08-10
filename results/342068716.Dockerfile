[app/sources/342068716.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:7de49116dbd2abf653c410cdf8408c7034ddff4ab8992808fd29fd849d6b093b" [label="local://context" shape="ellipse"];
  "sha256:f119d7d2211e05d29f4d7eb273a1b7af3a6284c03bde0328647c968240edd2f7" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:bc30d7957cc9755ec1d8b1982fea35684d299ffdab568f3152b468af2b9df175" [label="pip install requests" shape="box"];
  "sha256:03dce0247ab478035833c3e39b0ab6293f737d981e8af8e95f526ae8e82c41d2" [label="pip install boto" shape="box"];
  "sha256:120a3043bfac3fcc4e482e9ad54c68c86037a1d8af802b66a46b554b6f22f483" [label="sha256:120a3043bfac3fcc4e482e9ad54c68c86037a1d8af802b66a46b554b6f22f483" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:f119d7d2211e05d29f4d7eb273a1b7af3a6284c03bde0328647c968240edd2f7" [label=""];
  "sha256:7de49116dbd2abf653c410cdf8408c7034ddff4ab8992808fd29fd849d6b093b" -> "sha256:f119d7d2211e05d29f4d7eb273a1b7af3a6284c03bde0328647c968240edd2f7" [label=""];
  "sha256:f119d7d2211e05d29f4d7eb273a1b7af3a6284c03bde0328647c968240edd2f7" -> "sha256:bc30d7957cc9755ec1d8b1982fea35684d299ffdab568f3152b468af2b9df175" [label=""];
  "sha256:bc30d7957cc9755ec1d8b1982fea35684d299ffdab568f3152b468af2b9df175" -> "sha256:03dce0247ab478035833c3e39b0ab6293f737d981e8af8e95f526ae8e82c41d2" [label=""];
  "sha256:03dce0247ab478035833c3e39b0ab6293f737d981e8af8e95f526ae8e82c41d2" -> "sha256:120a3043bfac3fcc4e482e9ad54c68c86037a1d8af802b66a46b554b6f22f483" [label=""];
}

