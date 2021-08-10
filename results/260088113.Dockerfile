[app/sources/260088113.Dockerfile]
digraph {
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" [label="docker-image://docker.io/library/alpine:3.3" shape="ellipse"];
  "sha256:f913f668b6977cbb9ddb7965be8f341849afe6458b2bcd788b66db89409f9d1b" [label="/bin/sh -c apk update" shape="box"];
  "sha256:fa62b6a71d899937f99b0ffeac930d9e87a208f7f9b87092be5c5ac484a05fc0" [label="/bin/sh -c apk add openssh" shape="box"];
  "sha256:6e56ae8751d6c04167c2fe5ba4d3622f1477fd4a7f63e01064e13034e244856b" [label="local://context" shape="ellipse"];
  "sha256:528695d91f86a185c2e24f8300616a4a95c46f0eebb3243036ae1145b5a54751" [label="copy{src=/start.ash, dest=/start.ash}" shape="note"];
  "sha256:cfbf5abf966c4a56a8bf370fad1530b762d2c8d8a02cf82b3945402914f64506" [label="/bin/sh -c printf \"AuthorizedKeysFile /etc/ssh/authorized_keys\\nGatewayPorts yes\\n\" > /etc/ssh/sshd_config" shape="box"];
  "sha256:b5172de08d93e060b573a7b463eda2d4921ae67c7a03200869b0eb08af5656d0" [label="sha256:b5172de08d93e060b573a7b463eda2d4921ae67c7a03200869b0eb08af5656d0" shape="plaintext"];
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" -> "sha256:f913f668b6977cbb9ddb7965be8f341849afe6458b2bcd788b66db89409f9d1b" [label=""];
  "sha256:f913f668b6977cbb9ddb7965be8f341849afe6458b2bcd788b66db89409f9d1b" -> "sha256:fa62b6a71d899937f99b0ffeac930d9e87a208f7f9b87092be5c5ac484a05fc0" [label=""];
  "sha256:fa62b6a71d899937f99b0ffeac930d9e87a208f7f9b87092be5c5ac484a05fc0" -> "sha256:528695d91f86a185c2e24f8300616a4a95c46f0eebb3243036ae1145b5a54751" [label=""];
  "sha256:6e56ae8751d6c04167c2fe5ba4d3622f1477fd4a7f63e01064e13034e244856b" -> "sha256:528695d91f86a185c2e24f8300616a4a95c46f0eebb3243036ae1145b5a54751" [label=""];
  "sha256:528695d91f86a185c2e24f8300616a4a95c46f0eebb3243036ae1145b5a54751" -> "sha256:cfbf5abf966c4a56a8bf370fad1530b762d2c8d8a02cf82b3945402914f64506" [label=""];
  "sha256:cfbf5abf966c4a56a8bf370fad1530b762d2c8d8a02cf82b3945402914f64506" -> "sha256:b5172de08d93e060b573a7b463eda2d4921ae67c7a03200869b0eb08af5656d0" [label=""];
}

