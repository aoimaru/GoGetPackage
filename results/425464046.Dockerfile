[app/sources/425464046.Dockerfile]
digraph {
  "sha256:569e694af3245bb40162d3f92585a6263d6ddddcfe9c49b297d142925e666fcf" [label="docker-image://docker.io/devopsil/puppet-yum:latest" shape="ellipse"];
  "sha256:d4e3c61d92bea4bc633f1c4cb38d61f4a955b22eb1fe5f385f8009305fff0db7" [label="/bin/sh -c yum install -y puppet-$PUPPET_VERSION     && yum clean all" shape="box"];
  "sha256:bd94c30d0e0390d89d1e87927edee9814556ae8ba4a14698016f18c5b73d007a" [label="sha256:bd94c30d0e0390d89d1e87927edee9814556ae8ba4a14698016f18c5b73d007a" shape="plaintext"];
  "sha256:569e694af3245bb40162d3f92585a6263d6ddddcfe9c49b297d142925e666fcf" -> "sha256:d4e3c61d92bea4bc633f1c4cb38d61f4a955b22eb1fe5f385f8009305fff0db7" [label=""];
  "sha256:d4e3c61d92bea4bc633f1c4cb38d61f4a955b22eb1fe5f385f8009305fff0db7" -> "sha256:bd94c30d0e0390d89d1e87927edee9814556ae8ba4a14698016f18c5b73d007a" [label=""];
}

