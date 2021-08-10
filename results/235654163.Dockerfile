[app/sources/235654163.Dockerfile]
digraph {
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" [label="docker-image://docker.io/library/openjdk:8-jre" shape="ellipse"];
  "sha256:4a69c6d27cdc07ebfd7e77b391e66dcafc7f30e8e6c37cfd027d1f1169b967fc" [label="local://context" shape="ellipse"];
  "sha256:6680c47cc1a51fc2b015e1e9123c226797f6e8657b53778b46be58323b5cc012" [label="copy{src=/logging.yml, dest=/config/logging.yml}" shape="note"];
  "sha256:9e162daff0f8460e433797d59d6877e98e595ce8bb394ced295b2ba1a8ca8c39" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:fee6f29d57e58f8f91a1ab64114d11e8b7e6139fec40138e551a8a109581d457" [label="/bin/sh -c set -ex     && mkdir -p /usr/share/elasticsearch     && wget -qO- https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.6.0.tar.gz | tar zx         --strip-components 1 -C /usr/share/elasticsearch     && chmod +x /docker-entrypoint.sh" shape="box"];
  "sha256:98f128779c9ffc3f9a565a867d293d8484d8be5b0697305428b8b663b596774a" [label="mkdir{path=/usr/share/elasticsearch}" shape="note"];
  "sha256:51f61065a3cd34b0a6504ea6104d2a046b23c0bc5fc59526cf48788efdb1d841" [label="sha256:51f61065a3cd34b0a6504ea6104d2a046b23c0bc5fc59526cf48788efdb1d841" shape="plaintext"];
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" -> "sha256:6680c47cc1a51fc2b015e1e9123c226797f6e8657b53778b46be58323b5cc012" [label=""];
  "sha256:4a69c6d27cdc07ebfd7e77b391e66dcafc7f30e8e6c37cfd027d1f1169b967fc" -> "sha256:6680c47cc1a51fc2b015e1e9123c226797f6e8657b53778b46be58323b5cc012" [label=""];
  "sha256:6680c47cc1a51fc2b015e1e9123c226797f6e8657b53778b46be58323b5cc012" -> "sha256:9e162daff0f8460e433797d59d6877e98e595ce8bb394ced295b2ba1a8ca8c39" [label=""];
  "sha256:4a69c6d27cdc07ebfd7e77b391e66dcafc7f30e8e6c37cfd027d1f1169b967fc" -> "sha256:9e162daff0f8460e433797d59d6877e98e595ce8bb394ced295b2ba1a8ca8c39" [label=""];
  "sha256:9e162daff0f8460e433797d59d6877e98e595ce8bb394ced295b2ba1a8ca8c39" -> "sha256:fee6f29d57e58f8f91a1ab64114d11e8b7e6139fec40138e551a8a109581d457" [label=""];
  "sha256:fee6f29d57e58f8f91a1ab64114d11e8b7e6139fec40138e551a8a109581d457" -> "sha256:98f128779c9ffc3f9a565a867d293d8484d8be5b0697305428b8b663b596774a" [label=""];
  "sha256:98f128779c9ffc3f9a565a867d293d8484d8be5b0697305428b8b663b596774a" -> "sha256:51f61065a3cd34b0a6504ea6104d2a046b23c0bc5fc59526cf48788efdb1d841" [label=""];
}

