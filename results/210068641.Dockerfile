[app/sources/210068641.Dockerfile]
digraph {
  "sha256:5402d97d66fc26febfd322de69aa6b92bd869c8d5d31e9a7a23f37fcaa7e1d85" [label="docker-image://docker.io/tensorflow/tensorflow:0.12.0-gpu@sha256:9fb3df28ee7911af2491c0dc0b747b1151f574ea861e3d02760e5b216091b23d" shape="ellipse"];
  "sha256:4f0b1c3b5a8705db1a9b29ca5b4ce151f415140c1e58d57ae1c6970f6dcf9c13" [label="/bin/sh -c sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/' /etc/apt/sources.list" shape="box"];
  "sha256:3814ca86c9cf515f7ab456c7551425a779eddc9c63f88caff5851a9429fbcf2a" [label="local://context" shape="ellipse"];
  "sha256:95bac268680007173429ab2ea6350ac01aa261ec2083e1436eb39890bf09a8ab" [label="copy{src=/pip.conf, dest=/root/.pip/pip.conf}" shape="note"];
  "sha256:b487939bdd45275d80817b4849ea1be4f3a315532c05c1020b9874b2d42c11d0" [label="sha256:b487939bdd45275d80817b4849ea1be4f3a315532c05c1020b9874b2d42c11d0" shape="plaintext"];
  "sha256:5402d97d66fc26febfd322de69aa6b92bd869c8d5d31e9a7a23f37fcaa7e1d85" -> "sha256:4f0b1c3b5a8705db1a9b29ca5b4ce151f415140c1e58d57ae1c6970f6dcf9c13" [label=""];
  "sha256:4f0b1c3b5a8705db1a9b29ca5b4ce151f415140c1e58d57ae1c6970f6dcf9c13" -> "sha256:95bac268680007173429ab2ea6350ac01aa261ec2083e1436eb39890bf09a8ab" [label=""];
  "sha256:3814ca86c9cf515f7ab456c7551425a779eddc9c63f88caff5851a9429fbcf2a" -> "sha256:95bac268680007173429ab2ea6350ac01aa261ec2083e1436eb39890bf09a8ab" [label=""];
  "sha256:95bac268680007173429ab2ea6350ac01aa261ec2083e1436eb39890bf09a8ab" -> "sha256:b487939bdd45275d80817b4849ea1be4f3a315532c05c1020b9874b2d42c11d0" [label=""];
}

