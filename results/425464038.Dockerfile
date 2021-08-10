[app/sources/425464038.Dockerfile]
digraph {
  "sha256:569e694af3245bb40162d3f92585a6263d6ddddcfe9c49b297d142925e666fcf" [label="docker-image://docker.io/devopsil/puppet-yum:latest" shape="ellipse"];
  "sha256:5e0989306fb11d15b6ca09ffef1ee868d7aa0f53fd663b2622f457956bf31eff" [label="/bin/sh -c yum install -y puppet-$PUPPET_VERSION     && yum clean all" shape="box"];
  "sha256:7ba7d403c65c021151d69c893caf67f611e62ac9ca316f1dac6c05b778630524" [label="sha256:7ba7d403c65c021151d69c893caf67f611e62ac9ca316f1dac6c05b778630524" shape="plaintext"];
  "sha256:569e694af3245bb40162d3f92585a6263d6ddddcfe9c49b297d142925e666fcf" -> "sha256:5e0989306fb11d15b6ca09ffef1ee868d7aa0f53fd663b2622f457956bf31eff" [label=""];
  "sha256:5e0989306fb11d15b6ca09ffef1ee868d7aa0f53fd663b2622f457956bf31eff" -> "sha256:7ba7d403c65c021151d69c893caf67f611e62ac9ca316f1dac6c05b778630524" [label=""];
}

