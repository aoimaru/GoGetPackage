[app/sources/342066758.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:1d17a63829bccdbaddeb074887e4a33af89693d53368e7d7587dd384f8bf8e0f" [label="local://context" shape="ellipse"];
  "sha256:fae8cdb3671499c3296db62c47cf2d1807421257fbef67bf42acb3697eb8702b" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:732eb81e85bb99b19201ec05a44ec1812f6e6a54503c35d810ed5a4e658665db" [label="pip install feedparser" shape="box"];
  "sha256:fb2326fe7040115b321f69bc55c473612f878e449f98865245e8a0cfca60ba52" [label="pip install console" shape="box"];
  "sha256:24cda3d5e2c942bc75fedd973e451255794d9e222de2df2dc8a385b57fcd2a7f" [label="sha256:24cda3d5e2c942bc75fedd973e451255794d9e222de2df2dc8a385b57fcd2a7f" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:fae8cdb3671499c3296db62c47cf2d1807421257fbef67bf42acb3697eb8702b" [label=""];
  "sha256:1d17a63829bccdbaddeb074887e4a33af89693d53368e7d7587dd384f8bf8e0f" -> "sha256:fae8cdb3671499c3296db62c47cf2d1807421257fbef67bf42acb3697eb8702b" [label=""];
  "sha256:fae8cdb3671499c3296db62c47cf2d1807421257fbef67bf42acb3697eb8702b" -> "sha256:732eb81e85bb99b19201ec05a44ec1812f6e6a54503c35d810ed5a4e658665db" [label=""];
  "sha256:732eb81e85bb99b19201ec05a44ec1812f6e6a54503c35d810ed5a4e658665db" -> "sha256:fb2326fe7040115b321f69bc55c473612f878e449f98865245e8a0cfca60ba52" [label=""];
  "sha256:fb2326fe7040115b321f69bc55c473612f878e449f98865245e8a0cfca60ba52" -> "sha256:24cda3d5e2c942bc75fedd973e451255794d9e222de2df2dc8a385b57fcd2a7f" [label=""];
}

