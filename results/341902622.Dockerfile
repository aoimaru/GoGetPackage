[app/sources/341902622.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:5f14c1700eb35fd3faf7c3151223507beb660379d332d1053db76ac7bff0600d" [label="local://context" shape="ellipse"];
  "sha256:b7cf0c697b36e661737d6ad3fead7df46f20028db4abdf329187665e87a081dd" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:ca3941a7cb65b112c27c07db8a2d6902fd664fda0e46e90a71a65bf028b52894" [label="pip install tornado" shape="box"];
  "sha256:18eb7a8c82cdada3d49484ec06c2403f2953d59f89c7ede55a33d2fc61717008" [label="pip install tornado" shape="box"];
  "sha256:2c92946d38aefc7ab153121d8aabebc87838969c6cfca4497e8b15a0ef698f27" [label="pip install tornado" shape="box"];
  "sha256:c3cc3fca80a22f0bab58778dd55be2dcc4a61254dd5d96742c3c9a58759e6e3c" [label="sha256:c3cc3fca80a22f0bab58778dd55be2dcc4a61254dd5d96742c3c9a58759e6e3c" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:b7cf0c697b36e661737d6ad3fead7df46f20028db4abdf329187665e87a081dd" [label=""];
  "sha256:5f14c1700eb35fd3faf7c3151223507beb660379d332d1053db76ac7bff0600d" -> "sha256:b7cf0c697b36e661737d6ad3fead7df46f20028db4abdf329187665e87a081dd" [label=""];
  "sha256:b7cf0c697b36e661737d6ad3fead7df46f20028db4abdf329187665e87a081dd" -> "sha256:ca3941a7cb65b112c27c07db8a2d6902fd664fda0e46e90a71a65bf028b52894" [label=""];
  "sha256:ca3941a7cb65b112c27c07db8a2d6902fd664fda0e46e90a71a65bf028b52894" -> "sha256:18eb7a8c82cdada3d49484ec06c2403f2953d59f89c7ede55a33d2fc61717008" [label=""];
  "sha256:18eb7a8c82cdada3d49484ec06c2403f2953d59f89c7ede55a33d2fc61717008" -> "sha256:2c92946d38aefc7ab153121d8aabebc87838969c6cfca4497e8b15a0ef698f27" [label=""];
  "sha256:2c92946d38aefc7ab153121d8aabebc87838969c6cfca4497e8b15a0ef698f27" -> "sha256:c3cc3fca80a22f0bab58778dd55be2dcc4a61254dd5d96742c3c9a58759e6e3c" [label=""];
}

