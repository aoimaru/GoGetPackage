[app/sources/289837368.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:aaf403434dab41c8a0bf0e1d893e3004907e43419646915f89e3ca570135c5cc" [label="local://context" shape="ellipse"];
  "sha256:1e51ed488138f0e19bc0aafaf8376e9eda86f0eca280f3a135c15e278ad4410d" [label="copy{src=/, dest=/go/src/github.com/coreos/etcd}" shape="note"];
  "sha256:0e5c7e57745be24b0d3ca182ea4d1f29dbf7237752c0fb13ec24f120d868be1d" [label="copy{src=/cmd/vendor, dest=/go/src/github.com/coreos/etcd/vendor}" shape="note"];
  "sha256:d672cb610c1fc5bbf0a6c8627bad082797d8c088f44156d700a97d66a5040dba" [label="/bin/sh -c go install github.com/coreos/etcd" shape="box"];
  "sha256:bf9168eeaaa2643ee416f320b1c2701c9daafde9dfddcffc76084f39ea25f873" [label="sha256:bf9168eeaaa2643ee416f320b1c2701c9daafde9dfddcffc76084f39ea25f873" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:1e51ed488138f0e19bc0aafaf8376e9eda86f0eca280f3a135c15e278ad4410d" [label=""];
  "sha256:aaf403434dab41c8a0bf0e1d893e3004907e43419646915f89e3ca570135c5cc" -> "sha256:1e51ed488138f0e19bc0aafaf8376e9eda86f0eca280f3a135c15e278ad4410d" [label=""];
  "sha256:1e51ed488138f0e19bc0aafaf8376e9eda86f0eca280f3a135c15e278ad4410d" -> "sha256:0e5c7e57745be24b0d3ca182ea4d1f29dbf7237752c0fb13ec24f120d868be1d" [label=""];
  "sha256:aaf403434dab41c8a0bf0e1d893e3004907e43419646915f89e3ca570135c5cc" -> "sha256:0e5c7e57745be24b0d3ca182ea4d1f29dbf7237752c0fb13ec24f120d868be1d" [label=""];
  "sha256:0e5c7e57745be24b0d3ca182ea4d1f29dbf7237752c0fb13ec24f120d868be1d" -> "sha256:d672cb610c1fc5bbf0a6c8627bad082797d8c088f44156d700a97d66a5040dba" [label=""];
  "sha256:d672cb610c1fc5bbf0a6c8627bad082797d8c088f44156d700a97d66a5040dba" -> "sha256:bf9168eeaaa2643ee416f320b1c2701c9daafde9dfddcffc76084f39ea25f873" [label=""];
}

