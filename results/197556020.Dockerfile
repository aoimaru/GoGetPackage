[app/sources/197556020.Dockerfile]
digraph {
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:fe884f4da1d06cd7b9ba3e6fef2101f51bb8c092c0a56e689598449cd40fa06a" [label="/bin/sh -c yum -y install hostname centos-release-gluster && yum -y install glusterfs-server && yum clean all" shape="box"];
  "sha256:b0798d66e1f04c284db105292ca0d8c95b230b50bdabba80a3cf86a50b3c7eb3" [label="local://context" shape="ellipse"];
  "sha256:0fcb59f933fcfd7e5efd308589f120beea4ef49edde29389633096acf19e936c" [label="copy{src=/glusterd.vol, dest=/etc/glusterfs/}" shape="note"];
  "sha256:ec6eb854b9dc87d1babff6e3df6131e79472c6aa923fca48bc713034586faca9" [label="copy{src=/run_gluster.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:50971d56f632776f806fd92aad0683c6ab56e6f3408ace1e5dbb65a54b70488d" [label="copy{src=/index.html, dest=/vol/}" shape="note"];
  "sha256:a57d9a5695b1799f7adbb52602e433db7713d43626554a0965e3a93faf6726eb" [label="/bin/sh -c chmod 644 /vol/index.html" shape="box"];
  "sha256:7da06555b9d3541803178fc5dd6f83607d5638f67e67aa8eecf3a6f3c45378fb" [label="sha256:7da06555b9d3541803178fc5dd6f83607d5638f67e67aa8eecf3a6f3c45378fb" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:fe884f4da1d06cd7b9ba3e6fef2101f51bb8c092c0a56e689598449cd40fa06a" [label=""];
  "sha256:fe884f4da1d06cd7b9ba3e6fef2101f51bb8c092c0a56e689598449cd40fa06a" -> "sha256:0fcb59f933fcfd7e5efd308589f120beea4ef49edde29389633096acf19e936c" [label=""];
  "sha256:b0798d66e1f04c284db105292ca0d8c95b230b50bdabba80a3cf86a50b3c7eb3" -> "sha256:0fcb59f933fcfd7e5efd308589f120beea4ef49edde29389633096acf19e936c" [label=""];
  "sha256:0fcb59f933fcfd7e5efd308589f120beea4ef49edde29389633096acf19e936c" -> "sha256:ec6eb854b9dc87d1babff6e3df6131e79472c6aa923fca48bc713034586faca9" [label=""];
  "sha256:b0798d66e1f04c284db105292ca0d8c95b230b50bdabba80a3cf86a50b3c7eb3" -> "sha256:ec6eb854b9dc87d1babff6e3df6131e79472c6aa923fca48bc713034586faca9" [label=""];
  "sha256:ec6eb854b9dc87d1babff6e3df6131e79472c6aa923fca48bc713034586faca9" -> "sha256:50971d56f632776f806fd92aad0683c6ab56e6f3408ace1e5dbb65a54b70488d" [label=""];
  "sha256:b0798d66e1f04c284db105292ca0d8c95b230b50bdabba80a3cf86a50b3c7eb3" -> "sha256:50971d56f632776f806fd92aad0683c6ab56e6f3408ace1e5dbb65a54b70488d" [label=""];
  "sha256:50971d56f632776f806fd92aad0683c6ab56e6f3408ace1e5dbb65a54b70488d" -> "sha256:a57d9a5695b1799f7adbb52602e433db7713d43626554a0965e3a93faf6726eb" [label=""];
  "sha256:a57d9a5695b1799f7adbb52602e433db7713d43626554a0965e3a93faf6726eb" -> "sha256:7da06555b9d3541803178fc5dd6f83607d5638f67e67aa8eecf3a6f3c45378fb" [label=""];
}

