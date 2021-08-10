[app/sources/307068600.Dockerfile]
digraph {
  "sha256:fe4e4fb1d5c0b0c5e1da137c94335b075b295066d29a03b8b3a69529a873f27b" [label="docker-image://docker.io/library/jenkins:latest" shape="ellipse"];
  "sha256:712f7a4f66d047c2ef0316151dd19fa4b7bf1b5808a6e6002ab9a14105a98186" [label="local://context" shape="ellipse"];
  "sha256:8876d4ff99365737d7f89fa3cd5c9e2ae0a94db5f4adcef60f3b15220d04b2d8" [label="copy{src=/bin/release-ci, dest=/usr/bin/release-ci}" shape="note"];
  "sha256:0a880a973ed54efb541608569402603d4f49e333ee948ba395e659e659b5daf7" [label="sha256:0a880a973ed54efb541608569402603d4f49e333ee948ba395e659e659b5daf7" shape="plaintext"];
  "sha256:fe4e4fb1d5c0b0c5e1da137c94335b075b295066d29a03b8b3a69529a873f27b" -> "sha256:8876d4ff99365737d7f89fa3cd5c9e2ae0a94db5f4adcef60f3b15220d04b2d8" [label=""];
  "sha256:712f7a4f66d047c2ef0316151dd19fa4b7bf1b5808a6e6002ab9a14105a98186" -> "sha256:8876d4ff99365737d7f89fa3cd5c9e2ae0a94db5f4adcef60f3b15220d04b2d8" [label=""];
  "sha256:8876d4ff99365737d7f89fa3cd5c9e2ae0a94db5f4adcef60f3b15220d04b2d8" -> "sha256:0a880a973ed54efb541608569402603d4f49e333ee948ba395e659e659b5daf7" [label=""];
}

