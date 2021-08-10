[app/sources/278270414.Dockerfile]
digraph {
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:287c7b3faa8905a5f197b6f444dff66d0d37c333cdbad9bf08ea68abf252422f" [label="/bin/sh -c adduser -D -s /bin/sh alice" shape="box"];
  "sha256:9cd397cfd6ec2401cfa4322df1114774042e0666cd162330809a5cfee359d118" [label="sha256:9cd397cfd6ec2401cfa4322df1114774042e0666cd162330809a5cfee359d118" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:287c7b3faa8905a5f197b6f444dff66d0d37c333cdbad9bf08ea68abf252422f" [label=""];
  "sha256:287c7b3faa8905a5f197b6f444dff66d0d37c333cdbad9bf08ea68abf252422f" -> "sha256:9cd397cfd6ec2401cfa4322df1114774042e0666cd162330809a5cfee359d118" [label=""];
}

