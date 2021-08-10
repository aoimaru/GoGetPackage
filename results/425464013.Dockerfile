[app/sources/425464013.Dockerfile]
digraph {
  "sha256:569e694af3245bb40162d3f92585a6263d6ddddcfe9c49b297d142925e666fcf" [label="docker-image://docker.io/devopsil/puppet-yum:latest" shape="ellipse"];
  "sha256:cd3857f26e6ee401d4c291b7f920cb2666c25d37eed5b2e7b86b784594b3c040" [label="/bin/sh -c yum install -y puppet-$PUPPET_VERSION     && yum clean all" shape="box"];
  "sha256:5e95ff4090d0fd9d92e6c33bf36bbb5ca66de0cb53b99ab03f8fc8d7207abdde" [label="sha256:5e95ff4090d0fd9d92e6c33bf36bbb5ca66de0cb53b99ab03f8fc8d7207abdde" shape="plaintext"];
  "sha256:569e694af3245bb40162d3f92585a6263d6ddddcfe9c49b297d142925e666fcf" -> "sha256:cd3857f26e6ee401d4c291b7f920cb2666c25d37eed5b2e7b86b784594b3c040" [label=""];
  "sha256:cd3857f26e6ee401d4c291b7f920cb2666c25d37eed5b2e7b86b784594b3c040" -> "sha256:5e95ff4090d0fd9d92e6c33bf36bbb5ca66de0cb53b99ab03f8fc8d7207abdde" [label=""];
}

