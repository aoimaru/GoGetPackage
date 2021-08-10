[app/sources/474996353.Dockerfile]
digraph {
  "sha256:a7bd314b6166c719cb701371fe09032a60503cb085f191fa851af3a04e0432b7" [label="local://context" shape="ellipse"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:96abe4263e601522555df65506deddfb37c6cb32465e696bd80b4d63ceb18a49" [label="copy{src=/Dockerfile, dest=/root/}" shape="note"];
  "sha256:77ae705435632e2855321dc12abec8672fc6b5d727beafce981da1c6155beee3" [label="/bin/sh -c apt-get update &&     apt-get -y install apache2 &&     apt-get clean" shape="box"];
  "sha256:bd7511c01d31f1868c761ce6b05c41874c7529dab5ece16f905a3cc9e033234c" [label="/bin/sh -c echo \"SUCCESS debian_httpd\" > /var/www/html/index.html" shape="box"];
  "sha256:e79a40df956177262800d1357bc0339413baf70314f044f5fe8d13a7cbf992df" [label="copy{src=/apache2-foreground, dest=/usr/local/bin/}" shape="note"];
  "sha256:f35c6d5b9618f7fefe3f589298ff0b0cfa98e01f0763c83585afeb5a6f46a0e0" [label="sha256:f35c6d5b9618f7fefe3f589298ff0b0cfa98e01f0763c83585afeb5a6f46a0e0" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:96abe4263e601522555df65506deddfb37c6cb32465e696bd80b4d63ceb18a49" [label=""];
  "sha256:a7bd314b6166c719cb701371fe09032a60503cb085f191fa851af3a04e0432b7" -> "sha256:96abe4263e601522555df65506deddfb37c6cb32465e696bd80b4d63ceb18a49" [label=""];
  "sha256:96abe4263e601522555df65506deddfb37c6cb32465e696bd80b4d63ceb18a49" -> "sha256:77ae705435632e2855321dc12abec8672fc6b5d727beafce981da1c6155beee3" [label=""];
  "sha256:77ae705435632e2855321dc12abec8672fc6b5d727beafce981da1c6155beee3" -> "sha256:bd7511c01d31f1868c761ce6b05c41874c7529dab5ece16f905a3cc9e033234c" [label=""];
  "sha256:bd7511c01d31f1868c761ce6b05c41874c7529dab5ece16f905a3cc9e033234c" -> "sha256:e79a40df956177262800d1357bc0339413baf70314f044f5fe8d13a7cbf992df" [label=""];
  "sha256:a7bd314b6166c719cb701371fe09032a60503cb085f191fa851af3a04e0432b7" -> "sha256:e79a40df956177262800d1357bc0339413baf70314f044f5fe8d13a7cbf992df" [label=""];
  "sha256:e79a40df956177262800d1357bc0339413baf70314f044f5fe8d13a7cbf992df" -> "sha256:f35c6d5b9618f7fefe3f589298ff0b0cfa98e01f0763c83585afeb5a6f46a0e0" [label=""];
}

