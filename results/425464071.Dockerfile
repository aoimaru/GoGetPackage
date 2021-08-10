[app/sources/425464071.Dockerfile]
digraph {
  "sha256:569e694af3245bb40162d3f92585a6263d6ddddcfe9c49b297d142925e666fcf" [label="docker-image://docker.io/devopsil/puppet-yum:latest" shape="ellipse"];
  "sha256:17ae60f2aadb295925d065202481eb3538f1698810996b011371c524fc827203" [label="/bin/sh -c yum install -y puppet-$PUPPET_VERSION     && yum clean all" shape="box"];
  "sha256:a6455a15b072b2041c8959be7a39d0184618820bcf6359c8442b8eb2ed633a2f" [label="sha256:a6455a15b072b2041c8959be7a39d0184618820bcf6359c8442b8eb2ed633a2f" shape="plaintext"];
  "sha256:569e694af3245bb40162d3f92585a6263d6ddddcfe9c49b297d142925e666fcf" -> "sha256:17ae60f2aadb295925d065202481eb3538f1698810996b011371c524fc827203" [label=""];
  "sha256:17ae60f2aadb295925d065202481eb3538f1698810996b011371c524fc827203" -> "sha256:a6455a15b072b2041c8959be7a39d0184618820bcf6359c8442b8eb2ed633a2f" [label=""];
}

