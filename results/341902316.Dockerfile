[app/sources/341902316.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:660db1fb5c637c34f6537c9b8f67ed351c8f3b50544bb32afe33068f44b1029e" [label="local://context" shape="ellipse"];
  "sha256:b7bd1999c44238aa2bfc8941c204822f134e37908c5fe8ee6d2c9954df3a4db9" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:aa1ef94d760d3e031dacda011b2ef15f268f7dccc4594227d5aaec5ab51ac0c5" [label="pip install numpy" shape="box"];
  "sha256:b643444debc1744283b23c1d04d12670c58c9c1087e9c1d36faa9c11544bd8a7" [label="sha256:b643444debc1744283b23c1d04d12670c58c9c1087e9c1d36faa9c11544bd8a7" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:b7bd1999c44238aa2bfc8941c204822f134e37908c5fe8ee6d2c9954df3a4db9" [label=""];
  "sha256:660db1fb5c637c34f6537c9b8f67ed351c8f3b50544bb32afe33068f44b1029e" -> "sha256:b7bd1999c44238aa2bfc8941c204822f134e37908c5fe8ee6d2c9954df3a4db9" [label=""];
  "sha256:b7bd1999c44238aa2bfc8941c204822f134e37908c5fe8ee6d2c9954df3a4db9" -> "sha256:aa1ef94d760d3e031dacda011b2ef15f268f7dccc4594227d5aaec5ab51ac0c5" [label=""];
  "sha256:aa1ef94d760d3e031dacda011b2ef15f268f7dccc4594227d5aaec5ab51ac0c5" -> "sha256:b643444debc1744283b23c1d04d12670c58c9c1087e9c1d36faa9c11544bd8a7" [label=""];
}

