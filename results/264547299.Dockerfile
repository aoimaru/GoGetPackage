[app/sources/264547299.Dockerfile]
digraph {
  "sha256:4533774771a71da308cbfe742c81238327dcfcd94f01d002b9930b6b1417f4c1" [label="local://context" shape="ellipse"];
  "sha256:9c4d21a419da60f9fcc52a5e827cbd976adfa9a6afc84927a8790862376b75c2" [label="docker-image://docker.io/library/node:carbon" shape="ellipse"];
  "sha256:7a24409903ca4900d5a19e3068c5b5dd9283893dc145db14142da186454aa424" [label="/bin/sh -c mkdir -p /var/www" shape="box"];
  "sha256:e07d558d102118af7b55aa9f18fbc6e70b2440b56891adc268d9492f1f424058" [label="/bin/sh -c mkdir -p /var/www/logs" shape="box"];
  "sha256:2a7156e3f04549cf3295ed42e92457fcb64572ad72cf38793bf89dd8f1572f11" [label="mkdir{path=/var/www}" shape="note"];
  "sha256:e7b12178025e6697b22b83e4389032d11eb189753bb3634f39acdcef413d8535" [label="copy{src=/package.json, dest=/var/www/}" shape="note"];
  "sha256:ee3aabda7cdd87df9f27f7ea5153b65c27b93d62d5184afda8752c4f0cd37ddf" [label="/bin/sh -c npm --production install" shape="box"];
  "sha256:7b2ef9218c00d5e62e0a17b814cb87b7b22888f71df70dc8993df45690e6d948" [label="copy{src=/build, dest=/var/www/}" shape="note"];
  "sha256:eb5c98b80c2f36f5073bb6da80f65608093ae104e8b396df4c876ca3da1adaa3" [label="/bin/sh -c chmod -R 755 /var/www/" shape="box"];
  "sha256:69f8f4e0be661c6c8ebceac739a9991eef7c4e0dbd9c70765a926e0ac6912591" [label="sha256:69f8f4e0be661c6c8ebceac739a9991eef7c4e0dbd9c70765a926e0ac6912591" shape="plaintext"];
  "sha256:9c4d21a419da60f9fcc52a5e827cbd976adfa9a6afc84927a8790862376b75c2" -> "sha256:7a24409903ca4900d5a19e3068c5b5dd9283893dc145db14142da186454aa424" [label=""];
  "sha256:7a24409903ca4900d5a19e3068c5b5dd9283893dc145db14142da186454aa424" -> "sha256:e07d558d102118af7b55aa9f18fbc6e70b2440b56891adc268d9492f1f424058" [label=""];
  "sha256:e07d558d102118af7b55aa9f18fbc6e70b2440b56891adc268d9492f1f424058" -> "sha256:2a7156e3f04549cf3295ed42e92457fcb64572ad72cf38793bf89dd8f1572f11" [label=""];
  "sha256:2a7156e3f04549cf3295ed42e92457fcb64572ad72cf38793bf89dd8f1572f11" -> "sha256:e7b12178025e6697b22b83e4389032d11eb189753bb3634f39acdcef413d8535" [label=""];
  "sha256:4533774771a71da308cbfe742c81238327dcfcd94f01d002b9930b6b1417f4c1" -> "sha256:e7b12178025e6697b22b83e4389032d11eb189753bb3634f39acdcef413d8535" [label=""];
  "sha256:e7b12178025e6697b22b83e4389032d11eb189753bb3634f39acdcef413d8535" -> "sha256:ee3aabda7cdd87df9f27f7ea5153b65c27b93d62d5184afda8752c4f0cd37ddf" [label=""];
  "sha256:ee3aabda7cdd87df9f27f7ea5153b65c27b93d62d5184afda8752c4f0cd37ddf" -> "sha256:7b2ef9218c00d5e62e0a17b814cb87b7b22888f71df70dc8993df45690e6d948" [label=""];
  "sha256:4533774771a71da308cbfe742c81238327dcfcd94f01d002b9930b6b1417f4c1" -> "sha256:7b2ef9218c00d5e62e0a17b814cb87b7b22888f71df70dc8993df45690e6d948" [label=""];
  "sha256:7b2ef9218c00d5e62e0a17b814cb87b7b22888f71df70dc8993df45690e6d948" -> "sha256:eb5c98b80c2f36f5073bb6da80f65608093ae104e8b396df4c876ca3da1adaa3" [label=""];
  "sha256:eb5c98b80c2f36f5073bb6da80f65608093ae104e8b396df4c876ca3da1adaa3" -> "sha256:69f8f4e0be661c6c8ebceac739a9991eef7c4e0dbd9c70765a926e0ac6912591" [label=""];
}

