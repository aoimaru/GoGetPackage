[app/sources/341900996.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:51959d93f94a7f92662a3500b4bd2512759241ab612dade966ec923da79c237c" [label="local://context" shape="ellipse"];
  "sha256:17288d6d7949b80d795dcca8724eeebafdaa9275a1f38e3d685beaf323a50237" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:bbc8f7c89ea0ad9b58d1983fefc5b875f228477d58cf7169bbcf8e9e36529b79" [label="sha256:bbc8f7c89ea0ad9b58d1983fefc5b875f228477d58cf7169bbcf8e9e36529b79" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:17288d6d7949b80d795dcca8724eeebafdaa9275a1f38e3d685beaf323a50237" [label=""];
  "sha256:51959d93f94a7f92662a3500b4bd2512759241ab612dade966ec923da79c237c" -> "sha256:17288d6d7949b80d795dcca8724eeebafdaa9275a1f38e3d685beaf323a50237" [label=""];
  "sha256:17288d6d7949b80d795dcca8724eeebafdaa9275a1f38e3d685beaf323a50237" -> "sha256:bbc8f7c89ea0ad9b58d1983fefc5b875f228477d58cf7169bbcf8e9e36529b79" [label=""];
}

