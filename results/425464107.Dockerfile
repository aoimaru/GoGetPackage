[app/sources/425464107.Dockerfile]
digraph {
  "sha256:569e694af3245bb40162d3f92585a6263d6ddddcfe9c49b297d142925e666fcf" [label="docker-image://docker.io/devopsil/puppet-yum:latest" shape="ellipse"];
  "sha256:bca928f2613a0861d2681e13214e170f97f1efb9217c8d54f7f6c2a6827cf055" [label="/bin/sh -c yum install -y puppet-$PUPPET_VERSION     && yum clean all" shape="box"];
  "sha256:5196809cddd5d9224a78759236a3e6ca25f1bd9c9de2b066175b3ee805076d7f" [label="sha256:5196809cddd5d9224a78759236a3e6ca25f1bd9c9de2b066175b3ee805076d7f" shape="plaintext"];
  "sha256:569e694af3245bb40162d3f92585a6263d6ddddcfe9c49b297d142925e666fcf" -> "sha256:bca928f2613a0861d2681e13214e170f97f1efb9217c8d54f7f6c2a6827cf055" [label=""];
  "sha256:bca928f2613a0861d2681e13214e170f97f1efb9217c8d54f7f6c2a6827cf055" -> "sha256:5196809cddd5d9224a78759236a3e6ca25f1bd9c9de2b066175b3ee805076d7f" [label=""];
}

