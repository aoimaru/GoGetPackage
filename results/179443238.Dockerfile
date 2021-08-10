[app/sources/179443238.Dockerfile]
digraph {
  "sha256:60b2c897ed470c8c58e7dc71a0bc76998e03085297d412eb13f605a8b38d582f" [label="docker-image://docker.io/obaidsalikeen/storm:0.9.3" shape="ellipse"];
  "sha256:aeecbfc33c428bde71cf3ec7e0ccfc75da64872c4a517c80a21c1189a1770cf7" [label="local://context" shape="ellipse"];
  "sha256:cf4f7b90e3348cf90d2c4526bc25cc49cfd62abdd1507b98ff26bfd2739a3d2a" [label="copy{src=/configure-storm.sh, dest=/usr/bin/configure-storm.sh}" shape="note"];
  "sha256:425f66a7f8e27da0e3fda8ab4e49fd120e4d408bec17fd1b07f54beadda4001c" [label="sha256:425f66a7f8e27da0e3fda8ab4e49fd120e4d408bec17fd1b07f54beadda4001c" shape="plaintext"];
  "sha256:60b2c897ed470c8c58e7dc71a0bc76998e03085297d412eb13f605a8b38d582f" -> "sha256:cf4f7b90e3348cf90d2c4526bc25cc49cfd62abdd1507b98ff26bfd2739a3d2a" [label=""];
  "sha256:aeecbfc33c428bde71cf3ec7e0ccfc75da64872c4a517c80a21c1189a1770cf7" -> "sha256:cf4f7b90e3348cf90d2c4526bc25cc49cfd62abdd1507b98ff26bfd2739a3d2a" [label=""];
  "sha256:cf4f7b90e3348cf90d2c4526bc25cc49cfd62abdd1507b98ff26bfd2739a3d2a" -> "sha256:425f66a7f8e27da0e3fda8ab4e49fd120e4d408bec17fd1b07f54beadda4001c" [label=""];
}

