[app/sources/425464024.Dockerfile]
digraph {
  "sha256:569e694af3245bb40162d3f92585a6263d6ddddcfe9c49b297d142925e666fcf" [label="docker-image://docker.io/devopsil/puppet-yum:latest" shape="ellipse"];
  "sha256:346e18edc5d8c94629a82d0362c457b68afe0c295a59110cf06ead599584553e" [label="/bin/sh -c yum install -y puppet-$PUPPET_VERSION     && yum clean all" shape="box"];
  "sha256:42611a9d354ef693e7c4f9d3820a0d3613db454c45a136e752835a7e91fb09b6" [label="sha256:42611a9d354ef693e7c4f9d3820a0d3613db454c45a136e752835a7e91fb09b6" shape="plaintext"];
  "sha256:569e694af3245bb40162d3f92585a6263d6ddddcfe9c49b297d142925e666fcf" -> "sha256:346e18edc5d8c94629a82d0362c457b68afe0c295a59110cf06ead599584553e" [label=""];
  "sha256:346e18edc5d8c94629a82d0362c457b68afe0c295a59110cf06ead599584553e" -> "sha256:42611a9d354ef693e7c4f9d3820a0d3613db454c45a136e752835a7e91fb09b6" [label=""];
}

