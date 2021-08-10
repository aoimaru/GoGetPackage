[app/sources/341904266.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:12d3ce1cf69ef3a3baf8ee54b3f5100ec2936caf70b25aeafdb6b72cf715d620" [label="local://context" shape="ellipse"];
  "sha256:81de7fa01045b256adb5ca042e1e96293dcad6bd5f021f52dbcead49e4ebc9f0" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:705c87fd1476fbbfeb803bf1a1349a5b0c873c6a0c2fbdae0c7244dc17effc78" [label="sha256:705c87fd1476fbbfeb803bf1a1349a5b0c873c6a0c2fbdae0c7244dc17effc78" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:81de7fa01045b256adb5ca042e1e96293dcad6bd5f021f52dbcead49e4ebc9f0" [label=""];
  "sha256:12d3ce1cf69ef3a3baf8ee54b3f5100ec2936caf70b25aeafdb6b72cf715d620" -> "sha256:81de7fa01045b256adb5ca042e1e96293dcad6bd5f021f52dbcead49e4ebc9f0" [label=""];
  "sha256:81de7fa01045b256adb5ca042e1e96293dcad6bd5f021f52dbcead49e4ebc9f0" -> "sha256:705c87fd1476fbbfeb803bf1a1349a5b0c873c6a0c2fbdae0c7244dc17effc78" [label=""];
}

