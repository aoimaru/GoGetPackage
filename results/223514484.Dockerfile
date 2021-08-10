[app/sources/223514484.Dockerfile]
digraph {
  "sha256:b150da432c7a40066a95bb13c63c745492fdd7212cf68b9867ca367c7b6abf96" [label="docker-image://docker.io/library/golang:1.8" shape="ellipse"];
  "sha256:b994c250be12af8c81ad4f3b08a1b7fd43825896295da0e5f080352fc3684d49" [label="/bin/sh -c echo \"deb http://ftp.debian.org/debian jessie-backports main contrib\" >> /etc/apt/sources.list.d/backports.list" shape="box"];
  "sha256:a8f1037ac25fdcf05c5f0267e0ac913c7ebd760d0ebbf0eee666c03215eee9b0" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:4b0b3e5593cf47c7e73e7b6a6e1d278b3bf58e00da08041a9c718243331b6bef" [label="/bin/sh -c apt-get install lsb-release" shape="box"];
  "sha256:2e06bf9323b4c1dfe6cabdbb00720c169179c1db3104bd845555b484c0be2dcb" [label="/bin/sh -c apt-get install --yes libzfslinux-dev" shape="box"];
  "sha256:e3df6a58d7ebfc529a8a2b0fd21dfee7854c1aa3f3888608532107122bbd3ccc" [label="/bin/sh -c dpkg --configure -a" shape="box"];
  "sha256:5f4196a1fb8f20582e9080c0fad210a0a0fb2e75f9b9455ed994955a19bf1c7e" [label="/bin/sh -c go get github.com/ncabatoff/go-libzfs github.com/prometheus/client_golang/prometheus" shape="box"];
  "sha256:aec69499b586cf128c0cce03b1f320c14e6ff991c1a36258d3f6478844f5ff14" [label="local://context" shape="ellipse"];
  "sha256:b02804e55cbe21af9591314233ebf1ae45cc6529c96345bf563d447b4a84f735" [label="copy{src=/zfs-exporter, dest=/go/src/github.com/ncabatoff/zfs-exporter}" shape="note"];
  "sha256:920fc0c1bb71ad4d21cab6f603c143b8db0930090694f323ab30056fad239ef2" [label="/bin/sh -c go install github.com/ncabatoff/zfs-exporter" shape="box"];
  "sha256:32ba19bf1656fe76c9579ad175df32a8a12d5ce282fdd77a10dfe74d59bc0b01" [label="sha256:32ba19bf1656fe76c9579ad175df32a8a12d5ce282fdd77a10dfe74d59bc0b01" shape="plaintext"];
  "sha256:b150da432c7a40066a95bb13c63c745492fdd7212cf68b9867ca367c7b6abf96" -> "sha256:b994c250be12af8c81ad4f3b08a1b7fd43825896295da0e5f080352fc3684d49" [label=""];
  "sha256:b994c250be12af8c81ad4f3b08a1b7fd43825896295da0e5f080352fc3684d49" -> "sha256:a8f1037ac25fdcf05c5f0267e0ac913c7ebd760d0ebbf0eee666c03215eee9b0" [label=""];
  "sha256:a8f1037ac25fdcf05c5f0267e0ac913c7ebd760d0ebbf0eee666c03215eee9b0" -> "sha256:4b0b3e5593cf47c7e73e7b6a6e1d278b3bf58e00da08041a9c718243331b6bef" [label=""];
  "sha256:4b0b3e5593cf47c7e73e7b6a6e1d278b3bf58e00da08041a9c718243331b6bef" -> "sha256:2e06bf9323b4c1dfe6cabdbb00720c169179c1db3104bd845555b484c0be2dcb" [label=""];
  "sha256:2e06bf9323b4c1dfe6cabdbb00720c169179c1db3104bd845555b484c0be2dcb" -> "sha256:e3df6a58d7ebfc529a8a2b0fd21dfee7854c1aa3f3888608532107122bbd3ccc" [label=""];
  "sha256:e3df6a58d7ebfc529a8a2b0fd21dfee7854c1aa3f3888608532107122bbd3ccc" -> "sha256:5f4196a1fb8f20582e9080c0fad210a0a0fb2e75f9b9455ed994955a19bf1c7e" [label=""];
  "sha256:5f4196a1fb8f20582e9080c0fad210a0a0fb2e75f9b9455ed994955a19bf1c7e" -> "sha256:b02804e55cbe21af9591314233ebf1ae45cc6529c96345bf563d447b4a84f735" [label=""];
  "sha256:aec69499b586cf128c0cce03b1f320c14e6ff991c1a36258d3f6478844f5ff14" -> "sha256:b02804e55cbe21af9591314233ebf1ae45cc6529c96345bf563d447b4a84f735" [label=""];
  "sha256:b02804e55cbe21af9591314233ebf1ae45cc6529c96345bf563d447b4a84f735" -> "sha256:920fc0c1bb71ad4d21cab6f603c143b8db0930090694f323ab30056fad239ef2" [label=""];
  "sha256:920fc0c1bb71ad4d21cab6f603c143b8db0930090694f323ab30056fad239ef2" -> "sha256:32ba19bf1656fe76c9579ad175df32a8a12d5ce282fdd77a10dfe74d59bc0b01" [label=""];
}

