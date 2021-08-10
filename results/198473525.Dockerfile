[app/sources/198473525.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:fec578ee355e4d2a2184dccbe1e23d94a5d2776b9644ce16af203b77efd11f96" [label="local://context" shape="ellipse"];
  "sha256:c99c59dfb71e41cacddbd620d7193d72ae65a4b30caea67fd524aed73ceebe8c" [label="copy{src=/, dest=/go/src/github.com/coreos/etcd}" shape="note"];
  "sha256:6c4271ae035cf6170b957a287bfe192a1b4140f95b3f0a01b72322d10b133f56" [label="copy{src=/cmd/vendor, dest=/go/src/github.com/coreos/etcd/vendor}" shape="note"];
  "sha256:27ba94c3bf0037ddb25feb902a985b781c98d099a65af389175e5a05fedf082f" [label="/bin/sh -c go install github.com/coreos/etcd" shape="box"];
  "sha256:60e8a0dbc94f58e7f71153d69cc174917660cbc2b2f54931760079aafc01b41a" [label="sha256:60e8a0dbc94f58e7f71153d69cc174917660cbc2b2f54931760079aafc01b41a" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:c99c59dfb71e41cacddbd620d7193d72ae65a4b30caea67fd524aed73ceebe8c" [label=""];
  "sha256:fec578ee355e4d2a2184dccbe1e23d94a5d2776b9644ce16af203b77efd11f96" -> "sha256:c99c59dfb71e41cacddbd620d7193d72ae65a4b30caea67fd524aed73ceebe8c" [label=""];
  "sha256:c99c59dfb71e41cacddbd620d7193d72ae65a4b30caea67fd524aed73ceebe8c" -> "sha256:6c4271ae035cf6170b957a287bfe192a1b4140f95b3f0a01b72322d10b133f56" [label=""];
  "sha256:fec578ee355e4d2a2184dccbe1e23d94a5d2776b9644ce16af203b77efd11f96" -> "sha256:6c4271ae035cf6170b957a287bfe192a1b4140f95b3f0a01b72322d10b133f56" [label=""];
  "sha256:6c4271ae035cf6170b957a287bfe192a1b4140f95b3f0a01b72322d10b133f56" -> "sha256:27ba94c3bf0037ddb25feb902a985b781c98d099a65af389175e5a05fedf082f" [label=""];
  "sha256:27ba94c3bf0037ddb25feb902a985b781c98d099a65af389175e5a05fedf082f" -> "sha256:60e8a0dbc94f58e7f71153d69cc174917660cbc2b2f54931760079aafc01b41a" [label=""];
}

