[app/sources/326404578.Dockerfile]
digraph {
  "sha256:3dc7c3c9eb8fd79c79cf7b12f60850e3a5204e2d939e6cbcb34b34d562b97b3e" [label="local://context" shape="ellipse"];
  "sha256:f42a00150f5f8b5ea27efb1fcbf0c02fbac1f4746e833e8ba9a06487c76ba274" [label="docker-image://docker.io/rocketmqinc/rocketmq:4.4.0" shape="ellipse"];
  "sha256:5c06fcf2988ecf32790eb676a98eeb5819d3284d22aca91bbfd9a9db13514c00" [label="copy{src=/brokerGenConfig.sh, dest=/bin/},copy{src=/brokerStart.sh, dest=/bin/}" shape="note"];
  "sha256:fea29e659bff0b9304dd4d23e870642d6b2c62f597ce2144a5dd681140ccd501" [label="/bin/sh -c chmod +x ${ROCKETMQ_HOME}/bin/brokerGenConfig.sh  && chmod +x ${ROCKETMQ_HOME}/bin/brokerStart.sh" shape="box"];
  "sha256:4dfd0d1931a00267e1fddf9f81192ec3df9baeb7697bc553b6a710333b8e170e" [label="sha256:4dfd0d1931a00267e1fddf9f81192ec3df9baeb7697bc553b6a710333b8e170e" shape="plaintext"];
  "sha256:f42a00150f5f8b5ea27efb1fcbf0c02fbac1f4746e833e8ba9a06487c76ba274" -> "sha256:5c06fcf2988ecf32790eb676a98eeb5819d3284d22aca91bbfd9a9db13514c00" [label=""];
  "sha256:3dc7c3c9eb8fd79c79cf7b12f60850e3a5204e2d939e6cbcb34b34d562b97b3e" -> "sha256:5c06fcf2988ecf32790eb676a98eeb5819d3284d22aca91bbfd9a9db13514c00" [label=""];
  "sha256:5c06fcf2988ecf32790eb676a98eeb5819d3284d22aca91bbfd9a9db13514c00" -> "sha256:fea29e659bff0b9304dd4d23e870642d6b2c62f597ce2144a5dd681140ccd501" [label=""];
  "sha256:fea29e659bff0b9304dd4d23e870642d6b2c62f597ce2144a5dd681140ccd501" -> "sha256:4dfd0d1931a00267e1fddf9f81192ec3df9baeb7697bc553b6a710333b8e170e" [label=""];
}

