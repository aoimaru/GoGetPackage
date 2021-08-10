[app/sources/341904310.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:dc9fad573af85cfa39597bc69755ebbdd99fbf95a5acb8b54e24d09f55b54b9a" [label="local://context" shape="ellipse"];
  "sha256:bb37ad398a5d3c3fdd940de64df793058a8b9d714d0a8abbf6aa64ec3f283620" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:4df1b48206dd2f689b9e2f41f5ef137731f8675272a8a31a173de27da6273f50" [label="pip install redis" shape="box"];
  "sha256:481d90d10bfcb78cb3da5b08954a1741091f92171e0130deea7f86c275e678f3" [label="sha256:481d90d10bfcb78cb3da5b08954a1741091f92171e0130deea7f86c275e678f3" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:bb37ad398a5d3c3fdd940de64df793058a8b9d714d0a8abbf6aa64ec3f283620" [label=""];
  "sha256:dc9fad573af85cfa39597bc69755ebbdd99fbf95a5acb8b54e24d09f55b54b9a" -> "sha256:bb37ad398a5d3c3fdd940de64df793058a8b9d714d0a8abbf6aa64ec3f283620" [label=""];
  "sha256:bb37ad398a5d3c3fdd940de64df793058a8b9d714d0a8abbf6aa64ec3f283620" -> "sha256:4df1b48206dd2f689b9e2f41f5ef137731f8675272a8a31a173de27da6273f50" [label=""];
  "sha256:4df1b48206dd2f689b9e2f41f5ef137731f8675272a8a31a173de27da6273f50" -> "sha256:481d90d10bfcb78cb3da5b08954a1741091f92171e0130deea7f86c275e678f3" [label=""];
}

