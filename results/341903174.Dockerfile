[app/sources/341903174.Dockerfile]
digraph {
  "sha256:a09ea4b1d54a914eec72e462710e64c633f32fb630bf6405eda54c62b9c95e00" [label="local://context" shape="ellipse"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:23c55a113248d41f660f5c9ce29aa241bbdbcdc0c75266db016cb76c62faada6" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:e63e68b682eec9cb7da00a7f804fa422a6f0d35072a96d8ba4385497dcdcebc1" [label="sha256:e63e68b682eec9cb7da00a7f804fa422a6f0d35072a96d8ba4385497dcdcebc1" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:23c55a113248d41f660f5c9ce29aa241bbdbcdc0c75266db016cb76c62faada6" [label=""];
  "sha256:a09ea4b1d54a914eec72e462710e64c633f32fb630bf6405eda54c62b9c95e00" -> "sha256:23c55a113248d41f660f5c9ce29aa241bbdbcdc0c75266db016cb76c62faada6" [label=""];
  "sha256:23c55a113248d41f660f5c9ce29aa241bbdbcdc0c75266db016cb76c62faada6" -> "sha256:e63e68b682eec9cb7da00a7f804fa422a6f0d35072a96d8ba4385497dcdcebc1" [label=""];
}

